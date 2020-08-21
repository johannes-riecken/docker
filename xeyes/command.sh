docker run --rm -v /tmp/.X11-unix:/tmp/.X11-unix:ro -e HOME -u $(id -u):$(id -g) -w $HOME -v $HOME:$HOME -e DISPLAY=unix$DISPLAY xeyes
