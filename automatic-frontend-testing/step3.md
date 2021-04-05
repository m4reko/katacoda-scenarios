## Python code
Import the Firefox driver
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
options.add_argument('start-maximized')
options.add_argument('disable-infobars')
options.add_argument("--disable-extensions")
driver = webdriver.Chrome(chrome_options=options, executable_path=chrome_path)
#driver = webdriver.Chrome(executable_path=chrome_path)

```

Run the driver
```python
#driver = webdriver.Chrome('/root/chromedriver')
driver.get('https://python.org')
```

Execute the file
`python3 example.py`{{execute}}
