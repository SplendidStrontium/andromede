#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Paige Krsnak'
SITENAME = 'The Andromede Project Weblog'
SITEURL = 'http://androme.de/blog'
GITHUB_URL = 'http://github.com/splendidstrontium'
PATH = 'content'

TIMEZONE = 'America/New_York'

DEFAULT_LANG = 'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('Pelican', 'http://getpelican.com/'),
         ('Python.org', 'http://python.org/'),
         ('Jinja2', 'http://jinja.pocoo.org/'),
         ('NaN', 'http://nan.nyc/'),)

# Social widget
SOCIAL = (('twitter', 'http://twitter.com/remington_sl3'),
          ('github', 'http://github.com/splendidstrontium'),)

DEFAULT_PAGINATION = False

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = False

# theme
THEME = "themes/simple"

