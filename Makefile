ASM = nasm 
LD = ld

SRC = src/main.asm 
OUT = build/cpuviz

all: $(ASM) -f elf64 $(SRC) -o build/main.o 
	 $(LD) build/main.o -o $(OUT)

clean: 
	rm -rf build/*