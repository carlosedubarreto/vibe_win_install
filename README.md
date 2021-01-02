# vibe_win_install

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
