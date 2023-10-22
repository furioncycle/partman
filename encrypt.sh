echo "${PASSWORD}" | cryptsetup --verify-passphrase -v luksFormat "${DISK}""${CRYPT_PARTITION}"
echo "${PASSWORD}" | cryptsetup open "${DISK}""${CRYPT_PARTITION}" pool0_0
mkfs.btrfs -f /dev/mapper/pool0_0
