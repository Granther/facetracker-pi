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

## Getting Started

### Prerequisites

#### Parts list
* Raspberry pi zero 2w
* Compatible raspberry pi camera. The cameras can be found for cheap on Aliexpress
* 8Gig+ SD card

### Software Installation

1. Install raspberry pi imager on your PC: [here](https://www.raspberrypi.com/software)
2. Insert SD card into PC. Select **'Raspberry Pi Zero 2W'** as the device. **'Raspberry Pi Os (other) > Raspberry Pi OS Lite (64-bit)'** as the OS. And then the SD card as the Storage
3. Hit **'Next -> Edit Settings'**. Changes all these settings to your liking. Ie, device name, password and username you will remember. **!IMPORTANT!** Wifi network must be 2.4Ghz as the Pi zero doesn't support 5Ghz
4. Then go to **'Services'** at the top and enable SSH, check 'Use password authentication'. Now hit **'Save'**, then **'Yes'**
5. Once this is finished insert the SD card into your Pi and plug it into power. Wait a few minutes for the Pi to do its first time boot stuff and connect to your network.
6. SSH into it at the device name and username you put in during setup. This is usually the name plus '.local' (grant@myfacetracker.local). If this does not work you may need to check your router's DHCP leases and find the IP address your pi was given.
   ```
   ssh user@myfacetracker.local
   # OR via Ip
   ssh user@192.168.1.20
   ```
7. Once you are in run the below command. This will execute a script, automatically installing the necassary software
   ```
   curl -s https://raw.githubusercontent.com/Granther/facetracker-pi/master/scripts/install.sh | sudo bash
   ```
8. Now, go to your browser at either the ip address or .local name you used for SSH like so:
   ```
   https://myfacetracker.local
   # Or
   https://192.168.1.20
   ```
9. You should see a webpage with the video feed from the camera. Right click on the image on the website and copy the image link, paste this into your Project Babble camera field. You should see the video feed show up in babble :)

### Hardware 
Ok, I'm not a CAD designer. I used all open & free 3D printable files for my build. I'll leave the Thingiverse links I used here
* [camera arm](https://www.thingiverse.com/thing:5212459)
* [quest3 mount](https://www.thingiverse.com/thing:6780933)
* [pi camera mount](https://www.thingiverse.com/thing:2931401)

### Troubleshooting

[kofi-shield]: https://img.shields.io/badge/-KoFi-black.svg?style=for-the-badge&logo=kofi&colorB=555
[kofi-url]: https://ko-fi.com/granther 
[product-screenshot]: images/screenshot.png

