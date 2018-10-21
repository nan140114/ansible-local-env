FROM python

WORKDIR $HOME

RUN pip install ansible && \
    echo  "copy ssh key for server" && \
    ssh-keygen -f id_rsa -t rsa -N ''
