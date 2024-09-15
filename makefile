# Répertoires des sources et des exécutables
SRC_DIR = src
BIN_DIR = bin

# Fichiers source et exécutables pour TP1
TP1_EX1_SRC = $(SRC_DIR)/tp1/ex1.adb
TP1_EX2_SRC = $(SRC_DIR)/tp1/ex2.adb
TP1_EX3_SRC = $(SRC_DIR)/tp1/ex3.adb

TP1_EX1_EXE = $(BIN_DIR)/tp1/ex1
TP1_EX2_EXE = $(BIN_DIR)/tp1/ex2
TP1_EX3_EXE = $(BIN_DIR)/tp1/ex3

# Fichiers source et exécutables pour TP2
TP2_EX1_1_SRC = $(SRC_DIR)/tp2/ex1/1.adb
TP2_EX1_2_SRC = $(SRC_DIR)/tp2/ex1/2.adb
TP2_EX2_SRC = $(SRC_DIR)/tp2/ex2.adb
TP2_EX3_SRC = $(SRC_DIR)/tp2/ex3.adb
TP2_EX4_SRC = $(SRC_DIR)/tp2/ex4.adb

TP2_EX1_1_EXE = $(BIN_DIR)/tp2/ex1_1
TP2_EX1_2_EXE = $(BIN_DIR)/tp2/ex1_2
TP2_EX2_EXE = $(BIN_DIR)/tp2/ex2
TP2_EX3_EXE = $(BIN_DIR)/tp2/ex3
TP2_EX4_EXE = $(BIN_DIR)/tp2/ex4

# Règle par défaut pour compiler tous les exercices
all: tp1 tp2

# Compilation des exercices de TP1
tp1: $(TP1_EX1_EXE) $(TP1_EX2_EXE) $(TP1_EX3_EXE)

$(TP1_EX1_EXE): $(TP1_EX1_SRC)
	@mkdir -p $(BIN_DIR)/tp1
	gnat make $(TP1_EX1_SRC) -o $(TP1_EX1_EXE)

$(TP1_EX2_EXE): $(TP1_EX2_SRC)
	@mkdir -p $(BIN_DIR)/tp1
	gnat make $(TP1_EX2_SRC) -o $(TP1_EX2_EXE)

$(TP1_EX3_EXE): $(TP1_EX3_SRC)
	@mkdir -p $(BIN_DIR)/tp1
	gnat make $(TP1_EX3_SRC) -o $(TP1_EX3_EXE)

# Compilation des exercices de TP2
tp2: $(TP2_EX1_1_EXE) $(TP2_EX1_2_EXE) $(TP2_EX2_EXE) $(TP2_EX3_EXE) $(TP2_EX4_EXE)

$(TP2_EX1_1_EXE): $(TP2_EX1_1_SRC)
	@mkdir -p $(BIN_DIR)/tp2
	gnat make $(TP2_EX1_1_SRC) -o $(TP2_EX1_1_EXE)

$(TP2_EX1_2_EXE): $(TP2_EX1_2_SRC)
	@mkdir -p $(BIN_DIR)/tp2
	gnat make $(TP2_EX1_2_SRC) -o $(TP2_EX1_2_EXE)

$(TP2_EX2_EXE): $(TP2_EX2_SRC)
	@mkdir -p $(BIN_DIR)/tp2
	gnat make $(TP2_EX2_SRC) -o $(TP2_EX2_EXE)

$(TP2_EX3_EXE): $(TP2_EX3_SRC)
	@mkdir -p $(BIN_DIR)/tp2
	gnat make $(TP2_EX3_SRC) -o $(TP2_EX3_EXE)

$(TP2_EX4_EXE): $(TP2_EX4_SRC)
	@mkdir -p $(BIN_DIR)/tp2
	gnat make $(TP2_EX4_SRC) -o $(TP2_EX4_EXE)

# Clean command to remove compiled files
clean:
	rm -rf $(BIN_DIR)/*
	rm -f *.ali *.o
