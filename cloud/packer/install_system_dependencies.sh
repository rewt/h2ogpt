# Install linux dependencies
apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    software-properties-common \
    pandoc \
    vim \
    libmagic-dev \
    poppler-utils \
    tesseract-ocr \
    libtesseract-dev \
    libreoffice \
    autoconf \
    libtool

# Run upgrades
apt-get upgrade -y

# Install conda
wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.1.0-1-Linux-x86_64.sh && \
    mkdir -p /h2ogpt_conda && \
    bash ./Miniconda3-py310_23.1.0-1-Linux-x86_64.sh -b -u -p /h2ogpt_conda && \
    conda install python=3.10 pygobject weasyprint -c conda-forge -y