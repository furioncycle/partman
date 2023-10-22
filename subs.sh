mount -t btrfs /dev/mapper/pool0_0 /mnt
btrfs subvolume create /mnt/root
mkdir -p /mnt/home
btrfs subvolume create /mnt/home/active
btrfs subvolume create /mnt/home/snapshots
btrfs subvolume create /mnt/nix
mkdir -p /mnt/persist
btrfs subvolume create /mnt/persist/active
btrfs subvolume create /mnt/persist/snapshots
btrfs subvolume create /mnt/swap
mkdir -p /mnt/var_local
btrfs subvolume create /mnt/var_local/active
btrfs subvolume create /mnt/var_local/snapshots
btrfs subvolume create /mnt/var_log
