#!/bin/bash

# DO NOT COMMIT CHANGES TO THIS FILE! Make a local copy and follow the
# instructions below.

# Copy this to /etc/profile.d/ to auto-set environment vars on login.
# Or, make a copy of this, customize, and run immediately before the training
# binary:
# cp path_config.sh ~/my_path_config.sh
# source ~/my_path_config.sh; python main.py --config ../config/demo.conf \
#   --overrides "do_train = 0"

# Default environment variables for JSALT code. May be overwritten by user.
# See https://github.com/jsalt18-sentence-repl/jiant for more.

##
# Example of custom paths for a local installation:
export JIANT_PROJECT_PREFIX=/scratch/tjf324/jiant
export JIANT_DATA_DIR=/scratch/tjf324/data/glue_auto_dl
export WORD_EMBS_FILE=/scratch/tjf324/data/fastext/crawl-200d-2M.vec
export FASTTEXT_MODEL_FILE=.
export JIANT_OVERRIDES=""
export JIANT_CONF="config/train_openai.conf"


