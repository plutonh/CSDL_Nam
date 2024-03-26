CC = gcc
TARGET = rv64i_iss
OBJ = main.o command.o

$(TARGET): $(OBJ)
	$(CC) -o $(TARGET) $(OBJ)

main.o:
	$(CC) -c main.c

command.o:
	$(CC) -c command.c

clean:
	rm -rf $(TARGET) $(OBJ)
