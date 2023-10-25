# run the conversion
docker run --rm  \
           --ipc=host \
           --name samfusion \
            -p 8080:8080 \
           -it samfusion:latest


#    -v $(pwd)/convert_utils:/workspace/TensorRT/demo/convert_utils \
#    -v $(pwd)/engine-1.5:/workspace/TensorRT/demo/convert_utils/engine-1.5 \
#    -v $(pwd)/onnx-1.5:/workspace/TensorRT/demo/convert_utils/onnx-1.5  \
#    -v $(pwd)/models:/models \

# --ulimit stack=67108864 \

#  -v $(pwd)/onnx:/workspace/TensorRT/demo/Diffusion/onnx \
#  -v $(pwd)/engine:/workspace/TensorRT/demo/Diffusion/engine \
# -v $(pwd)/output:/workspace/TensorRT/demo/Diffusion/output \