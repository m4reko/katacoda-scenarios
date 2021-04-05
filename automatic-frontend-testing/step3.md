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
driver = webdriver.Chrome('/root/chromedriver')
driver.get('https://python.org')
```

Execute the file
`python3 example.py`{{execute}}
