val(1..4).
pos(1..4).

sudoku(X,Y,N) :- initial(X,Y,N).

1 { sudoku(X,Y,N) : val(N) } 1 :- pos(X), pos(Y).

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.

:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

#show.
#show sudoku/3.
