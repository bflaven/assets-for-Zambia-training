#!/bin/bash
# cd /path-to-your-directories/
# sh resize_images_1.sh



### --- VALUES for source and destination folders, you need to create them! --- ###
SOURCE_DIRNAME="$PWD/01_source/"
DESTINATION_DIRNAME="$PWD/02_destination/"



echo "\n"
echo "\033[1;33m ### START ### \033[0m"
echo "\n"

    # V1
    echo "\033[01;31m #COPY AND CONVERT FILES \033[0m"
    echo "\n"
        for file in "$SOURCE_DIRNAME"*; do
          # echo ${file##*/}
        fileNameOnly=${file##*/} $a
          #printf "Resize $file\n"
            
            # DEBUG
            # printf "SOURCE => $file"
            # printf "fileNameOnly => $fileNameOnly"
            
            # printf "DESTINATION_DIRNAME => $DESTINATION_DIRNAME"
        
            # printf "DESTINATION_DIRNAME with files => $DESTINATION_DIRNAME$fileNameOnly"
            # printf "cp $file $DESTINATION_DIRNAME$fileNameOnly"
            # echo "\n"
            

            # PERFORM ACTION COPY
            # cp $file $DESTINATION_DIRNAME$fileNameOnly
            
            # PERFORM ACTION CONVERT IMAGEMAGICK
        
            # printf "ACTION convert "$file" -resize 10% -gravity center -crop 50%%\! "$DESTINATION_DIRNAME$fileNameOnly" "
            # echo "\n"
            # convert "$file" -resize 10% -gravity center -crop 50%\! "$DESTINATION_DIRNAME$fileNameOnly"
            # echo "\n"


            # convert "$file" -resize 10% -gravity center "$DESTINATION_DIRNAME$fileNameOnly"
            
            
            convert "$file" -thumbnail 200x -gravity center "$DESTINATION_DIRNAME$fileNameOnly"

            # DONE  
            printf "DONE for $DESTINATION_DIRNAME$fileNameOnly"
            echo "\n"
          
        done
    echo "\n"

### ---  DONE --- ###
echo "\033[1;33m ### END IT IS DONE !!! ### \033[0m"
echo "\n"
echo "\033[1;33m ### Check $DESTINATION_DIRNAME ### \033[0m"
echo "\n\n"
exit 0;
