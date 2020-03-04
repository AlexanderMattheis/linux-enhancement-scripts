import sys

from dirsync import sync

# read in params
source_directory_path = sys.argv[1]
target_directory_path = sys.argv[2]


def start():
    sync(source_directory_path, target_directory_path, "diff")
    input("Press Enter to Start synchronisation.")

    # 'purge': to delete files
    # 'content': to replace files with different content
    sync(source_directory_path, target_directory_path, "sync", purge=True, content=True)


start()
