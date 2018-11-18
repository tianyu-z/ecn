#!/bin/bash

python src/main.py \
    --name "self-opputil$1" \
    --noprosocial \
    --proposal \
    --linguistic \
    --force_utility_comm "$1" \
    --enable_cuda \
    --term-entropy-reg 0.05 \
    --utterance-entropy-reg 0.0001 \
    --proposal-entropy-reg 0.05 \
    --episodes 250000 \
    "${@:2}"
