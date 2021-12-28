
IMI=imread('1.gif');

for i=2:23
    gifFilename = sprintf('%d.gif', i);
    
    IM=imread(gifFilename);
    
    IMI=imadd(IM,IMI);
    
end

imshow(IMI,[])