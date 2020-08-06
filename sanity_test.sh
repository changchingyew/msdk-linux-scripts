#!/bin/bash
set -x

# 176x144
mfx_player -hw -i aud_mw_e.264 -o out_264_mfx.yuv
sample_decode h264 -i420 -i aud_mw_e.264 -o out_264.yuv

# 832x480
mfx_player -hw -i:hevc CAINIT_F_SHARP_3.bit -o out_265_mfx.yuv
sample_decode h265 -i420 -i CAINIT_F_SHARP_3.bit -o out_265.yuv

# 640x80
mfx_player -hw -i mjpeg.avi -o out_jpeg_mfx.yuv
sample_decode jpeg -i420 -i mjpeg.avi -o out_jpeg.yuv

# 176x144
mfx_transcoder h264 -i test.yuv -o avc.h264 -w 176 -h 144 -f 25 -b 147000 -u 1 -hw -d3d -n 300 -s 0 -l 1 -c 0
sample_encode h264 -hw -i test.yuv -w 176 -h 144 -o avc.h264 -vbr -u 7 -nobref

# 176x144
mfx_transcoder h265 -i test.yuv -o hevc.h265 -w 176 -h 144 -f 25 -b 147000 -u 1 -hw -d3d -n 300 -s 0 -l 1 -c 0
sample_encode h265 -hw -i test.yuv -w 176 -h 144 -o hevc.h265 -vbr -u 7 -nobref -f 30 -async 1

# 176x144
sample_encode jpeg -i test.yuv -w 176 -h 144 -o stream.mjpeg -q 80
mfx_transcoder jpeg -enc:nv12 -dec:nv12 -i:nv12 test.yuv -o stream.mjpeg -w 176 -h 144 -hw -quality 1 -f 25 -Interleaved 1

# 176x96
sample_decode mpeg2 -i test_stream.mpeg2 -o out_mpeg2.yuv

# 1280x720
sample_decode vp9 -i jellyfish_720p_10frames.ivf -o out_vp9.yuv
