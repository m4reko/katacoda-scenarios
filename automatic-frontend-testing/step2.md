We need a driver 

## Download WebDriver
Get the driver

`wget https://chromedriver.storage.googleapis.com/77.0.3865.40/chromedriver_linux64.zip`{{execute}}

Unzup the file

`unzip chromedriver_linux64.zip`{{execute}}

## Install Google Chrome
Get Google Chrome

`wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`{{execute}}

Unpack file

`dpkg -i google-chrome-stable_current_amd64.deb`{{execute}}

Install file

`apt update && apt-get -f -y install`{{execute}}

## Install selenium 
Install file with `pip`

`pip install selenium`{{execute}}