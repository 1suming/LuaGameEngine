
#include <stdio.h>
#include "timer.h"
#include "llist.h"	


	#include "mtimer.c"
	#include "plex.h"
	plex_t timer_plex;


// ��ʼ����ʱ��
void init_timer()
{
	stimer_init();
	plex_init(&timer_plex, sizeof(stimer_t));
}
// Linux��ʱ���ص�����
void on_timer(void* ctx)
{
	struct time_ev* ev = ctx;
	//�ͷŶ�ʱ��
	stop_timer(ev);	    
	ev->callback(ev->ptr);
}
// Ͷ��һ����ʱ��
int start_timer(int sec, int usec, struct time_ev* ev)
{
	void* timer = 0;

	//timer malloc
	timer = plex_alloc(&timer_plex);
	if (timer == NULL) {
		if (0 != plex_expand(&timer_plex, 64, &sys_malloc, 0)) {
			return -1;
		}
		timer = plex_alloc(&timer_plex);
		assert(timer);
	}

	//add timer
	stimer_set(timer, sec, &on_timer, ev);
	if (0 != stimer_add(timer)) {
		plex_free(&timer_plex, timer);
		return -1;
	};
	ev->timer = timer; //��ʱ����ֵ
	return 0;
}
// ɾ��һ����ʱ��
int stop_timer(struct time_ev* ev)
{
	if (ev->timer) {
		stimer_del(ev->timer);//�����Ƿ�ɹ����ö�ʱ�������������У��ʿ���ɾ���ڴ�
		plex_free(&timer_plex, ev->timer);
		ev->timer = NULL;
	}
	return 0;
}
// ��ѯ��ʱ��
void run_timer()
{
	stimer_collect();
}

//���ض�ʱ��ʣ��ʱ��
int remain_timer(struct time_ev* ev)
{	
	stimer_t* timer = (stimer_t*)(ev->timer);

	if (NULL == timer)
	{
		return 0;
	}

	int remain = timer->expires - time(NULL); 

	return remain;
}


