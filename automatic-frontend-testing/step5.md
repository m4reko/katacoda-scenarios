We're now ready to do some unit tests with Selenium. We use the same imports as before, but now we've also added the package `unittest`. This package is the default testing framework for `python` and gives us the tools to create unit test classes and assert that code behaves in the correct way.

Create the file `website-test.py` with `touch website-test.py`{{execute}}. Open the file `website-test.py` and add all dependencies like we did in the step before in `selenium-test.py`. Make sure to add the line `import unittest` this time, as we've done below.

<pre class="file" data-filename="website-test.py">
import unittest
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
</pre>

Next, we need to add our test class which will hold out unit tests as well as a set up function. This is the preferred pattern from the `unittest` package.

<pre class="file" data-filename="website-test.py">
class WebsiteTest(unittest.TestCase):

    def setUp(self):
        options = Options()
        # Runs Chrome in headless mode
        options.add_argument('--headless')
        # Bypass OS security model; this is needed since we run it in headless mode
        options.add_argument('--no-sandbox')
        # Define the path to the driver we downloaded
        chrome_path = '/root/chromedriver'
        # Set up the driver
        self.driver = webdriver.Chrome(options=options, executable_path=chrome_path)

        # Clean up function to be called after each test
        self.addCleanup(self.driver.quit)

if __name__ == '__main__':
    unittest.main()
</pre>

The `setUp()`-method creates our `self.driver` object which will keep the web driver, just as in the last example; `selenium-test.py`. We also call a `addCleanup()`-method with the `driver.quit`-method in the set up process, which makes sure that the driver quits after each test. The last part of the snippet above (the `if` statement) ensures that the default way of executing this file is running the unit tests using the `unittest` package.

We now need to add our test. Below the `setUp()` function on the same indentation level, we add our first test. (**Beware that you can't blindly use the `Copy to Editor` here! You need to manually paste the code snippet where you want it!**):

<pre class="file" data-filename="website-test.py">
    def test_page_title(self):
        # Fetches the website
        self.driver.get('https://testpages.herokuapp.com/styled/key-click-display-test.html')
        # Asserts that the page title is equal to the string 'Keys and Clicks'.
        self.assertEqual('Keys and Clicks', self.driver.title)
</pre>

We can run this test class with our single test by typing

`python3 website-test.py`{{execute}}

If everything runs correctly, you should have 1 test passing. Try changing the `Keys and Clicks` string of the assert and see if the test passes!
