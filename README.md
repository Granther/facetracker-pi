<a id="readme-top"></a>
[![Ko-Fi][kofi-shield]][kofi-url]
<br />
<h3 align="center">(Lower) Facetracker Pi</h3>
  <p align="center">
    Raspberry Pi Zero 2W + Camera = VR mouth tracker
    <br />
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About The Project

Here's a blank template to get started. To avoid retyping too much info, do a search and replace with your text editor for the following: `github_username`, `repo_name`, `twitter_handle`, `linkedin_username`, `email_client`, `email`, `project_title`, `project_description`, `project_license`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

#### Parts list
* Raspberry pi zero 2w
* Compatible raspberry pi camera. The cameras can be found for cheap on Aliexpress
* 8Gig+ SD card

### Installation

1. Install raspberry pi imager on your PC [here](https://www.raspberrypi.com/software)
2. Insert SD card into PC. Select **'Raspberry Pi Zero 2W'** as the device. **'Raspberry Pi Os (other) > Raspberry Pi OS Lite (64-bit)'** as the OS. And then the SD card as the Storage
3. Hit **'Next -> Edit Settings'**. Changes all these settings to your liking. Ie, device name, password and username you will remember. **!IMPORTANT!** Wifi network must be 2.4Ghz as the Pi zero doesn't support 5Ghz
4. Then go to **'Services'** at the top and enable SSH, check 'Use password authentication'. Now hit **'Save'**, then **'Yes'**
6. Once this is finished insert the SD card into your Pi and plug it into power. Wait a few minutes for the Pi to do its first time boot stuff and connect to your network.
7. SSH into it at the device name and username you put in during setup. This is usually the name plus '.local' (grant@myfacetracker.local). If this does not work you may need to check your router's DHCP leases and find the IP address your pi was given.
   ```
   ssh user@myfacetracker.local
   # OR via Ip
   ssh user@192.168.1.20
   ```
8. Once you are in run the below command. This will execute my script, automatically installing the necassary software
   ```
   curl -s https://raw.githubusercontent.com/Granther/facetracker-pi/master/scripts/install.sh | sudo bash
   ```
9. Now, go to your browser at either the ip address or .local name you used for SSH like so:
   ```
   https://myfacetracker.local
   # Or
   https://192.168.1.20
   ```

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
   ```sh
   git clone https://github.com/github_username/repo_name.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Enter your API in `config.js`
   ```js
   const API_KEY = 'ENTER YOUR API';
   ```
5. Change git remote url to avoid accidental pushes to base project
   ```sh
   git remote set-url origin github_username/repo_name
   git remote -v # confirm the changes
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[kofi-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=kofi&colorB=555
[kofi-url]: https://ko-fi.com/granther 
[product-screenshot]: images/screenshot.png

