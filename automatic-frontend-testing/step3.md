## Python code
Import the Chrome driver
```python
from selenium.webdriver import Firefox
from selenium import webdriver
import time
import re
chrome_path = '/root/chromedriver'

from selenium.webdriver.chrome.options import Options

options = Options()
options.add_argument("--headless") # Runs Chrome in headless mode.
options.add_argument('--no-sandbox') # # Bypass OS security model
driver = webdriver.Chrome(chrome_options=options, executable_path=chrome_path)

```

Run the driver
```python
driver.get('https://python.org')
```

Execute the file
`python3 example.py`{{execute}}
