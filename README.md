# Usage:

Create a folder inside your GRUB theme's directory, can be named anything.

Place in folder alongside numbered images in .png format. Images must be zero padded (01, 02, 03, 04...). Up to 99 images are supported.

Ensure the script is executable with `chmod +x ./cycler.sh`

Ensure you have full permissions over your theme folder, use `chown` to set yourself as owner if not.

Set the script to always run on startup with `crontab -e` and add `@reboot **PATH TO CYCLER.SH SCRIPT**` to the bottom of the list.
