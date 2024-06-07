declare -a modules=("cublas" "cublaslt" "cudnn" "curand" "driver" "runtime" "nccl" "nvrtc")
for path in "${modules[@]}"
do
    cd src/${path}/sys
    bash bindgen.sh
    cd ../../../
done
