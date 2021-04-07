# Testing out Selenium
We are now finally done with the installations, yay! Now we can begin trying out Selenium.

We first need to create our file. Run `touch website-test.py`{{execute}} and then click on the file `website-test.py` in the editor to start adding code.

## Python code
The first step is to import our dependencies. Type this into the file:

<pre class="file" data-filename="website-test.py">
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
</pre>

We also need to define some options for the web driver. For example, we can't see the browser when it's testing, which is why we're running it in `headless` mode.

<pre class="file" data-filename="website-test.py">
options = Options()
# Runs Chrome in headless mode
options.add_argument("--headless")
# Bypass OS security model; this is needed since we run it in headless mode
options.add_argument('--no-sandbox')
# Define the path to the driver we downloaded
chrome_path = '/root/chromedriver'
# Run the driver with options and the path to the web driver
driver = webdriver.Chrome(options=options, executable_path=chrome_path)
</pre>

Now we're all set! We can try fetching a website by adding the following to the end of the file:

<pre class="file" data-filename="website-test.py">
driver.get('https://testpages.herokuapp.com/styled/key-click-display-test.html')
</pre>
Just to verify for ourselves that the driver managed to fetch the website we can print the page source by adding the following:

<pre class="file" data-filename="website-test.py">
print(driver.page_source)
</pre>

Now we're done with he file! Execute it by typing
`python3 website-test.py`{{execute}}

If you've done everything correctly, this command should print the source of the website we fetched.
