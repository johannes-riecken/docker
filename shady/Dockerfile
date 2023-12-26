FROM ubuntu:latest
RUN apt-update && apt-get install -y git golang libgl1-mesa-dev xorg-dev xvfb && go install github.com/polyfloyd/shady/cmd/shady@latest
ENV DISPLAY=:0
CMD ["xvfb-run", "shady", "-i", "example.glsl", "-ofmt", "png", "-o", "out.png", "-g", "256x256", "-f", "1", "-n", "1"]
