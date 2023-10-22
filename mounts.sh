umount /mnt
mount -o subvol=root,compress=zstd,noatime /dev/mapper/pool0_0 /mnt

mkdir -p /mnt/home
mount -o subvol=home/active,compress=zstd,noatime /dev/mapper/pool0_0 /mnt/home
mkdir -p /mnt/home/.snapshots
mount -o subvol=home/snapshots,compress=zstd,noatime /dev/mapper/pool0_0 /mnt/home/.snapshots

mkdir -p /mnt/nix
mount -o subvol=nix,compress=zstd,noatime /dev/mapper/pool0_0 /mnt/nix

mkdir -p /mnt/persist
mount -o subvol=persist/active,compress=zstd,noatime /dev/mapper/pool0_0 /mnt/persist
mkdir -p /mnt/persist/.snapshots
mount -o subvol=persist/snapshots,compress=zstd,noatime /dev/mapper/pool0_0 /mnt/persist


mkdir -p /mnt/var/local
mount -o subvol=var_local/active,compress=zstd,noatime /dev/mapper/pool0_0 /mnt/var/local
mkdir -p /mnt/var/local/.snapshots
mount -o subvol=var_local/snapshots,compress=zstd,noatime /dev/mapper/pool0_0 /mnt/var/local/.snapshots

mkdir -p /mnt/var/log
mount -o subvol=var_log,compress=zstd,noatime /dev/mapper/pool0_0 /mnt/var/log

mkdir -p /mnt/boot
mount -o defaults,nosuid,nodev,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro /dev/disk/by-partlabel/EFI /mnt/boot/
