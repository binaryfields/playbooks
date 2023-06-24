# README

## Task Structure

- name
- type
- loop
- when
- register
- notify
- ignore_errors

## Hardening 

* Diff

/etc/modprobe.d/dev-sec.conf
/etc/profile.d/pinerolo_profile.sh
/etc/profile.d/tmout.sh
/etc/systemd/coredump.conf.d/custom.conf
/etc/initramfs-tools/modules
/etc/securetty
/etc/pam.d/common-auth
/etc/pam.d/common-password
/etc/pam.d/common-account
/etc/pam.d/common-session
/etc/pam.d/common-session-noninteractive
/etc/login.defs
/etc/ld.so.cache
/etc/sysctl.conf
/etc/security/faillock.conf
/etc/security/limits.d/10.hardcore.conf
/etc/fstab
/usr/share/pam-configs/faillock
/usr/share/pam-configs/faillock_authfail
/usr/share/pam-configs/passwdqc

## Reference

- https://www.vultr.com/docs/how-to-configure-a-debian-11-bullseye-server-with-ansible/
- https://docs.k3s.io/quick-start
- https://github.com/k3s-io/k3s-ansible
- https://github.com/cicdteam/terraform-hcloud-k3s
