FROM ubuntu:rolling

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y sudo \
    x11-apps gosu

# Replace 1000 with your user / group id
# RUN export uid=1000 gid=1000 && \
#     mkdir -p /home/developer && \
#     echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
#     echo "developer:x:${uid}:" >> /etc/group && \
#     echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
#     chmod 0440 /etc/sudoers.d/developer && \
#     chown ${uid}:${gid} -R /home/developer

# RUN
# RUN groupadd -r postgres && useradd --no-log-init -r -g postgres postgres
RUN groupadd postgres && useradd --no-log-init -g postgres postgres
RUN echo "postgres ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/postgres
USER postgres
# ENV HOME /home/developer
ENV DISPLAY=unix:0
# CMD /usr/bin/xeyes
CMD /bin/bash
