CC=g++
CFLAGS=-c -Wall
LDFLAGS=-pthread
SOURCES=simbot.cpp joystick.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=simbot

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o $(EXECUTABLE) core
