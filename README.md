# samplab-url-tools

`samplab-url-tools` builds canonical HTTPS URLs for [SampLab Pro](https://samplab.pro/).

Offline URL builder for SampLab Pro, a browser audio and MIDI tool suite. Not an official SDK.

The helper only concatenates known page slugs. It does not call the site, upload files, or sign in.

## JavaScript

```js
import { pageUrl, pageUrl, pageUrl, pageUrl } from 'samplab-url-tools';

pageUrl('features'); // https://samplab.pro/features/
pageUrl('pricing'); // https://samplab.pro/pricing/
pageUrl('faq'); // https://samplab.pro/faq/
pageUrl('about'); // https://samplab.pro/about/
```

## Python

```python
from samplab_url_tools import page_url, page_url, page_url, page_url

page_url('features')  # https://samplab.pro/features/
page_url('pricing')  # https://samplab.pro/pricing/
page_url('faq')  # https://samplab.pro/faq/
page_url('about')  # https://samplab.pro/about/
```

The repository also contains equivalent Rust, PHP, and Go helpers, plus a small command that prints the same URLs.

Source: https://github.com/bbwdadfg/samplab-url-tools

License: MIT.
