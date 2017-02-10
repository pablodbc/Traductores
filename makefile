compilar:
	alex Lexer.x
	happy Grammar.y
	ghc --make main.hs -o retina 
	clean

clean:
	rm -v Lexer.o Lexer.hs Lexer.hi Stdout.hi Stdout.o Grammar.hs Grammar.hi Grammar.o