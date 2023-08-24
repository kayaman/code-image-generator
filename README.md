
## Commands

```sh
$ python3 -m venv venv
$ source venv/bin/activate

(venv) python -m pip install Flask playwright Pygments
(venv) python -m playwright install

```

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash


sudo apt install npm

npm install playwright
npx playwright install-deps

```

```python
from playwright.sync_api import sync_playwright
target_url = "https://bookma.rco.sh"
element = "h1"
with sync_playwright() as playwright:
    webkit = playwright.webkit
    browser = webkit.launch()
    browser_context = browser.new_context()
    page = browser_context.new_page()
    page.goto(target_url)
    found_element = page.locator(element)
    text = found_element.text_content()
    browser.close()
```

## References

- https://realpython.com/python-code-image-generator/#project-overview
- https://medium.com/@christyjacob4/using-vscode-remotely-on-an-ec2-instance-7822c4032cff
- https://medium.com/codex/set-up-an-ubuntu-based-ec2-instance-with-a-virtual-python-environment-ae7c434fccc6
- https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html


with sync_playwright() as playwright:
        webkit = playwright.webkit
        browser = webkit.launch()
        browser_context = browser.new_context()
        page = browser_context.new_page()
        page.goto(target_url)
        found_element = page.locator(element)
        text = found_element.text_content()
        browser.close()