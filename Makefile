# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/AustinChen/code/LuaGameEngine-cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/AustinChen/code/LuaGameEngine-cmake

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/AustinChen/code/LuaGameEngine-cmake/CMakeFiles /home/AustinChen/code/LuaGameEngine-cmake/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/AustinChen/code/LuaGameEngine-cmake/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named gameserver

# Build rule for target.
gameserver: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 gameserver
.PHONY : gameserver

# fast build rule for target.
gameserver/fast:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/build
.PHONY : gameserver/fast

MemcachedHandler.o: MemcachedHandler.cc.o
.PHONY : MemcachedHandler.o

# target to build an object file
MemcachedHandler.cc.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/MemcachedHandler.cc.o
.PHONY : MemcachedHandler.cc.o

MemcachedHandler.i: MemcachedHandler.cc.i
.PHONY : MemcachedHandler.i

# target to preprocess a source file
MemcachedHandler.cc.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/MemcachedHandler.cc.i
.PHONY : MemcachedHandler.cc.i

MemcachedHandler.s: MemcachedHandler.cc.s
.PHONY : MemcachedHandler.s

# target to generate assembly for a file
MemcachedHandler.cc.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/MemcachedHandler.cc.s
.PHONY : MemcachedHandler.cc.s

connectpool.o: connectpool.cpp.o
.PHONY : connectpool.o

# target to build an object file
connectpool.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/connectpool.cpp.o
.PHONY : connectpool.cpp.o

connectpool.i: connectpool.cpp.i
.PHONY : connectpool.i

# target to preprocess a source file
connectpool.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/connectpool.cpp.i
.PHONY : connectpool.cpp.i

connectpool.s: connectpool.cpp.s
.PHONY : connectpool.s

# target to generate assembly for a file
connectpool.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/connectpool.cpp.s
.PHONY : connectpool.cpp.s

interface.o: interface.cpp.o
.PHONY : interface.o

# target to build an object file
interface.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/interface.cpp.o
.PHONY : interface.cpp.o

interface.i: interface.cpp.i
.PHONY : interface.i

# target to preprocess a source file
interface.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/interface.cpp.i
.PHONY : interface.cpp.i

interface.s: interface.cpp.s
.PHONY : interface.s

# target to generate assembly for a file
interface.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/interface.cpp.s
.PHONY : interface.cpp.s

interface_c.o: interface_c.cpp.o
.PHONY : interface_c.o

# target to build an object file
interface_c.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/interface_c.cpp.o
.PHONY : interface_c.cpp.o

interface_c.i: interface_c.cpp.i
.PHONY : interface_c.i

# target to preprocess a source file
interface_c.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/interface_c.cpp.i
.PHONY : interface_c.cpp.i

interface_c.s: interface_c.cpp.s
.PHONY : interface_c.s

# target to generate assembly for a file
interface_c.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/interface_c.cpp.s
.PHONY : interface_c.cpp.s

llist.o: llist.c.o
.PHONY : llist.o

# target to build an object file
llist.c.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/llist.c.o
.PHONY : llist.c.o

llist.i: llist.c.i
.PHONY : llist.i

# target to preprocess a source file
llist.c.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/llist.c.i
.PHONY : llist.c.i

llist.s: llist.c.s
.PHONY : llist.s

# target to generate assembly for a file
llist.c.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/llist.c.s
.PHONY : llist.c.s

log.o: log.cpp.o
.PHONY : log.o

# target to build an object file
log.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/log.cpp.o
.PHONY : log.cpp.o

log.i: log.cpp.i
.PHONY : log.i

# target to preprocess a source file
log.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/log.cpp.i
.PHONY : log.cpp.i

log.s: log.cpp.s
.PHONY : log.s

# target to generate assembly for a file
log.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/log.cpp.s
.PHONY : log.cpp.s

lua_interface.o: lua_interface.cpp.o
.PHONY : lua_interface.o

# target to build an object file
lua_interface.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/lua_interface.cpp.o
.PHONY : lua_interface.cpp.o

lua_interface.i: lua_interface.cpp.i
.PHONY : lua_interface.i

# target to preprocess a source file
lua_interface.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/lua_interface.cpp.i
.PHONY : lua_interface.cpp.i

lua_interface.s: lua_interface.cpp.s
.PHONY : lua_interface.s

# target to generate assembly for a file
lua_interface.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/lua_interface.cpp.s
.PHONY : lua_interface.cpp.s

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/main.cpp.s
.PHONY : main.cpp.s

mtimer.o: mtimer.c.o
.PHONY : mtimer.o

# target to build an object file
mtimer.c.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/mtimer.c.o
.PHONY : mtimer.c.o

mtimer.i: mtimer.c.i
.PHONY : mtimer.i

# target to preprocess a source file
mtimer.c.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/mtimer.c.i
.PHONY : mtimer.c.i

mtimer.s: mtimer.c.s
.PHONY : mtimer.s

# target to generate assembly for a file
mtimer.c.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/mtimer.c.s
.PHONY : mtimer.c.s

mysql_part.o: mysql_part.cpp.o
.PHONY : mysql_part.o

# target to build an object file
mysql_part.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/mysql_part.cpp.o
.PHONY : mysql_part.cpp.o

mysql_part.i: mysql_part.cpp.i
.PHONY : mysql_part.i

# target to preprocess a source file
mysql_part.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/mysql_part.cpp.i
.PHONY : mysql_part.cpp.i

mysql_part.s: mysql_part.cpp.s
.PHONY : mysql_part.s

