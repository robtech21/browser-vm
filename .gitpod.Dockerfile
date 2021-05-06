FROM gitpod/workspace-full
# Buildroot stuff
RUN sudo apt install -y cpio rsync
RUN git clone https://github.com/buildroot/buildroot
RUN cd buildroot
RUN make BR2_EXTERNAL=../buildroot-v86 v86_defconfig
RUN make menuconfig
RUN make savedefconfig
RUN make linux-menuconfig
RUN make linux-savedefconfig
