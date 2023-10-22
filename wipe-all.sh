wipefs "${DISK}" -a -f
sgdisk --zap-all "${DISK}"
sgdisk --clear \
                --new=1:0:+"${DISK_EFI_SIZE_MB}"MiB --typecode=1:ef00 --change-name=1:EFI \
                --new=2:0:+"${DISK_SWAP_SIZE_GB}"GiB --typecode=2:8200 --change-name=2:swap \
                --new=3:0:0 --typecode=3:8300 --change-name=3:pool0_0 \
                "${DISK}"
EFI_PARTITION=1
SWAP_PARTITION=2
CRYPT_PARTITION=3
