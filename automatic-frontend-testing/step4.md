# Using some features in Selenium
We're now ready to see what we can do with Selenium. The website `https://testpages.herokuapp.com` has great pages for automatic testing. In this step, we will use the page `https://testpages.herokuapp.com/styled/key-click-display-test.html`. 

In the same file as the previous step, `selenium-test.py`, replace the line `driver.get('http://www.google.com')` with `driver.get('https://testpages.herokuapp.com/styled/key-click-display-test.html')`
## Getting the page title

Add the following line:

```python
print(driver.title)
```

and run the file again with `python3 selenium-test.py`{{execute}}. 

## Getting the page source

Again in the same file, add the line 

```python
print(driver.page_source)
```

and run the file again with `python3 selenium-test.py`{{execute}}. In this case, we get 

## Finding elements by id
Open your browser on your own computer and go to the page `https://testpages.herokuapp.com/styled/key-click-display-test.html` yourself. Inspect the website, and look at the HTML tree of the website.

## Finding elements by `xpath`
