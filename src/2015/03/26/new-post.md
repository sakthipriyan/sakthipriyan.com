Title of the post
Sub title of the post
hello, test, webgen

# New Post
## Sub title of the post

Code which i used to print the scores
<pre>```
	import urllib2
	import json
	import time
	score = ''
	while True:
		response = urllib2.urlopen('http://cricscore-api.appspot.com/csa?id=656493')
		data = json.load(response)
		new_score = data[0]['de']
		if(new_score != score):
			print new_score
			score = new_score
		time.sleep(2)
```</pre>
```
	Score here
```