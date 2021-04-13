We're finally ready to use `unittest` and Selenium together for real with some interactivity.

Go to `https://testpages.herokuapp.com/styled/key-click-display-test.html` in your own browser and see what it does. Notice that it features a button which will change the HTML by adding a `<p>click</p>`-tag when it's pressed. We want to create automatic tests for checking that this works as intended.

Go to the file `website-test.py` again. Create a new function within the class called `test_button_click()`, in the following way

<pre class="file" data-filename="website-test.py">
    def test_button_click(self):
        # Fetches the website
        self.driver.get('https://testpages.herokuapp.com/styled/key-click-display-test.html')
</pre>

Great! Now we need to find the button. Recall that the button has the following HTML

```html
<input id="button" type="button" value="click me" class="styled-click-button">
```

We'll add the following lines in our test

<pre class="file" data-filename="website-test.py">
        button_element = self.driver.find_element_by_id("button")
        button_element.click()
</pre>

which will find the button and click which was explained in step 4.

Remembering the `xpath` from step 4, we should have a `<p>click</p>`-tag at the `xpath` `/html/body/div/div[3]/div/p`. We want to assert if there is a `<p>click</p>` tag at the expected `xpath` in our page source. To do this we first need to add the following line to our imports:

<pre class="file" data-filename="website-test.py">
from selenium.common.exceptions import NoSuchElementException
</pre>

The, below the `element.click()` line, add the following assertion that checks that the `<p>`-tag exists:

<pre class="file" data-filename="website-test.py">
        try:
            # Try finding the element
            click_element = self.driver.find_element_by_xpath('/html/body/div/div[3]/div/p')
        except NoSuchElementException:
            # Fail the test if it does not exist
            self.fail()
</pre>

We also want to assert that it contains the string `click` which we can do with the following line:

<pre class="file" data-filename="website-test.py">
        # Extract the text from the p-tag and assert that it's 'click'
        self.assertEqual('click', click_element.text)
</pre>

Now, run both of the tests in our test class with `python3 website-test.py`{{execute}}. Make sure that they succeed! You can also try removing the line `element.click()` and verify that the test fails.
