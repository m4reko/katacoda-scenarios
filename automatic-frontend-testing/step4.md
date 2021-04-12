## Finding elements by id
Open the browser on your own computer and go to the page `https://testpages.herokuapp.com/styled/key-click-display-test.html`. Inspect the website by using the developer tools for your browser of choice.

You'll see that there is a part that looks something like this:

```html
<div id="events">
    <input id="button" type="button" value="click me" class="styled-click-button">
</div>
```

Notice that the button has an id, `id="button"`. We can use this with Selenium to target components of the page, given that they have a unique id. In this case, we would like to click the button. In the `selenium-test.py` file, type

<pre class="file" data-filename="selenium-test.py">
element = driver.find_element_by_id("button")
element.click()
</pre>

And done! We've clicked the button. Try printing the `page_source` of the `driver` after the button was clicked and see that it changed accordingly.

## Finding elements by `xpath`
`xpath` is another way of finding your way around a HTML-document. Finding elements by `xpath` relies on the tree structure of the document, compared to finding by id which relies on the component having a unique id.

Again, go to the same test page as before. If you click the button, you'll notice you get a `<p>`-tag that says _click_. Try finding this `<p>`-tag in the HTML-tree in the inspector.

Now, if you are using any of the larger browsers you can right click on the `<p>`-tag, and choose `Copy XPath` (the exact text here depends on the browser). In some browsers you can choose between relative or absolute paths. Hopefully you get one of the paths below

* `/html/body/div/div[3]/div/p`
* `//*[@id="events"]/p`

We wont get into the details of `xpath` here, but try to understand why these strings are valid `xpath`s. [Here](https://en.wikipedia.org/wiki/XPath) is a link to the wikipedia article on `xpath`s and [here](https://devhints.io/xpath) is a link to a more concrete cheat sheet to help you understand them a bit better.

In the next step, we will use this to create our first test.
