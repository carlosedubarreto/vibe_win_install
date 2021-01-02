import os
from zipfile import ZipFile

os.chdir('data')

with ZipFile('vibe_data.zip', 'r') as zipObj:
   # Extract all the contents of zip file in current directory
   zipObj.extractall()