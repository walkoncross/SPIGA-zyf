#!/bin/bash

# python ./spiga/demo/app.py \
#             [--input] \      # Webcam ID or Video Path. Dft: Webcam '0'.
#             [--dataset] \    # SPIGA pretrained weights per dataset. Dft: 'wflw'.
#             [--tracker] \    # Tracker name. Dft: 'RetinaSort'.
#             [--show] \       # Select the attributes of the face to be displayed. Dft: ['fps', 'face_id', 'landmarks', 'headpose']
#             [--save] \       # Save record.
#             [--noview] \     # Do not visualize window.
#             [--outpath] \    # Recorded output directory. Dft: './spiga/demo/outputs'
#             [--fps] \        # Frames per second.
#             [--shape] \      # Visualizer shape (W,H).
video_file="../WFLW_V_release/videos/eEbMsJPwPEM.mp4"
if [ $# -gt 0 ]; then
    video_file=$1
fi

python ./spiga/demo/app.py \
    --input ${video_file} \
    --dataset wflw \
    --tracker RetinaSort \
    --show fps face_id landmarks headpose \
    --save \
    --outpath ./spiga/demo/outputs \
    --fps 30 \
    --shape 640 480 \
    --device mps
