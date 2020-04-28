
% Name: AllanLitva, stu#: 100943856 


% walks through list, adding one to X if zeros is True. 

countZeroFree([], 0).
countZeroFree([H|T],X) :- countZeroFree(T,Y), H =:= 0, X is Y,!.  
countZeroFree([H|T], X) :- countZeroFree(T, Y), zeros(H), X is 1 + Y,!.
countZeroFree([H|T],X) :- countZeroFree(T,Y), \+zeros(H), X is Y,!. 




% determines if an integer is ZeroFree, treats 0 as zerofree, check for zero is above in countZeroFree

zeros(N):- N =:= 0,!.
zeros(N):- (N-(N//10)*10) =\= 0, Nx is N//10, zeros(Nx). 
  












            
            
            
            