a=snapshot(webcam(1));
FaceDetector=vision.CascadeObjectDetector();
bbox=step(FaceDetector,a);
b=insertObjectAnnotation(a,'rectangle',bbox,'face');
    % set(a, 'FontName', 'Arial', 'FontWeight', 'bold', 'FontSize', 12, 'Color', 'black');
imshow(b),title('detected faces')
n=size(bbox,1);
 str_n=num2str(n);
str=strcat('number of detected faces',str_n);
 disp(str)
