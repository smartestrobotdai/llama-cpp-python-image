# check the environments
# if the environment N_CTX is not present, then set it to 4096
if [[ -z "${N_CTX}" ]]; then
  export N_CTX=4096
fi

if [[ -z "${N_GPU_LAYERS}" ]]; then
  export N_GPU_LAYERS=100
fi

if [[ -z "${N_THREADS}" ]]; then
  export N_THREADS=8
fi

python3 -m llama_cpp.server --model $MODEL_FILE_PATH --host 0.0.0.0 --port 8000 --n_ctx $N_CTX --n_gpu_layers $N_GPU_LAYERS --n_threads $N_THREADS