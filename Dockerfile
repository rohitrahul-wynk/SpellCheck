FROM pytorch/torchserve:0.4.2-cpu
COPY model-store/ /tmp/models/
CMD ["torchserve", "--model-store=/tmp/models", "--models=spellcheck_trans.mar"]