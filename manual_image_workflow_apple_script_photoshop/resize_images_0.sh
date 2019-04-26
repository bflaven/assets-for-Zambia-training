#!/bin/bash

# cd /Users/brunoflaven/Documents/02_copy/_technical_training_zambia_znbc/_manual_image_workflow_apple_script_photoshop/
# sh resize_images.sh



### --- VALUES --- ###
SOURCE_DIRNAME="$PWD/01_source/"
DESTINATION_DIRNAME="$PWD/02_destination/"



echo "\n"
echo "\033[1;33m ### START ### \033[0m"
echo "\n"

	# V1
	echo "\033[31m\033[31m #COPY AND CONVERT FILES \033[0m"
	echo "\n"
		for file in "$SOURCE_DIRNAME"*; do
		  # echo ${file##*/}
		fileNameOnly=${file##*/} $a
		  #printf "Resize $file\n"
			
			# DEBUG
			# printf "SOURCE => $file"
			# printf "DESTINATION => $dstName"
			# printf "fileNameOnly => $fileNameOnly"
			# printf "DESTINATION with files => $DESTINATION_DIRNAME$fileNameOnly"
			#printf "cp $file $dstName$fileNameOnly"
			#echo "\n\n"
			

			# PERFORM ACTION COPY
			# cp $file $dstName$fileNameOnly
			
			# PERFORM ACTION CONVERT IMAGEMAGICK
			# convert "$file" -resize 10% -gravity center -crop 50%\! "$dstName$fileNameOnly"
			# convert "$file" -resize 10% -gravity center "$dstName$fileNameOnly"
			#convert "$file" -resize 10% -gravity center "$dstName$fileNameOnly"
			# convert "$file" -thumbnail 100x100^ -gravity center -crop 100x100+0+0  +repage thumbs/"$file"
			# 
			convert "$file" -thumbnail 200x -gravity center "$dstName$fileNameOnly"


			printf "DONE for $dstName$fileNameOnly"
			echo "\n"
		  
		done
	echo "\n"

### ---  DONE --- ###
echo "\033[1;33m ### END IT IS DONE !!! ### \033[0m"
echo "\n"
echo "\033[1;33m ### Check $dstName ### \033[0m"
echo "\n\n"
exit 0;













