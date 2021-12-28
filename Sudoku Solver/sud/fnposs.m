%Sudoku Solver
%Fotios Ioannis Giasemis
%Function
%Give possible values for every cell

function fnposs(A,fposs)
for i=1:9
    for j=1:9
        if A(i,j)~=0
            continue
        else
            poss(i,j,:)=fposs;
            for k=1:9
                if A(i,k)~=0 && k~=j
                    poss(i,j,A(i,k))=0;
                end
            end
            for k=1:9
                if A(k,j)~=0 && k~=i
                    poss(i,j,A(k,j))=0;
                end
            end
        end
    end
end
end
