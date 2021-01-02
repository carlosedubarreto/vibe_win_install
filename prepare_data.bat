md data
cd data
gdown "https://drive.google.com/uc?id=1untXhYOLQtpNEy4GTY_0fL_H-k6cTf_r"

cd ..
echo #### Extract the files from vibe_data ###
python unzip_vibe_data.py


copy data\vibe_data\sample_video.mp4 .

echo ### creating place for torch model ###
md %homepath%\.torch\models
copy data\vibe_data\yolov3.weights %homepath%\.torch\models

echo ### creating place for yolo config ###
md %homepath%\.torch\config
copy yolov3.cfg %homepath%\.torch\config