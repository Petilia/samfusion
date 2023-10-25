FROM nvcr.io/nvidia/tritonserver:23.04-py3  

WORKDIR /workspace

RUN apt-get update && apt-get install cmake -y

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade tensorrt

RUN git clone https://github.com/NVIDIA/TensorRT.git -b release/8.6 --single-branch 

ENV TRT_OSSPATH=/workspace/TensorRT
WORKDIR ${TRT_OSSPATH}

ENV PLUGIN_LIBS="${TRT_OSSPATH}/build/out/libnvinfer_plugin.so"

RUN pip install git+https://github.com/facebookresearch/segment-anything \
    torch==2.1.0 \
    torchvision==0.16.0 \
    opencv-python 

RUN pip install transformers==4.34.1 \
    diffusers

# RUN cd demo/Diffusion/ \
    # && mkdir -p onnx engine output

# RUN pip3 install -r demo/Diffusion/requirements.txt

# RUN pip install tritonclient[http]


#### ADD USER WITH DEFAULT PW
# ARG USER=docker_current
# ARG UID=2010
# ARG GID=2010
# ARG PW=user

# RUN useradd -m ${USER} --uid=${UID} && echo "${USER}:${PW}" | chpasswd && adduser ${USER} sudo

ARG USER=triton-server
ARG UID=1000
ARG GID=1000
ARG PW=user

RUN usermod -aG sudo $USER

WORKDIR /home/${USER}
RUN chown -R ${UID}:${GID} /home
USER ${UID}:${GID}




