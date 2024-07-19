@echo off
REM process: run this, reboot into bios (F2), disable secure boot, run this again, reboot (if desired to re-enable secure boot) into bios again, re-enable secure boot
REM if secure boot is off, you only need to run this once then reboot
REM run as admin
REM disable secure boot in BIOS: (no fn required) F2 -> Boot Configuration -> Disable Secure Boot
manage-bde.exe -protectors -disable C:
bcdedit /set hypervisorlaunchtype off
