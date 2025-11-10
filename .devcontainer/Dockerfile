# Use lightweight micromamba base image (much faster than miniconda)
FROM mambaorg/micromamba:1.5.10

# Switch to root for system package installation
USER root

# Install essential system packages only
RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy environment file
COPY --chown=$MAMBA_USER:$MAMBA_USER workshops/openff-openfe-environment.yaml /tmp/env.yaml

# Switch back to micromamba user
USER $MAMBA_USER

# Create environment using micromamba (much faster than conda)
RUN micromamba create -n openff-openfe -f /tmp/env.yaml -y && \
    micromamba clean --all --yes

# Set up shell integration
RUN echo "eval \"\$(micromamba shell hook --shell bash)\"" >> ~/.bashrc && \
    echo "micromamba activate openff-openfe" >> ~/.bashrc

# Set environment variables for micromamba
ENV MAMBA_ROOT_PREFIX=/opt/conda
ENV PATH=/opt/conda/envs/openff-openfe/bin:$PATH

# Set working directory
WORKDIR /workspace 
