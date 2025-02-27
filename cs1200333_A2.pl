mem(X,[]) :- fail.
mem(X,[X|_]) :- !.
mem(X,[_|R]) :- mem(X,R).





/*  Check for the integer    */
hastype(_,N, intT) :- integer(N).



/*  Check for the bool   */
hastype(_, true, boolT).
hastype(_,false,boolT).




/*  Check for the membership   */
hastype(G, x, T) :- member((x, T), G).

hastype(G, X, T) :- member((X, T), G).
/* Addition or bitwise or  */

hastype(G, EXP1 + EXP2, intT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).





hastype(G, EXP1 + EXP2, boolT) :-hastype(G, EXP1, boolT),hastype(G, EXP2, boolT).

/* multiplication or bitwise and  */

hastype(G, EXP1 * EXP2, intT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).



hastype(G, EXP1 * EXP2, boolT) :-hastype(G, EXP1, boolT),hastype(G, EXP2, boolT).

/* substraction */

hastype(G, EXP1 - EXP2, intT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).

/* division  */

hastype(G, EXP1 / EXP2, intT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).


hastype(G, EXP1/\EXP2, boolT) :-hastype(G, EXP1, boolT),hastype(G, EXP2, boolT).

hastype(G, EXP1\/EXP2, boolT) :-hastype(G, EXP1, boolT),hastype(G, EXP2, boolT).

hastype(G, \+EXP1, boolT) :-hastype(G, EXP1, boolT).

/* conditional statements */

hastype(G, EXP1 =:= EXP2, boolT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).




hastype(G, EXP1 =:= EXP2, boolT) :-hastype(G, EXP1, boolT),hastype(G, EXP2, boolT).




hastype(G, EXP1 > EXP2, boolT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).

hastype(G, EXP1 < EXP2, boolT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).

hastype(G, EXP1 >= EXP2, boolT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).

hastype(G, EXP1 =< EXP2, boolT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).

hastype(G, EXP1=\= EXP2, boolT) :-hastype(G, EXP1, boolT),hastype(G, EXP2, boolT).



hastype(G, EXP1=\= EXP2, boolT) :-hastype(G, EXP1, intT),hastype(G, EXP2, intT).


/*


Test cases 





*/
