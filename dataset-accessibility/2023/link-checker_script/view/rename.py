import os

folder_path = '/home/mingmar@sandbox.jrc/GitHub/linkchecker/view'

# List all files in the folder
files = os.listdir(folder_path)

# Loop through each file in the folder
for file in files:
    if file.startswith('View'):
        new_file_name = file.replace('View', 'View_')  # Add "_" after "View" in the filename
        os.rename(os.path.join(folder_path, file), os.path.join(folder_path, new_file_name))
        print(f'Renamed {file} to {new_file_name}')