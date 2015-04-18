Building a scalable distributed web crawler
which can perform both crawling and data extraction
web crawler, scala, akka, kafka, couchbase, jsoup, big data

###Crawling the Internet
Nothing is new in this task itself. There are lot of tools like [nutch](http://nutch.apache.org/), [crawler4j](https://github.com/yasserg/crawler4j) available for web crawling and data extraction.
The problem lies in the scalability and useablity of the tools.

###Few Goals

* Crawl specified sites and pages.
* Simpler API interface people developing crawler for 
* Ability to scala horizontally by adding more machines.
* Re-extraction of data in case, if few more fields are required.
* Responsive UI.
* Tagging posts.
* List blogs by date.
* Share link over social media.

Initially, I started working with [scala](http://www.scala-lang.org/) [play framework](https://www.playframework.com). I tried various storage systems from file system to couchbase server. Every option had different pros and cons.

###Solution
I was concerned about the server cost and i wanted to reduce the compute time for serving the blog files. So, decided to go for simple file based solution. Here, both source blog markdown as well as generated websites will be set of files. So, webgen has to generate set of html files from set of markdown files.

###Tech stack
1. *[Markdown](daringfireball.net/projects/markdown/)* format is the core of this static **web**site **gen**erator. Easier to create clean html from simple text styles.
2. *HTML5 + CSS3 + Javascript*: Browser can understand only these 3, No escaping right.
3. *Twitter [bootstrap](http://getbootstrap.com/) + [jQuery](https://jquery.com/)*: Bootstrap is one of the awesome reponsive UI library available out there and jQuery is required for few of its functionalities.
4. *[Font-Awesome](http://fortawesome.github.io/Font-Awesome/)* : Just love the font awesome icons over default one that comes along with bootstrap.
5. *[highlight.js](https://highlightjs.org)* : Easily customizable javascript library available for code highlighting.
6. *[Python](https://www.python.org/)* : Moved over to python from jvm langauges, so that i can learn more by using it.
7. *[Jinja2](http://jinja.pocoo.org)* : Really handy html templating library for python. Comparable to one that comes along with django
8. *Python [Markdown](https://pypi.python.org/pypi/Markdown)* package is available in python which generates html out of the markdown text. 

Now, all the components are in place.

###Conclusion
