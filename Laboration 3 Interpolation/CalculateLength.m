
function[Length]= CalculateLength(sx,sy,N)
    Length = 0;
    tt = (0:N)/N;

    for i = 2:N+1
        Length = Length + norm([
            ppval(sx, tt(i)) - ppval(sx, tt(i-1))
            ppval(sy, tt(i)) - ppval(sy, tt(i-1))
        ]);  
    end
    Length=Length/96;
end