squirrel get grub-efi

grub-install --target=x86_64-efi --efi-directory=/mnt

squirrel get dracut && dracut --kver=5.19.0

grub-mkconfig -o /boot/grub/grub.cfg

rm /usr/lib/libbfd.a && rm /usr/lib/libbfd.la

read "What is the name of the user ? " USERNAME

useradd -m -G users,wheel,audio,video -s /bin/bash $USERNAME
passwd $USERNAME

read "Installation finished ! Press [Enter] to reboot"

shutdown -r now
