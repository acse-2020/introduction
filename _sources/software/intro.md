# Software Installation

The ACSE course uses a variety of software. While cloud-based solutions will be made available to you as much as possible, there may be occasions where you wish to install the software on your own computer, either for performance purposes, or to access offline. This section lists the software, and provides links and instructions to install as necessary.

## Microsoft Teams

Microsoft Teams, for lectures & team work can be downloaded [here](https://products.office.com/en-us/microsoft-teams/download-app).

## Anaconda

The Anaconda distribution is a Python distribution with a lot of pre-packaged libraries, including ones not written in pure Python. 
Download and install should be straightforward from [this page](https://www.anaconda.com/products/individual). 
Be careful to select the 64-Bit Python 3.7 version for your OS.

## Chrome or Firefox

While most software and examples will work in any modern browser, including Edge or Safari, we recommend [Chrome](https://www.google.com/chrome/)
or [Firefox](https://www.mozilla.org/en-GB/firefox/new/) to have the most consistent experience.

## Windows Subsystem for Linux (for Windows users)

The [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/about) extends Microsoft Windows by providing an embedded Linux kernel, and simplifies installation of other software such as Docker, as well as providing access to a linux shell. Use of WSL version 2 is highly encouraged for compatibility with Visual Studio Code. Please refer to the [Microsoft Documentation for enabling WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

## Docker

Docker is a containerization software that we will use to distribute some codes that do not natively run on Windows or Macs. 
It can be downloaded from [this page](https://docs.docker.com/docker-for-windows/install/). 
Follow the sign up and installation instructions above. If virtualization has been disabled in your computer's BIOS, you may need to [re-enable it](https://bce.berkeley.edu/enabling-virtualization-in-your-pc-bios.html). This may require rebooting your computer.

## Git (on Windows)

Git is a version control software that will be widely used throughout the course. 
The windows version can be downloaded and installed from [here](https://git-scm.com/download/win). 
If asked for a default text editor and you know none of the options, choose `nano`. Mac OS and Linux machines will typically have `git` preinstalled.

## SSH (on Windows)

The Secure Shell (SSH) is a method to securely access remote computers such as HPC systems. To install OpenSSH:
- Start Settings then go to Apps > Apps and Features > Manage Optional Features.
- Scan this list to see if OpenSSH client is already installed. If not, then at the top of the page select "Add a feature", then locate "OpenSSH Client", then click "Install".
Mac OS and Linux machines will typically have `ssh` preinstalled.

## Visual Studio Code

This lightweight, open source code editor from Microsoft is available [here](https://code.visualstudio.com/). It offers an extensible interface supporting multiple languages and many heavy duty IDE-like features, supported by a wide community. This will be the primary tool used in the course to write standalone Python programs and modules.

## Visual Studio (on Windows)
