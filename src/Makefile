CXX=clang++
RM=rm -f
CPPFLAGS=-g -D_REENTRANT -pthread -I/sw/include/root -Wall
LDFLAGS=-g
LDLIBS=-lm -ldl -lz

# List all .cpp files here
SRCS=Main.cpp Maze.cpp Point.cpp MazeSolver.cpp

# subst replaces all instances of .cpp with .o in SRCS
OBJS=$(subst .cpp,.o,$(SRCS))

# the build target executable:
TARGET=caltest

all: $(TARGET)

# TARGET depends on $(OBJS)
$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) -o output $(OBJS) $(LDLIBS)

Main.o: Main.cpp Maze.h PointAgenda.h LifoPointAgenda.h FifoPointAgenda.h MazeSolver.h
	$(CXX) $(CPPFLAGS) -c Main.cpp

Maze.o: Maze.cpp Maze.h Point.h
	$(CXX) $(CPPFLAGS) -c Maze.cpp

Point.o: Point.cpp Point.h
	$(CXX) $(CPPFLAGS) -c Point.cpp

MazeSolver.o: MazeSolver.cpp MazeSolver.h
	$(CXX) $(CPPFLAGS) -c MazeSolver.cpp

# Clean up
clean:
	$(RM) $(OBJS)
