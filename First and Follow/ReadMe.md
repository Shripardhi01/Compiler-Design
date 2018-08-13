<strong>Compiler Design | FIRST and FOLLOW</strong>
<b>FIRST</b> is applied to the r.h.s. of a production rule, and tells us all the terminal symbols that can start sentences derived from that r.h.s. It is defined as:
1.If X is a terminal then First(X) is just X!
2.If there is a Production X → ε then add ε to first(X)
3.If there is a Production X → Y1Y2..Yk then add first(Y1Y2..Yk) to first(X)
4.First(Y1Y2..Yk) is either
5.First(Y1) (if First(Y1) doesn't contain ε)
OR (if First(Y1) does contain ε) then First (Y1Y2..Yk) is everything in First(Y1) <except for ε > as well as everything in First(Y2..Yk)
If First(Y1) First(Y2)..First(Yk) all contain ε then add ε to First(Y1Y2..Yk) as well.
<b>FOLLOW</b>
1.First put $ (the end of input marker) in Follow(S) (S is the start symbol)
2.If there is a production A → aBb, (where a can be a whole string) then everything in FIRST(b) except for ε is placed in FOLLOW(B).
3.If there is a production A → aB, then everything in FOLLOW(A) is in FOLLOW(B)
4.If there is a production A → aBb, where FIRST(b) contains ε, then everything in FOLLOW(A) is in FOLLOW(B)
