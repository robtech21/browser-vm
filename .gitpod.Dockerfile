FROM gitpod/workspace-full
# Buildroot stuff
WORKDIR /workspace/browser-vm/
RUN echo 'Installing dependencies...'
RUN sudo apt update && sudo apt install -y cpio rsync
RUN echo 'Downloading buildroot...'
RUN wget https://buildroot.org/downloads/buildroot-2021.02.1.tar.gz
RUN echo 'Extracting buildroot tarfile...'
RUN pwd && ls
RUN tar -xvf buildroot-2021.02.1.tar.gz
RUN echo 'Starting build process...'
WORKDIR ./buildroot-2021.02.1/
RUN pwd && ls
RUN make BR2_EXTERNAL=../buildroot-v86 v86_defconfig
RUN make menuconfig
RUN make savedefconfig
RUN make linux-menuconfig
RUN make linux-savedefconfig
