% MATLAB Comparison Practice

T_A = [7 9 -8 9 3 -8 -5 1 10 10 0 -7];
T_B = [6 4 3 -2 3 -9 -1 3 7 -2 2 -9];

countG = 0;
countE = 0;
countL = 0;

for i = 1:1:length(T_A)
    if(T_A(i) > T_B(i))
        countG = countG + 1;
    elseif(T_A(i) == T_B(i))
        countE = countE + 1;
    else
        countL = countL + 1;
    end
end

fprintf("Greater than: %i\nEqual To: %i\nLess Than: %i\n\n", countG, countE, countL);

newVec = 1:1:length(T_A);

for i = 1:1:length(T_A)
    if(T_A(i) > T_B(i))
        newVec(i) = T_A(i);
    elseif(T_A(i) < T_B(i))
        newVec(i) = T_B(i);
    else
        newVec(i) = T_A(i);
    end
end

fprintf("New Vector:\n");
for i = 1:1:length(newVec)
    fprintf("%i ", newVec(i));
end
fprintf("\n\n");

max = 0;
min = T_A(1);
for i = 1:1:length(T_A)
    if(T_A(i) > max)
        max = T_A(i);
    end
    if(T_A(i) < min)
        min = T_A(i);
    end
end

fprintf("Max: %i\nMin: %i\n", max, min);
