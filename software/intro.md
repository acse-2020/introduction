# Software Installation

The ACSE course uses a variety of software. While cloud-based solutions will be made available to you as much as possible, there may be occasions where you wish to install the software on your own computer, either for performance purposes, or to access offline. This section lists the software, and provides links and instructions to install as necessary.

Users of the course Azure Labs systems have this software suite available by default.

## Microsoft Teams

Microsoft Teams, for lectures & team work can be downloaded [here](https://products.office.com/en-us/microsoft-teams/download-app).

## Anaconda

The Anaconda distribution is a Python distribution with a lot of pre-packaged libraries, including ones not written in pure Python. 
Download and install should be straightforward from [this page](https://www.anaconda.com/products/individual). 
Be careful to select the 64-Bit Python 3.8 version for your OS.

Once Anaconda is installed, you may wish to install a suite of supporting packages which are used by course notebooks. Most of these are available through the conda package system, a few require installing using the python 'pip' installer. At a command prompt with conda and pip enabled (on Windows type 'anaconda prompt' into the search box, on Mac open the Terminal app from Applications/Utilities) enter the following commands:

```
conda config --append channels conda-forge
conda config --append channels pytorch
conda config --append channels sepandhaghighi
conda install jupyterhub pamela ipykernel notebook ipywidgets nbformat nbconvert ipyparallel toolz bokeh dask distributed pandas pandas-datareader scikit-learn scikit-image snakeviz ujson s3fs fastparquet dask-ml graphviz partd seaborn pytables cachey pytorch torchvision pycm
pip install okpy livelossplot mpltools
```

Some users have reported issues with installing graphviz from the above command set on OS X, with graphviz installs conflicting with a pre-installed sphinx package. If you see errors from installing graphviz, try:

```
conda uninstall sphinx
conda install graphviz
```

## Chrome or Firefox

While most software and examples will work in any modern browser, including Edge or Safari, we recommend [Chrome](https://www.google.com/chrome/)
or [Firefox](https://www.mozilla.org/en-GB/firefox/new/) to have the most consistent experience.

## Windows Subsystem for Linux (for Windows users)

The [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/about) extends Microsoft Windows by providing an embedded Linux kernel, and simplifies installation of other software such as Docker, as well as providing access to a linux shell. Use of WSL version 2 is highly encouraged for compatibility with Visual Studio Code. Please refer to the [Microsoft Documentation for enabling WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10), a summary of which is:

* Click **Start**, type **PowerShell**, right-click **Windows PowerShell**, and then click **Run as administrator**. Note that you may have more than one option for running PowerShell, and should select **Windows PowerShell** without 'ISE', 'ISE (x86)' or '(x86)' suffixes.
* Enter the following commands:
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
* Restart your system

If you are already using WSL1 and want to make WSL2 the default for new images (this may be necessary for later Docker/Visual Studio Code requirements) follow instructions from the [documention by Microsoft to change the default WSL version](https://docs.microsoft.com/en-us/windows/wsl/install-win10#set-wsl-2-as-your-default-version). This will also be necessary if you are running an version of Windows 10 prior to 20.04 (WSL2 is supported on 19.03 and 19.09).

Once WSL2 is installed, it is recommended to follow on by installing a Linux distribution such as [Ubuntu from the Microsoft Store](https://www.microsoft.com/en-gb/p/ubuntu-2004-lts/9n6svws3rx71).

Once you have completed the installs, you can confirm that WSL2 is enabled and used for Ubuntu by running the following powershell command:

```
wsl -l -v
```

which should return a line similar to:

```
  NAME            STATE           VERSION
* Ubuntu-20.04    Stopped         2
```


## Docker

[Docker](https://www.docker.com/products/docker-desktop) is containerization software that we will use to distribute some codes that do not natively run on Windows or Macs.

Windows users are recommended to [install Docker using the WSL2 backend](https://docs.docker.com/docker-for-windows/wsl/), noting the prerequisites detailed on that page (Windows10 19.03 or later, WSL2 , linux kernel upgrade applied).

If virtualization has been disabled in your computer's BIOS, you may need to [re-enable it](https://bce.berkeley.edu/enabling-virtualization-in-your-pc-bios.html). This may require rebooting your computer. If you are running on a cloud system which is itself virtualised, make sure you are using an instance with 'nested virtualisation' enabled.


## SSH (on Windows)

The Secure Shell (SSH) is a method to securely access remote computers such as HPC systems. To install OpenSSH:
- Start Settings then go to Apps > Apps and Features > Manage Optional Features.
- Scan this list to see if OpenSSH client is already installed. If not, then at the top of the page select "Add a feature", then locate "OpenSSH Client", then click "Install".
Mac OS and Linux machines will typically have `ssh` preinstalled.

## Visual Studio Code

This lightweight, open source code editor from Microsoft is available [here](https://code.visualstudio.com/). It offers an extensible interface supporting multiple languages and many heavy duty IDE-like features, supported by a wide community. This will be the primary tool used in the course to write standalone Python programs and modules.

Before install Visual Studio Code on Windows, it is highly recommended to have set up WSL2, Ubuntu, and Docker Desktop. If you have completed these steps, Visual Studio Code will automatically prompt you to use WSL2 as a back-end for development during the install process. You should also be prompted to install the WSL2 backend extension after Visual Studio Code runs for the first time. If you already have Visual Studio Code installed, you should [refer to the WSL2 extension documentation here](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl).

## Git (on Windows)

Git is a version control software that will be widely used throughout the course. The windows version can be downloaded and installed from [here](https://git-scm.com/download/win). 

Git requires a text editor to be selected at runtime. It is recommended that you already have Visual Studio Code installed and choose this as the default editor. Otherwise, if you are asked for a default text editor and you know none of the options, choose `nano`. 

Mac OS and Linux machines will typically have `git` preinstalled.