# target to generate assembly for a file
mysql_part.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/mysql_part.cpp.s
.PHONY : mysql_part.cpp.s

net.o: net.cpp.o
.PHONY : net.o

# target to build an object file
net.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/net.cpp.o
.PHONY : net.cpp.o

net.i: net.cpp.i
.PHONY : net.i

# target to preprocess a source file
net.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/net.cpp.i
.PHONY : net.cpp.i

net.s: net.cpp.s
.PHONY : net.s

# target to generate assembly for a file
net.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/net.cpp.s
.PHONY : net.cpp.s

protocal.o: protocal.cpp.o
.PHONY : protocal.o

# target to build an object file
protocal.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/protocal.cpp.o
.PHONY : protocal.cpp.o

protocal.i: protocal.cpp.i
.PHONY : protocal.i

# target to preprocess a source file
protocal.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/protocal.cpp.i
.PHONY : protocal.cpp.i

protocal.s: protocal.cpp.s
.PHONY : protocal.s

# target to generate assembly for a file
protocal.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/protocal.cpp.s
.PHONY : protocal.cpp.s

redis.o: redis.cpp.o
.PHONY : redis.o

# target to build an object file
redis.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/redis.cpp.o
.PHONY : redis.cpp.o

redis.i: redis.cpp.i
.PHONY : redis.i

# target to preprocess a source file
redis.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/redis.cpp.i
.PHONY : redis.cpp.i

redis.s: redis.cpp.s
.PHONY : redis.s

# target to generate assembly for a file
redis.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/redis.cpp.s
.PHONY : redis.cpp.s

socket.o: socket.cpp.o
.PHONY : socket.o

# target to build an object file
socket.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/socket.cpp.o
.PHONY : socket.cpp.o

socket.i: socket.cpp.i
.PHONY : socket.i

# target to preprocess a source file
socket.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/socket.cpp.i
.PHONY : socket.cpp.i

socket.s: socket.cpp.s
.PHONY : socket.s

# target to generate assembly for a file
socket.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/socket.cpp.s
.PHONY : socket.cpp.s

timer.o: timer.c.o
.PHONY : timer.o

# target to build an object file
timer.c.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/timer.c.o
.PHONY : timer.c.o

timer.i: timer.c.i
.PHONY : timer.i

# target to preprocess a source file
timer.c.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/timer.c.i
.PHONY : timer.c.i

timer.s: timer.c.s
.PHONY : timer.s

# target to generate assembly for a file
timer.c.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/timer.c.s
.PHONY : timer.c.s

timer_event.o: timer_event.cpp.o
.PHONY : timer_event.o

# target to build an object file
timer_event.cpp.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/timer_event.cpp.o
.PHONY : timer_event.cpp.o

timer_event.i: timer_event.cpp.i
.PHONY : timer_event.i

# target to preprocess a source file
timer_event.cpp.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/timer_event.cpp.i
.PHONY : timer_event.cpp.i

timer_event.s: timer_event.cpp.s
.PHONY : timer_event.s

# target to generate assembly for a file
timer_event.cpp.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/timer_event.cpp.s
.PHONY : timer_event.cpp.s

timewheel.o: timewheel.cc.o
.PHONY : timewheel.o

# target to build an object file
timewheel.cc.o:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/timewheel.cc.o
.PHONY : timewheel.cc.o

timewheel.i: timewheel.cc.i
.PHONY : timewheel.i

# target to preprocess a source file
timewheel.cc.i:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/timewheel.cc.i
.PHONY : timewheel.cc.i

timewheel.s: timewheel.cc.s
.PHONY : timewheel.s

# target to generate assembly for a file
timewheel.cc.s:
	$(MAKE) -f CMakeFiles/gameserver.dir/build.make CMakeFiles/gameserver.dir/timewheel.cc.s
.PHONY : timewheel.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... gameserver"
	@echo "... rebuild_cache"
	@echo "... MemcachedHandler.o"
	@echo "... MemcachedHandler.i"
	@echo "... MemcachedHandler.s"
	@echo "... connectpool.o"
	@echo "... connectpool.i"
	@echo "... connectpool.s"
	@echo "... interface.o"
	@echo "... interface.i"
	@echo "... interface.s"
	@echo "... interface_c.o"
	@echo "... interface_c.i"
	@echo "... interface_c.s"
	@echo "... llist.o"
	@echo "... llist.i"
	@echo "... llist.s"
	@echo "... log.o"
	@echo "... log.i"
	@echo "... log.s"
	@echo "... lua_interface.o"
	@echo "... lua_interface.i"
	@echo "... lua_interface.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... mtimer.o"
	@echo "... mtimer.i"
	@echo "... mtimer.s"
	@echo "... mysql_part.o"
	@echo "... mysql_part.i"
	@echo "... mysql_part.s"
	@echo "... net.o"
	@echo "... net.i"
	@echo "... net.s"
	@echo "... protocal.o"
	@echo "... protocal.i"
	@echo "... protocal.s"
	@echo "... redis.o"
	@echo "... redis.i"
	@echo "... redis.s"
	@echo "... socket.o"
	@echo "... socket.i"
	@echo "... socket.s"
	@echo "... timer.o"
	@echo "... timer.i"
	@echo "... timer.s"
	@echo "... timer_event.o"
	@echo "... timer_event.i"
	@echo "... timer_event.s"
	@echo "... timewheel.o"
	@echo "... timewheel.i"
	@echo "... timewheel.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

