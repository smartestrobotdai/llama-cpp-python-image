# check the environments


if [[ -z "${N_THREADS}" ]]; then
  export N_THREADS=8
fi

HOST=0.0.0.0 PORT=8081 python3 -m whisper_cpp_python.server --model $MODEL_FILE_PATH --n_threads $N_THREADS