for x=rand(1,5)
  if x>0.5
    disp(['x=',num2str(x),' is greater than a half']);
  elseif x<0.25
    disp(['x=',num2str(x),' is less than a quarter']);
  else
    disp(['x=',num2str(x),' is in between'])
  end
end