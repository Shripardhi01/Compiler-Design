Using lex and yacc together
Lex syntax
  
    ...declarations...
    %%
    ...rules...
    %%
    ...additional user code...

    main() {
      return yywrap();
    }
    
Yacc syntax
   ...declarations...
    %%
    ...rules...
    %%
    #include "lex.yy.c"

    ...additional user code...

    main() {
      return yyparse();
    }
   
run file on linux
  lex example.l
  yacc example.y
  gcc -o example y.tab.c
  ./example
    
