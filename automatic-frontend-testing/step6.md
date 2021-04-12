We're finally ready to use `unittest` and Selenium together for real with some interactivity.

Go to `https://testpages.herokuapp.com/styled/key-click-display-test.html` in your own browser and see what it does. Notice that it features a button which will change the HTML by adding a `<p>click</p>`-tag when it's pressed. We want to create automatic tests for checking that this works as intended.

Go to the file `website-test.py` again. Create a new function within the class called `test_button_click()`, in the following way

<pre class="file" data-filename="website-test.py">
def test_button_click(self):
    # Fetches the website
    self.browser.get('https://testpages.herokuapp.com/styled/key-click-display-test.html')
</pre>

Great! Now we need to find the button. Recall that the button has the following HTML

```html
<input id="button" type="button" value="click me" class="styled-click-button">
```

We'll add the following lines in our test

<pre class="file" data-filename="website-test.py">
element = self.browser.find_element_by_id("button")
element.click()
</pre>

which will find the button and click which was explained in step 4.

Remembering the xpath from step 4, we should have a `<p>click</p>`-tag in the xpath `/html/body/div/div[3]/div/p`. So we want to assert if there is a `<p>click</p>` tag at the expected xpath in our browser. Below the `element.click()` line, add the following assertion:

```python
self.assertIn('<p>click</p>', self.browser.find_element_by_xpath("/html/body/div/div[3]/div/p").page_source)
```

Now, run both of the tests in our test class with `python3 website-test.py`{{execute}}. Make sure that they succeed!
