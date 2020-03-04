import os
import sys

from pathlib import Path

# read in params
inkscape_path = sys.argv[1]
source_directory_path = sys.argv[2]
target_directory_path = sys.argv[3]
dpi = int(sys.argv[4])


def start():
    inkscape = inkscape_path

    for path, _, files in os.walk(source_directory_path):
        for filename in files:
            source_filepath = str(os.path.join(path, filename))
            destination_filepath = source_filepath.replace(".svg", ".png")
            destination_filepath = destination_filepath.replace(source_directory_path, target_directory_path)

            destination_dir_path = Path(destination_filepath).parent

            if not os.path.exists(destination_dir_path):
                os.makedirs(destination_dir_path)

            shell_command = "{inkscape} --file={source} --export-png={destination} --export-dpi={dpi}" \
                .format(inkscape=inkscape, source=source_filepath, destination=destination_filepath, dpi=dpi)

            print(shell_command)
            os.system(shell_command)


start()
