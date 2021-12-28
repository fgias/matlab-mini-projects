%Sudoku Solver
%Fotios Ioannis Giasemis


A=zeros(9,9);
fposs=[1,2,3,4,5,6,7,8,9];
poss=zeros(9,9,9,2,9);
format compact
for i=1:9                      %input section
    for j=1:9
        display(i) 
        display(j)
        A(i,j)=input('give number in the cell (i, j): between 1 and 9, if empty, give 0:');
    end
end
%%
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
%%
tries=0;
it_max=2000;
while tries<81
tries=0;
for i=1:9
    for j=1:9
        if A(i,j)==0
                
            A(i,j)=poss(i,j,randi([1 9]));
            it=0;
            while A(i,j)==0 && it<it_max
                A(i,j)=poss(i,j,randi([1 9]));
                    it=it+1;
            end
        end
        
        if A(i,j)~=0
               
                poss(:,j,A(i,j))=0;
                poss(i,:,A(i,j))=0;
                poss(i,j,A(i,j))=A(i,j);
                
        else 
            break
        end
        
        tries=tries+1;
        
    end
    if it==it_max
        break
    end
end
end

    