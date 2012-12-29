ln $1 $1.clean.avi
ffmpeg -y -i $1.clean.avi -threads 0 -f webm -vcodec libvpx -deinterlace -g 120 -level 216 -profile 0 -qmax 42 -qmin 10 -rc_buf_aggressivity 0.95 -vb 2M -acodec libvorbis -aq 90 -ac 1 $2
rm $1.clean.avi
