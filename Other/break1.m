n=0
for x=rand(1,10)
  if x>0.5
    break
  end
  n=n+1;
end
disp([num2str(n),' values generated before first value above 0.5'])