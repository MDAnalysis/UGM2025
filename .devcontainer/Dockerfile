# Use lightweight miniconda base image
FROM continuumio/miniconda3:latest

# Install essential system packages only
RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy environment file and create conda environment
COPY workshops/openff-openfe-environment.yaml /tmp/env.yaml
RUN conda env create -n openff-openfe --file=/tmp/env.yaml && \
    conda clean --all -y -f && \
    rm /tmp/env.yaml

# Create non-root user
ARG USERNAME=workshop-user
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME && \
    useradd --uid $USER_UID --gid $USER_GID -m $USERNAME && \
    chown -R $USERNAME:$USERNAME /opt/conda

# Initialize conda for the user
USER $USERNAME
RUN conda init bash && \
    echo "conda activate openff-openfe" >> /home/$USERNAME/.bashrc

# Set working directory
WORKDIR /workspace

USER $USERNAME 
