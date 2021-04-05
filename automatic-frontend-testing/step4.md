## Test file
```python
import unittest
from selenium import webdriver
import time
import re
chrome_path = '/root/chromedriver'

from selenium.webdriver.chrome.options import Options
options = Options()
options.add_argument("--headless") # Runs Chrome in headless mode.
options.add_argument('--no-sandbox') # # Bypass OS security model
class TestCase(unittest.TestCase):

    def setUp(self):
        self.browser = webdriver.Chrome(chrome_options=options, executable_path=chrome_path)
        self.addCleanup(self.browser.quit)

    def testPageTitle(self):
        self.browser.get('http://www.google.com')
        self.assertIn('Google', self.browser.title)

if __name__ == '__main__':
    unittest.main(verbosity=2)
```

