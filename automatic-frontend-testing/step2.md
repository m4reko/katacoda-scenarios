## Python code
Import the Firefox driver
```python
    from selenium.webdriver import Firefox
    from selenium import webdriver
    import time
    driver = Firefox()
```

Run the driver
```python
    options = webdriver.ChromeOptions()
    options.add_argument('--ignore-certificate-errors')
    options.add_argument("--test-type")
    options.binary_location = "/usr/bin/chromium"
    driver = webdriver.Chrome(chrome_options=options)
    driver.get('https://python.org')
```

Execute the file
`python3 example.py`{{execute}}

