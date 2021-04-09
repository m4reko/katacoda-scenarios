## Finding elements by id
Open your browser on your own computer and go to the page `https://testpages.herokuapp.com/styled/key-click-display-test.html` yourself. Inspect the website by right clicking on it, and look at the HTML of the website.

You'll see that it looks something like this:

<pre class="file" data-filename="div.html">
<div id="events">
    <input id="button" type="button" value="click me" class="styled-click-button">
</div>
</pre>

Notice that the button has an id, `id="button"`. We can use this with Selenium to target components on the page, given that they have a unique id. In this case, we would like to click the button. In the `selenium-test.py` file, type

<pre class="file" data-filename="selenium-test.py">
element = driver.find_element_by_id("button")
element.click()
</pre>
And done! We've clicked on the button. Try typing out the `page_source` of the `driver` now.

## Finding elements by `xpath`
Xpath is another way of finding your way around a HTML-document. The xpath relies on the tree structure of the document, compared to the id which relies on the component having a unique name.

Again, go to the same test page as before. If you click the button, you'll notice you get a `<p>`-tag that says _click_. Try finding this `<p>`-tag in the HTML-tree in the inspector.

Now, right click on the `<p>`-tag, and click `Copy XPath` (the text here depends on the browser). You can get relative paths or absolute paths. Hopefully you get one of the paths below

* `/html/body/div/div[3]/div/p`
* `//*[@id="events"]/p`

We wont get into the details of xpaths here, but try to understand why these strings are valid xpaths.
<!-- TODO: add link to xpath reference -->

In the next step, we will use this to create our first test.
