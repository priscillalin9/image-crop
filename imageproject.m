image_folder = 'C:\Users\Priscilla\Matlab\images'; %where photos are being loaded from
new_folder = 'C:\Users\Priscilla\Matlab\croppedimages'; %where cropped photos are being saved to
imagefiles = dir(fullfile(image_folder,'*.png'));
n = length(imagefiles); %number of photos in folder of original images
for i = 1 : n
    filename = (fullfile((image_folder),imagefiles(i).name));
    image = imread(filename);
    imshow(image);
    [x, y] = ginput(1); %takes input of mouseclick once
    cropped_im = imcrop(image,[x-35,y-35,70,70]); %70 by 70 pixel crop
    cropped = imshow(cropped_im);
    saveas(cropped, fullfile((new_folder),imagefiles(i).name)); %saves cropped image
end

