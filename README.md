# vibe_win_install

Here are some scripts made to make the instalation of Vibe on windows easier.

The Vibe site is:

https://github.com/mkocabas/VIBE

To install VIBE on windows using this scrip, you must:

install miniconda:

https://docs.conda.io/en/latest/miniconda.html


install VC2017 redist

https://support.microsoft.com/pt-br/help/2977003/the-latest-supported-visual-c-downloads

Download and add to system path (only the bin directory)

FFMPEG

https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip



Unpacking
Unpack the VIBE github pack to a folder

https://github.com/mkocabas/VIBE/archive/master.zip

unpack the contents of this github to the same folder
then run:

install_conda.bat

and

prepare_data.bat

To use vibe, you must enter the vibe virtual enviroment created:

conda activate venv_vibe

then you cen got to vibes folder and execute a test

python demo_alter.py --vid_file sample_video.mp4 --output_folder output/ --display 

Note that all the configuration was made for GPU powered PCs
