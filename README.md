dotfiles
========

For instructions for setting up VMWare resolution, go here: https://sammart.in/2012/05/29/enabling-resolutions-in-ubuntu-12-04-lubuntu-12-04/
In case the link goes kapoot, steps are reproduced as below:

1. $ gtf 1920 1080 60 | grep Modeline
2. $ xrandr | grep -w connected | awk '{print $1}'
3. sudo vi /usr/share/X11/xorg.conf.d/10-monitor.conf

```
Section "Monitor"
  Identifier "Monitor0"
  <INSERT MODELINE HERE>
EndSection
Section "Screen"
  Identifier "Screen0"
  Device "<INSERT DEVICE HERE>"
  Monitor "Monitor0"
  DefaultDepth 24
  SubSection "Display"
    Depth 24
    Modes "<INSERT MODENAME HERE>"
  EndSubSection
EndSection
```

where
  MODELINE is the whole line from step 1.
  DEVICE is step 2.
  MODENAME is the 2nd word from step 1.

4. Reboot!

If it fails, something went wrong. Reboot to console or Ctrl+Alt+F1 and check the file in step 3. Or just delete the file and stick with "meh" login resolution.

