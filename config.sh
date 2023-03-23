#!/bin/bash

# แก้ไขไฟล์การกำหนดค่า SSH
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# บันทึกการเปลี่ยนแปลง
systemctl restart ssh

# ตั้งค่ารหัสผ่านของบัญชี root
passwd root

echo "SSH has been configured to allow root login from $ip
