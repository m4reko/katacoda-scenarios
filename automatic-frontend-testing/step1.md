We need a driver 

## Download WebDriver
`wget https://chromedriver.storage.googleapis.com/77.0.3865.40/chromedriver_linux64.zip`{{execute}}
`unzip chromedriver_linux64.zip`{{execute}}

## Install Google Chrome
`wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`{{execute}}

`dpkg -i google-chrome-stable_current_amd64.deb`{{execute}}

`apt update && apt-get -f -y install`{{execute}}

## Install WebDriver
We will use Python to run Selenium.
## Install selenium 
`pip install selenium`{{execute}}