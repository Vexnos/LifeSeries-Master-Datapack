#!/bin/bash

# Version File Path
FILE_PATH="./version_info.txt"

# Does file exist
if [ -f "$FILE_PATH" ]; then
    # Read
    VERSION=$(cat "$FILE_PATH")
    echo "The version is: $VERSION"

    # Zip Datapack
    cd Datapack && zip -r LifeSeries_Data_v$VERSION.zip data/ pack.mcmeta pack.png && echo "Success!" && mv LifeSeries_Data_v$VERSION.zip ../

    # Zip Resourcepack
    cd ../Resourcepack && zip -r LifeSeries_Resources_v$VERSION.zip assets/ pack.mcmeta pack.png && echo "Success!" && mv LifeSeries_Resources_v$VERSION.zip ../

else
    echo "ERROR: The file does not exist"
fi