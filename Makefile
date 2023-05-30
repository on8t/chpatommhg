PROJECT = chpatommhg

SOURCE_DIR = ./src

SOURCE = $(wildcard $(SOURCE_DIR)/*.c)

OBJECTS = $(notdir $(patsubst %.c,%.o,$(SOURCE)))

VPATH = $(SOURCE_DIR)

all: $(PROJECT)

BINARIES = hpatommhg mmhgtohpa

binaries: $(BINARIES)

$(word 1,$(BINARIES)): hpatommhg.o hpa_to_mm_hg.o ui.o

$(word 2,$(BINARIES)): mmhgtohpa.o to_mm_hg_hpa.o ui.o

$(PROJECT): binaries

%.o: %.c
	$(CC) -c $^

clean:
	$(RM) $(OBJECTS) $(BINARIES)

.PHONY: all clean $(PROJECT) binaries
