FROM python:3.10  


RUN pip install gradio==3.49.0 
RUN pip install tritonclient[http]

### ADD USER WITH DEFAULT PW
ARG USER=docker_current
ARG UID=1000
ARG GID=1000
ARG PW=user

RUN useradd -m ${USER} --uid=${UID} && echo "${USER}:${PW}" | chpasswd && adduser ${USER} sudo
    
WORKDIR /home/${USER}
RUN chown -R ${UID}:${GID} /home
USER ${UID}:${GID}








