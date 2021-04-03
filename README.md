# vibe_win_install
Video Tutorial
https://youtube.com/watch?v=3qhs5IRJ1LI


`Official Project link:` https://github.com/mkocabas/VIBE


Here are some scripts made to make the instalation of Vibe on windows easier.


To install VIBE on windows using this script, you must:

`install miniconda:`
https://docs.conda.io/en/latest/miniconda.html


`install VC2017 redist`
https://support.microsoft.com/pt-br/help/2977003/the-latest-supported-visual-c-downloads

Download and add to system path (only the bin directory)

`FFMPEG`
https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip



## Unpacking

Unpack the VIBE github pack to a folder

https://github.com/mkocabas/VIBE/archive/master.zip

unpack the contents of this github to the same folder

https://github.com/carlosedubarreto/vibe_win_install/archive/main.zip

then run:
```bash
conda create -n venv_vibe python=3.7
conda activate venv_vibe
conda install cudatoolkit=10.1 cudnn=7.6.0

conda install -c anaconda git

install_conda.bat
prepare_data.bat
```


To use vibe, you must enter the vibe virtual enviroment created:
```bash
conda activate venv_vibe
```

then you can go to vibe folder and execute a test
```bash
python demo_alter.py --vid_file sample_video.mp4 --output_folder output/ --display 
```
Note that all the configuration was made for GPU powered PCs


# FBX Conversion

`Go to  this site and create a free account`https://smpl.is.tue.mpg.de/

Download the Unity-compatible FBX file through the 
https://psfiles.is.tuebingen.mpg.de/downloads/smpl/SMPL_unity_v-1-0-0-zip 
## (but it wont work going straight to the link, you must go to the site donwload page. its almost the last link on the page https://smpl.is.tue.mpg.de/downloads)


· Unzip the contents and locate them data/SMPL_unity_v.1.0.0. (the full folder)

· Install Blender python API
```bash
pip install bpy 
```

or if you havbe problems, try installing with conda

```bash
conda install -c kitsune.one python-blender 
```


`Donwload version 2.82a`
https://download.blender.org/release/Blender2.82/blender-2.82a-windows64.zip


copy the 2.82 folder to the same folder that you have the python instalation used

· Run the command below to convert VIBE output to FBX:
```bash
python lib/utils/fbx_output.py --input output/sample_video/vibe_output.pkl --output output/sample_video/fbx_output.fbx --fps_source 30 --fps_target 30 --gender female 
```
