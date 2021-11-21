SRC := xkbswitch/main.m
BIN := bin/xkbswitch
TARGET := ~/.local/bin/xkbswitch

all: $(TARGET)

$(BIN): $(SRC)
	clang -framework Foundation -framework Carbon $(SRC) -o $(BIN)

$(TARGET): $(BIN)
	ln -sf $(shell realpath $(BIN)) $(TARGET)

clean:
	rm $(BIN) $(TARGET)
