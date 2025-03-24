<a id="readme-top"></a>
[![Ko-Fi][kofi-shield]][kofi-url]
<br />
<h2 align="center">(Lower) Facetracker Pi</h2>
  <p align="center">
    Raspberry Pi Zero 2W + Camera = VR mouth tracker
    <br />
  </p>
</div>

## About The Project
Instructions & Code for a DIY VR face tracker compatible with VRChat. At its core this is a solution for streaming a low-latency video feed to your PC
* *Why a Raspberry pi and not a microcontroller?* Idk, its what I had laying around and its cheap, only $15
* *Will this work with other games?* Yes, it should work with anything Project Babble works for
* *Do I need to know how to code to do this?* No, you don't have to touch any code for this to work

## Getting Started
### Prerequisites
* Raspberry pi zero 2W (Or another single board computer, your milage may vary with others)
* Compatible raspberry pi camera. The cameras can be found for cheap on Aliexpress
* 8Gig+ Micro SD card
* Way to mount this getup to your VR headset, ideally with 3D printed parts
* Some imagination, this won't be perfect

### Software Installation

1. Install [Raspberry Pi Imager](https://www.raspberrypi.com/software), [Project Babble](https://github.com/Project-Babble/ProjectBabble/releases) and [Putty](https://www.putty.org/) on your PC
2. Insert SD card into PC & Open Raspberry Pi Image. Select **'Raspberry Pi Zero 2W'** as the device. **'Raspberry Pi OS (other) > Raspberry Pi OS Lite (64-bit)'** as the OS. And then the SD card as the **'Storage'**
3. Hit **'Next -> Edit Settings'**. Changes all these settings to your liking. Ie, device name, password and username you will remember. **!IMPORTANT!** Wifi network must be 2.4Ghz as the Pi zero doesn't support 5Ghz
4. Then go to **'Services'** at the top and enable SSH, check 'Use password authentication'. Now hit **'Save'**, then **'Yes'**
5. Once this is finished insert the SD card into your Pi and plug it into power. Wait a few minutes for the Pi to do its first time boot stuff and connect to your network.
7. Open Putty enter the device name you put in during setup into the **'Host Name'** field **BUT** add .local to the end (myfacetracker.local). If this does not work you may need to check your router's DHCP leases and find the IP address your pi was given. The prompt for your username and password may or may not show up. Either way just type in your username, hit enter, then your password, hit enter. These are the ones you put in during setup
8. Once you are in run the below command. This will execute a script, automatically installing the necessary software
   ```
   curl -s https://raw.githubusercontent.com/Granther/facetracker-pi/master/scripts/install.sh | sudo bash
   ```
   This script will take between 10-15 mins to run, the package for picamera2 is pretty large 
9. Now, go to your browser at either the ip address or .local name you used **BUT** on port 8000. Make sure you are using **http** and **NOT https** as most browsers will default to https. Like so:
   ```
   http://myfacetracker.local:8000
   # OR
   http://192.168.1.20:8000
   ```
10. You should see a webpage with the video feed from the camera. Right click on the image on the website and copy the image link, open Babble paste this into the camera field. You should see the video feed show up in babble 
   ```
   http://myfacetracker.local:8000/stream.mjpg
   # OR
   http://192.168.1.20:8000/stream.mjpg
   ```
11. Integrate with VRChat. Project Babble has a great document on this: [Document](https://docs.babble.diy/docs/software/integrations/vrc)
12. Done! Go stick your tongue at people!
### Hardware 
I used all open & free 3D printable files for my build. I'll leave the Thingiverse links here
* [camera arm](https://www.thingiverse.com/thing:5212459)
* [quest3 mount](https://www.thingiverse.com/thing:6780933)
* [pi camera mount](https://www.thingiverse.com/thing:2931401)
* [rpi zero 2w case](https://www.thingiverse.com/thing:2488316)

### Contact
Discord: granther

### Troubleshooting
* *I'm having trouble setting up my raspberry pi* --- Check [this](https://www.youtube.com/watch?v=1XteC7M-5jY) video out
* *When I go to the facetracker's website it says its unsafe* --- This is safe, just hit accept. Its your raspberry pi and you trust it. It cannot use HTTPS because Project Babble is not compatible

[kofi-shield]: https://img.shields.io/badge/-KoFi-black.svg?style=for-the-badge&logo=kofi&colorB=555
[kofi-url]: https://ko-fi.com/granther 
