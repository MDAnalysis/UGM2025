ARG CUDA_VER
ARG DISTRO_ARCH
ARG DISTRO_VER
ARG DISTRO_NAME
FROM --platform=linux/${DISTRO_ARCH} nvidia/cuda:${CUDA_VER}-devel-${DISTRO_NAME}${DISTRO_VER} as conda

COPY openff-openfe-environment.yaml  env.yaml
RUN . /opt/conda/etc/profile.d/conda.sh && \
        conda env create -n workshop --file=env.yaml

RUN  . /opt/conda/etc/profile.d/conda.sh && \
        conda clean --all -y -f

# Install additional tools
RUN apt-get update && apt-get install -y \
    zsh \
    vim \
    less \
    curl \
    wget \
    git \
    tree \
    htop \
    neofetch \
    bat \
    fd-find \
    ripgrep \
    fonts-powerline \
    gcc \
    g++ \
    make \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY create_conda_user /opt/docker/bin/create_conda_user
RUN chmod +x /opt/docker/bin/create_conda_user

# Always create the workshop-user for consistent behavior
RUN /opt/docker/bin/create_conda_user

USER workshop-user 
