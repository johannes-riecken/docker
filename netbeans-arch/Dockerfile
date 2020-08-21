FROM archlinux

RUN pacman -Sy --noconfirm && pacman -Fy && pacman -S git libxtst fontconfig grep xorg-xeyes sudo netbeans jdk-openjdk awk --noconfirm
# Replace 1000 with your user / group id
# RUN export uid=1000 gid=1000 && \
#     mkdir -p /home/developer && \
#     echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
#     echo "developer:x:${uid}:" >> /etc/group && \
#     echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
#     chmod 0440 /etc/sudoers.d/developer && \
#     chown ${uid}:${gid} -R /home/developer

# RUN
# RUN groupadd -r jo && useradd --no-log-init -r -g jo jo
RUN groupadd jo && useradd --no-log-init -g jo jo
RUN mkdir -p /home/jo && chown -R jo:jo /home/jo
RUN echo "jo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER jo
# ENV HOME /home/developer
ENV DISPLAY=unix:0
# ENV PATH_TO_FX=/usr/lib/jvm/java-openjdk13/lib/javafx-sdk-13/lib
# CMD /usr/bin/xeyes
CMD /bin/bash
