import os
import sys

from PIL import Image

# read in params
source_directory_path = sys.argv[1]
suffix = sys.argv[2]
operation = sys.argv[3]

# constants
FILE_EXTENSION = "png"


def start():
    for path, _, files in os.walk(source_directory_path):
        for filename in files:
            source_filepath = str(os.path.join(path, filename))
            destination_filepath = source_filepath.replace(".{extension}".format(extension=FILE_EXTENSION),
                                                           "{suffix}.{extension}".format(suffix=suffix,
                                                                                         extension=FILE_EXTENSION))
            image = Image.open(source_filepath)

            if operation == "FlipX":
                image = image.transpose(Image.FLIP_LEFT_RIGHT)
            elif operation == "FlipY":
                image = image.transpose(Image.FLIP_TOP_BOTTOM)

            image.save(destination_filepath)
            print("Created:", destination_filepath)


start()
