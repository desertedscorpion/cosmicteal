# Run Chrome in a container
#
# docker run -it -e DISPLAY --net=host -v $HOME/.Xauthority:/home/developer/.Xauthority taf7lwappqystqp4u7wjsqkdc7dquw/cosmicteal
#

# Base docker image
FROM fedora:23
MAINTAINER Emory Merryman <emory.merryman+ZLJBcYEGK0LvinvT@gmail.com>
RUN dnf update --assumeyes && dnf install --assumeyes firefox dbus && dnf update --assumeyes && dnf clean all
RUN dbus-uuidgen > /var/lib/dbus/machine-id
RUN adduser --create-home emory && usermod --gid 1000 emory && usermod --uid 1000 emory
USER emory
ENV HOME /home/emory
CMD /usr/bin/firefox
