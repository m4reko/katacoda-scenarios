We're now ready to do some unit tests with Selenium. We use the same imports as before, but now we've also added the package `unittest`. In the file `website-test.py`, make sure to add the line `import unittest` as we've done below.

```python
import unittest
from selenium import webdriver
chrome_path = '/root/chromedriver'

from selenium.webdriver.chrome.options import Options
options = Options()
options.add_argument("--headless") # Runs Chrome in headless mode.
options.add_argument('--no-sandbox') # # Bypass OS security model
```

Next, we need to add our test class. 
```python
class TestCase(unittest.TestCase):

    def setUp(self):
        # Set up the driver
        self.browser = webdriver.Chrome(options=options, executable_path=chrome_path)
        # Clean up function to be called after each test
        self.addCleanup(self.browser.quit)

    # First test
    def testPageTitle(self):
        # Fetches the website
        self.browser.get('http://www.google.com')
        # Asserts that the string Google is in the title
        self.assertIn('Google', self.browser.title)

if __name__ == '__main__':
    unittest.main(verbosity=2)
```

And now we're done! We can run this program by typing

`python3 website-test.py`{{execute}}

If everything runs correctly, you should have 1 test passing. Try renaming the `Google` string and see if the test passes!

