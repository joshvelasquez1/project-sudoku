val(1..9).
pos(1..9).

subgrid(X,Y, 1 + (X-1)/3*3 + (Y-1)/3) :- pos(X), pos(Y).

sudoku(X,Y,N) :- initial(X,Y,N).

1 { sudoku(X,Y,N) : val(N) } 1 :- pos(X), pos(Y).

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.

:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

:- sudoku(X1,Y1,N), sudoku(X2,Y2,N), subgrid(X1,Y1,G), subgrid(X2,Y2,G), (X1,Y1) != (X2,Y2).

#show.
#show sudoku/3.
