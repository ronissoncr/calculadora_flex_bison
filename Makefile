all: calculadora

calculadora.tab.c calculadora.tab.h:	calculadora.y
	bison -d calculadora.y

lex.yy.c: calculadora.l calculadorauladora.tab.h
	flex calculadorauladora.l

calculadorauladora: lex.yy.c calculadorauladora.tab.c calculadorauladora.tab.h
	gcc -o calculadora calculadora.tab.c lex.yy.c

clean:
	rm calculadora calculadora.tab.c lex.yy.c calculadora.tab.h
