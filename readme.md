# Windows Base Setup

## Description
This puppet manifest purpose is to install basic windows apps using chocolatey packages and set basic parameters.


This manifest was tested using Windows 10 with puppet 5, but should work fine with puppet 6.

## Setup

The setup instructions here are meant for serverless scenarios but also can be used in client-server installations.

### Setup requirements

* puppet-agent 5 - Download and Install Puppet agent 5 from [puppetlabs repository](https://downloads.puppetlabs.com/windows/puppet5/puppet-agent-x64-latest.msi)
* puppetlabs-chocolatey module - Install using puppet module install command

* git - Download and install git for windows from github repository from [git](https://github.com/git-for-windows/git/releases/download/v2.26.2.windows.1/Git-2.26.2-64-bit.exe)



## Usage

1. download this manifest
1. Lanch a terminal windows with admin priviledges
1. cd into this repository folder
1. install required puppetlabs-chocolatey module
1. run puppet agent

Commands:
```
git clone https://github.com/alisio/windows-base.git
cd windows-base
puppet module install puppetlabs-chocolatey
puppet apply site.pp
```

## Limitations

The instructions here are meant for serverless scenario but also can be used in client-server installations.


This module has been tested on:

* Windows 10

## Development

Please follow MIT license guidelines
