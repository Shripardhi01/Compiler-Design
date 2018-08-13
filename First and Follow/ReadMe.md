<strong>Compiler Design | FIRST and FOLLOW</strong><br><br>
<b>FIRST</b> is applied to the r.h.s. of a production rule, and tells us all the terminal symbols that can start sentences derived from that r.h.s. It is defined as:<br><br>
1.If X is a terminal then First(X) is just X!<br><br>
2.If there is a Production X → ε then add ε to first(X)<br><br>
3.If there is a Production X → Y1Y2..Yk then add first(Y1Y2..Yk) to first(X)<br><br>
4.First(Y1Y2..Yk) is either<br><br>
5.First(Y1) (if First(Y1) doesn't contain ε)<br><br>
OR (if First(Y1) does contain ε) then First (Y1Y2..Yk) is everything in First(Y1) <except for ε > as well as everything in First(Y2..Yk)<br><br>
If First(Y1) First(Y2)..First(Yk) all contain ε then add ε to First(Y1Y2..Yk) as well.<br><br>
<b>FOLLOW</b><br><br>
1.First put $ (the end of input marker) in Follow(S) (S is the start symbol)<br><br>
2.If there is a production A → aBb, (where a can be a whole string) then everything in FIRST(b) except for ε is placed in FOLLOW(B).<br><br>
3.If there is a production A → aB, then everything in FOLLOW(A) is in FOLLOW(B)<br><br>
4.If there is a production A → aBb, where FIRST(b) contains ε, then everything in FOLLOW(A) is in FOLLOW(B)<br><br>
