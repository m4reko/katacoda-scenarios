# Testing out Selenium
We are now finally done with the installations, yay! Now we can begin trying our Selenium.

We first need to create our file. Run `touch website-test.py`{{execute}} and then click on the file `website-test.py` in the editor above.
## Python code
We first need to import our dependencies. Type this into the file.
<pre><code class="python">
from selenium import webdriver      # Import the driver
chrome_path = '/root/chromedriver'  # Define the path to the driver
from selenium.webdriver.chrome.options import Options
</code></pre>

We also need to define some options. We can't see the browser when it's testing, which is why we're running it in `headless` mode.

<pre><code class="python">
options = Options()
options.add_argument("--headless")      # Runs Chrome in headless mode.
options.add_argument('--no-sandbox')    # Bypass OS security model
driver = webdriver.Chrome(options=options, executable_path=chrome_path) # Run driver
</code></pre>

Now we're all set! We can try fetching a website by typing
<pre><code class="python">
driver.get('https://python.org')
</code></pre>

Now we're done with he file! Execute it by typing
`python3 website-test.py`{{execute}}

If you've done everything correctly, the result of this comment shouldn't output anything.
