FROM gcr.io/deeplearning-platform-release/tf2-gpu.2-8:latest

# make file structure similar to Google Colab
RUN mkdir content
WORKDIR content

#Clone FILM repo
RUN git clone https://github.com/google-research/frame-interpolation frame_interpolation

# create volume dir to share files
RUN mkdir project_volume
 
# install FFMPEG for video stuff
RUN apt-get update -y
RUN apt-get install -y ffmpeg
