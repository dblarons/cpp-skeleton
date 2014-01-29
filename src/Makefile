CXX=g++
RM=rm -f
CPPFLAGS=-g -D_REENTRANT -pthread -I/sw/include/root -Wall
LDFLAGS=-g
LDLIBS=-lm -ldl -lz

# List all .cpp files here
SRCS=CalTest.cpp Date.cpp Reminder.cpp

# subst replaces all instances of .cpp with .o in SRCS
OBJS=$(subst .cpp,.o,$(SRCS))

# the build target executable:
TARGET=caltest

all: $(TARGET)

# TARGET depends on $(OBJS)
$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) -o output $(OBJS) Calendar.o $(LDLIBS)

# CalTest.cpp depends on Calendar.h
CalTest.o: CalTest.cpp Calendar.h
	$(CXX) $(CPPFLAGS) -c CalTest.cpp

Date.o: Date.cpp Date.h
	$(CXX) $(CPPFLAGS) -c Date.cpp

# Reminder.h depends on Date.h
Reminder.o: Reminder.cpp Reminder.h Date.h
	$(CXX) $(CPPFLAGS) -c Reminder.cpp

Calendar.o: Calendar.o

# Clean up
clean:
	$(RM) $(OBJS)
