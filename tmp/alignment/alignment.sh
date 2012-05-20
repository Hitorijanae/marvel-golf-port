#!/sbin/sh
 
sync;
/sbin/umount /system
/sbin/umount /data
/sbin/umount /cache

# format ext with alignment
	/tmp/alignment/mkfs.ext4 -t ext4 -b 4096 -m 0 -F -L system /dev/block/mmcblk0p25
	/tmp/alignment/tune2fs -o journal_data_ordered /dev/block/mmcblk0p25
	/tmp/alignment/tune2fs -E hash_alg=tea /dev/block/mmcblk0p25
	/tmp/alignment/tune2fs -e continue /dev/block/mmcblk0p25
	/tmp/alignment/e2fsck /dev/block/mmcblk0p25
	/tmp/alignment/e2fsck -yf /dev/block/mmcblk0p25
	/tmp/alignment/e2fsck -p /dev/block/mmcblk0p25
	
	/tmp/alignment/mkfs.ext4 -t ext4 -b 4096 -m 0 -F -L devlog /dev/block/mmcblk0p28
	/tmp/alignment/tune2fs -o journal_data_ordered /dev/block/mmcblk0p28
	/tmp/alignment/tune2fs -E hash_alg=tea /dev/block/mmcblk0p28
	/tmp/alignment/tune2fs -e continue /dev/block/mmcblk0p28
	/tmp/alignment/e2fsck /dev/block/mmcblk0p28
	/tmp/alignment/e2fsck -yf /dev/block/mmcblk0p28
	/tmp/alignment/e2fsck -p /dev/block/mmcblk0p28
	
	/tmp/alignment/mkfs.ext4 -t ext4 -b 4096 -m 0 -F -L devlog /dev/block/mmcblk0p29
	/tmp/alignment/tune2fs -o journal_data_ordered /dev/block/mmcblk0p29
	/tmp/alignment/tune2fs -E hash_alg=tea /dev/block/mmcblk0p29
	/tmp/alignment/tune2fs -e continue /dev/block/mmcblk0p29
	/tmp/alignment/e2fsck /dev/block/mmcblk0p29
	/tmp/alignment/e2fsck -yf /dev/block/mmcblk0p29
	/tmp/alignment/e2fsck -p /dev/block/mmcblk0p29

sync;
rm -r /tmp/alignment;
sync;
