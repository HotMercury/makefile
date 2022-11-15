# all : 可以同時編譯多個檔案ex all:app , app1
all:out
CC = gcc
INCLUDE = .
# -ansi : 程式要求依據 ansi 標準，增加可移植性
# -I : 追加 include 檔案的搜尋路徑
# -Wall : 編譯時顯示所有的警告訊息
CFLAGS = -g -Wall -ansi
objects = main.o gcd.o max.o min.o
# target:dependencies.....   若沒有找到會一一往下尋找相關
out:$(objects)
	$(CC) -o out $(objects) 
main.o:main.o operation.h
	$(CC) -I$(INCLUDE) $(CFLAGS) -c main.c
gcd.o:
	$(CC) -I$(INCLUDE) $(CFLAGS) -c gcd.c
min.o:
	$(CC) -I$(INCLUDE) $(CFLAGS) -c min.c
max.o:
	$(CC) -I$(INCLUDE) $(CFLAGS) -c max.c

# 清除
clean:
	rm -f $(objects) out
