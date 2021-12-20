FROM pytorch/torchserve:0.5.1-gpu
COPY model-store/ /tmp/models/
COPY config.properties /tmp/config.properties
CMD ["torchserve", "--model-store=/tmp/models", "--models=spellcheck_trans.mar", "--ts-config=/tmp/config.properties"]