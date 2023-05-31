GXX = g++

# Path: src/
SRC = src/

# Path: bin/
BIN = bin/

# Path: include/
INC = include/

# Path: lib/
LIB = lib/

# Path: test/
TEST = test/

# Path: doc/
DOC = doc/

# Path: build/
BUILD = build/

Pokémon.exe: $(BUILD)main.o
	$(GXX) -o Pokémon.exe $(BUILD)main.o -L$(LIB) -lsfml-graphics -lsfml-window -lsfml-system

$(BUILD)main.o: $(SRC)main.cpp
	$(GXX) -c $(SRC)main.cpp -I$(INC) -o $(BUILD)main.o

# Si make est appelé depuis powershell, on utilise la commande Remove-Item pour supprimer les fichiers, sinon on utilise rm
clean:
	rm -f $(BUILD)*.o
	rm -f $(BIN)*.exe

