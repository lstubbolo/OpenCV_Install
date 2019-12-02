These steps need to be followed in order. 
They are meant to be run on a fresh installation of Raspbian (current version = Buster)
with internet access. 

Run each one as super user. Ex: sudo bash *filename*

NOTE: They may or not be executable - if not use chmod +x *filename*


Some of them may not work right... 

Don't simply re-run a step if it fails- some of them append contents to system files and may screw up your system. 

In other words... LOOK at the given step and see if it has a bit that looks like this '>>'
then go to the file it modifies and remove whatever was put there before rerunning.

If something goes wrong and you have no idea what you are doing it might be better to start over and follow the guide at: 

https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/

