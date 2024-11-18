import os
import shutil
import math

source_dir = './'
destination_dir = './'

# Get a list of all files in the source directory
files = os.listdir(source_dir)

# Sort the files based on their names
files.sort()

# create 35 folders from 0 to 34
for i in range(5):
    os.mkdir(str(i))



# Iterate over the sorted files
for i, file in enumerate(files):
    name = file.split('.')[0]
    if name == 'movefiles':
        continue
    # Generate the new file name
    new_name = f'{math.floor(int(name) / 5)}.png'

    # Generate the source and destination paths
    source_path = os.path.join(source_dir, file)
    destination_path = os.path.join(destination_dir+str(int(name)%5), new_name)
    
    # Move and rename the file
    shutil.move(source_path, destination_path)