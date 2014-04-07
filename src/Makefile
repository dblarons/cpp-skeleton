CXX=clang++
RM=rm -f
CPPFLAGS=-g -D_REENTRANT -pthread -I/sw/include/root -Wall
LDFLAGS=-g
LDLIBS=-lm -ldl -lz

# List all .cpp files here
SRCS=WordCount.cpp

# subst replaces all instances of .cpp with .o in SRCS
OBJS=$(subst .cpp,.o,$(SRCS))

# the build target executable:
TARGET=caltest

all: $(TARGET)

# TARGET depends on $(OBJS)
$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) -o output WordCount.cpp $(LDLIBS)

# MazeSolver.o: MazeSolver.cpp MazeSolver.h
# 	$(CXX) $(CPPFLAGS) -c MazeSolver.cpp

# Clean up
clean:
	$(RM) $(OBJS)
