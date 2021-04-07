# Browser
We are mounting this tutorial in a clean Ubuntu installation. We therefore need to get our browser of choice to do the testing in.
## Install Google Chrome
Get Google Chrome

`wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`{{execute}}

Unpack file

`dpkg -i google-chrome-stable_current_amd64.deb`{{execute}}

Install file

`apt update && apt-get -f -y install`{{execute}}

# Web driver
A web driver allows you to use your browser with code. This tool lets us create the automatic testing in Chrome.

## Download WebDriver
Get the driver

`wget https://chromedriver.storage.googleapis.com/89.0.4389.23/chromedriver_linux64.zip`{{execute}}

Unzip the file

`unzip chromedriver_linux64.zip`{{execute}}

# Selenium
Lastly, we need the framework for controlling the web driver. We will use `python` as our language, which has an implementation of Selenium.

## Install Selenium
Install Selenium with `pip`

`pip install selenium`{{execute}}
