
function x = backSubs(A, b)
[Size, ~] = size(A);
x = zeros(Size, 1);
count = 0;

 x(Size) = b(Size)/A(Size,Size);
 
for n  = Size-1:-1:1 
    
    Aaux = A(n , (Size  - count):Size);
    Xaux =  x( (Size - count): Size , 1);
    sumatorio= Aaux * Xaux; 
    x(n) = (b(n) - sumatorio)/ A(n,n);
    count = count +1;
end 
 
end
