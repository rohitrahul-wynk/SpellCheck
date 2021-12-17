FROM pytorch/torchserve:0.4.2-gpu
COPY model-store/ /tmp/models/
CMD ["torchserve", "--model-store=/tmp/models", "--models=spellcheck_trans.mar"]