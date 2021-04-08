We're finally ready to test this on a real website. 

Go to `https://testpages.herokuapp.com/styled/key-click-display-test.html` in your own browser and see what it does. Notice that it features a button which will change the HTML by adding a `<p>click</p>`-tag when it's pressed. We want to create automatic tests for checking that this works as intended.

Go to the file `website-test.py` again. Create a new function within the class called `testButtonClick()`, in the following way

```python
def testButtonClick(self):
    # Fetches the website
    self.browser.get('https://testpages.herokuapp.com/styled/key-click-display-test.html')
```

Great! Now we need to find the button. In your own browser, right click on the test page and look at the HTML of the website. Notice that it has the following HTML for the button

```html
<input id="button" type="button" value="click me" class="styled-click-button">
```

The button has `id="button"` as an attribute. Selenium can find HTML-tags based on their id:s. Now, in the `testPageTitle()`-function, type

```python 
element = self.browser.find_element_by_id("button")
element.click()
```

which will find the button and click on it.

Remembering the xpath from step 5, we should now have a `<p>click</p>`-tag in the xpath `/html/body/div/div[3]/div/p`. So we want to assert if there is a `<p>click</p>` tag in the expected xpath. Below the `self.browser.get()` line, add the following assertion:

```python
self.assertIn('<p>click</p>', self.browser.find_element_by_xpath("/html/body/div/div[3]/div/p").page_source)
```

Run the tests with `python3 website-test.py`{{execute}}. Make sure that they succeed!


