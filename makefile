# Makefile for bin/test
# created with makefile-creator


####################
#Settings:


CXX ?= g++
FLAGS +=  -Wall -Wextra -Wpedantic -std=c++1y -O0 -D_GLIBCXX_DEBUG -g 
LIBS += 
INCLUDES += 
TARGET = bin/test
OBJECTS = build/test.o


####################
#Rules:


$(TARGET) : $(OBJECTS)
	$(CXX) $(FLAGS) -o $(TARGET) $(OBJECTS) $(LIBS)

build/%.o:
	@if test ! -d 'build'; then mkdir 'build'; echo "created 'build'" ; fi
	$(CXX) $(FLAGS) $(INCLUDES) -c -o $@ $<

clean:
	rm build/*.o

all: $(TARGET)


####################
#Dependencies:


build/test.o: src/test/test.cpp src/include/aliases.hpp src/include/core.hpp makefile

