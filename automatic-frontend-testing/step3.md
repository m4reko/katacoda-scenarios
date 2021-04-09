We're now ready to see what we can do with Selenium. The website `https://testpages.herokuapp.com` has great pages for trying out automatic testing. In this step, we will use the page `https://testpages.herokuapp.com/styled/key-click-display-test.html`.

In the same file that we used in the previous step, `selenium-test.py`, replace the line `driver.get('https://www.google.com')` with `driver.get('https://testpages.herokuapp.com/styled/key-click-display-test.html')`

## Getting the page title and URL

Add the following line:

<pre class="file" data-filename="selenium-test.py">
print(driver.title)
print(driver.url)
</pre>

and run the file again with `python3 selenium-test.py`{{execute}}.

## Getting the page source

We touched upon this a bit in the step before, but now we're doing it again. You can view the entire inner HTML by calling `driver.page_source`. Again in the same file, add the line

<pre class="file" data-filename="selenium-test.py">
print(driver.page_source)
</pre>

and run the file again with `python3 selenium-test.py`{{execute}}. In this case, we get <!-- TODO: continue -->
