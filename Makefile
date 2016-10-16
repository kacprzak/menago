TARGETS=menago
SOURCES=Main.hs
FLAGS=--make

all: $(TARGETS)

menago: $(SOURCES)
	ghc $(FLAGS) $^ -o $@

%: %.hs
	ghc $(FLAGS) $@

clean:
	rm *.hi *.o $(TARGETS)

.PHONY: all clean
