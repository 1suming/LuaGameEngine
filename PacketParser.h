#pragma once

#include "log.h"

enum PACKETVER {
	SERVER_PACKET_DEFAULT_VER 			= 1,
	SERVER_PACKET_DEFAULT_SUBVER 		= 1,
    SERVER_PACKET_DEFAULT_SUBCMD 		= 0,
    SERVER_PACKET_DEFAULT_SEQ 			= 1,
    SERVER_PACKET_DEFAULT_SOURCETYPE 	= 1,
    SERVER_PACKET_MAX_COMMAND 			= 65535
};

typedef unsigned char BYTE;

#define cast(T, t)		(T)(t)
#define cast_uint16(t)	cast(unsigned short, (t))


// ��������
template <class INPUT_PACKET>
class PacketParser {
public:
	PacketParser(void)
	{
		m_pBuf = m_Packet.packet_buf();
		m_version = SERVER_PACKET_DEFAULT_VER;
		m_subVersion = SERVER_PACKET_DEFAULT_SUBVER;
		reset();
	}
	virtual ~PacketParser(void){}
	// ����Packet
	virtual int OnPacketComplete(INPUT_PACKET *) = 0;
	// ����PACKET����
	int ParsePacket(char *data, int length)
	{
		int ret = -1; //������
		int ndx = 0;

		while (ndx < length && m_nStatus != REQ_ERROR) {//���ܻ�ͬʱ�������� 
			switch(m_nStatus) {
				case REQ_REQUEST:
				case REQ_HEADER:
					if(!read_header(data, length, ndx)) break;
					
					ret = parse_header();
					
					if(ret != 0) {
						m_nStatus = REQ_ERROR;
						break;
					} else {
						m_nStatus = REQ_BODY;
					}
				case REQ_BODY:
					if (parse_body(data, length, ndx)) m_nStatus = REQ_DONE;
					break;
				default:
					return -1;
			}

			if (m_nStatus == REQ_ERROR) return ret;

			if(m_nStatus == REQ_DONE) {
				if(OnPacketComplete(&m_Packet) == -1) return -1;

				this->reset();
			}
		}

		return 0; // return 0 to continue
	}
protected:
	void reset(void)
	{
		m_nStatus = REQ_REQUEST;
		m_nPacketPos = 0;
		m_nBodyLen = 0;
		m_Packet.Reset();//����ɸ�λ
	}
	
public:
	short m_version;
	short m_subVersion;

private:
	// ��ǰ����״̬
	int m_nStatus; 
	// PacketPos
	int	m_nPacketPos;
	// BODY����
	int m_nBodyLen;
	// PacketBuffer ָ��
	char *m_pBuf;
	// PacketBuffer
	INPUT_PACKET m_Packet;
	// ״̬
	enum REQSTATUS{	REQ_REQUEST=0, REQ_HEADER, REQ_BODY, REQ_DONE, REQ_PROCESS, REQ_ERROR };

private:

	// ��ȡPacketͷ����
	bool read_header(char *data, int length, int &ndx)
	{
		while(m_nPacketPos < INPUT_PACKET::PACKET_HEADER_SIZE && ndx < length) {
			m_pBuf[m_nPacketPos++] = data[ndx++];
		}

		if (m_nPacketPos < INPUT_PACKET::PACKET_HEADER_SIZE) return false;

		return true;
	}
	// ����Packetͷ��Ϣ
	int parse_header(void) //0:�ɹ� -1:������ -2:���Χ���� -3:�汾���� -4:���ȴ���
	{
		if(m_pBuf[2] != 'B' || m_pBuf[3] != 'Y') return -1;

		unsigned short nCmdType = cast_uint16(m_Packet.GetCmdType());
		if(nCmdType <= 0 || nCmdType >= SERVER_PACKET_MAX_COMMAND) return -2;
		
		char v1 = m_Packet.GetVersion();
		char v2 = m_Packet.GetSubVersion();
		if(v1 != m_version || v2 != m_subVersion) return -3;

		m_nBodyLen = m_Packet.GetBodyLength();
		if(m_nBodyLen >= 0 && m_nBodyLen < (INPUT_PACKET::PACKET_BUFFER_SIZE - 2)) 	return 0;
		
		
		return -4;
	}

	// ����BODY����
	bool parse_body(char *data, int length, int &ndx)
	{
		int nNeed = (m_nBodyLen+2) - m_nPacketPos;
		int nBuff = length - ndx;

		if(nNeed <= 0)
			return true;
		if(nBuff <= 0)
			return false;

		int nCopy = nBuff < nNeed ? nBuff : nNeed;
		if(!m_Packet.WriteBody(data + ndx, nCopy))
			return false;

		m_nPacketPos += nCopy;
		ndx += nCopy;

		if(m_nPacketPos < (m_nBodyLen + 2))
			return false;

		return true;
	}
};

//short PacketParser<NETInputPacket>::m_version = SERVER_PACKET_DEFAULT_VER;
//short PacketParser<NETInputPacket>::m_subVersion = SERVER_PACKET_DEFAULT_SUBVER;
