all: compile

compile:
	alex Lexer.x
	happy Grammar.y
	ghc --make main.hs -o retina 

clean:
	rm -rf -v Lexer.o Lexer.hs Lexer.hi Stdout.hi Stdout.o Grammar.hs Grammar.hi Grammar.o main.hi main.o retina