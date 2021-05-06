FROM gitpod/workspace-full
# Buildroot stuff
WORKDIR /workspace/browser-vm/
RUN echo 'Installing dependencies...'
RUN sudo apt update && sudo apt install -y cpio rsync
RUN echo 'Downloading buildroot...'
RUN sudo wget https://buildroot.org/downloads/buildroot-2021.02.1.tar.gz
RUN echo 'Extracting buildroot tarfile...'
RUN pwd && ls
RUN sudo tar -xvf buildroot-2021.02.1.tar.gz
#RUN echo 'Starting build process...'
#WORKDIR workspace/browser-vm/buildroot-2021.02.1/
#RUN pwd && ls
#RUN sudo make BR2_EXTERNAL=/workspace/browser-vm/buildroot-v86 v86_defconfig
#RUN sudo make menuconfig
#RUN sudo make savedefconfig
#RUN sudo make linux-menuconfig
#RUN sudo make linux-savedefconfig
