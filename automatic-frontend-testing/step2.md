We are now finally done with the installations, yay! Now we can begin trying out Selenium.

We first need to create our file. Run `touch selenium-test.py`{{execute}} and then click on the file `selenium-test.py` in the editor above.

## Python code
The first step is to import our dependencies. Type this into the file:

<pre class="file" data-filename="selenium-test.py">
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
</pre>

We also need to define some options for the web driver. For example, we can't see the browser when it's testing, which is why we're running it in `headless` mode. Add the following lines below:

<pre class="file" data-filename="selenium-test.py">
options = Options()
# Runs Chrome in headless mode
options.add_argument('--headless')
# Bypass OS security model; this is needed since we run it in headless mode
options.add_argument('--no-sandbox')
# Define the path to the driver we downloaded
chrome_path = '/root/chromedriver'
# Run the driver with options and the path to the web driver
driver = webdriver.Chrome(options=options, executable_path=chrome_path)
</pre>

Now we're all set! We can try fetching a website by adding the following to the end of the file:

<pre class="file" data-filename="selenium-test.py">
driver.get('https://www.google.com')
</pre>

Just to verify for ourselves that the driver managed to fetch the website we can print the page title (the text string showing in the browser tab) by adding the following:

<pre class="file" data-filename="selenium-test.py">
print(driver.title)
</pre>

Now we're done with he file! Execute it by typing
`python3 selenium-test.py`{{execute}}

If you've done everything correctly, this command should print the title of the website we fetched.
