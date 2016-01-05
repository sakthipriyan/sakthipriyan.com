# Experiment with Raspberry Pi
## How I turned it to a electricity monitor, tweetbot and downloader.
raspberry pi, tweetbot, kuralbot, powerbot, downloader, youtube, torrent, python

### Beginning
I read about Raspberry Pi first in early Q4, 2012.
At that time, I didn't find a real need to use GPIOs.
Few weeks later I was totally feed up with the power cuts in my hometown.
Worse, I couldn't figure out if the situation is improving or not.
Also, I needed a mechanism to systematically record the ON/OFF data, so that it can be analysed.

### Set up

### Projects on Raspberry Pi


### Tweetbot
#### Powerbot
[Powerbot](https://twitter.com/powerbot_tn)

#### Kuralbot
The [Tirukkural](https://en.wikipedia.org/wiki/Tirukku%E1%B9%9Ba%E1%B8%B7) is a classic [Tamil](https://en.wikipedia.org/wiki/Tamil_language) [sangam literature](https://en.wikipedia.org/wiki/Sangam_literature) consisting of 1330 couplets or [Kurals](https://en.wikipedia.org/wiki/Kural).  
Initially, I planned to build an Android Widget. But, decided to make a tweet bot.  
I wrote an [Tirukkural Tweetbot](https://github.com/sakthipriyan/tirukkural) in Python, which tweeted from the Raspberry Pi.



Now it is running from cloud instance [Kural Tamil](https://twitter.com/kural_ta) and [Kural English](https://twitter.com/kural_en).

### Downloader
Since, my Raspberry Pi is running 24 x 7, without any power interruption, it  became my low cost downloader box.

#### Torrent downloader
Torrent is the most popular distributed download mechanism available. [Transmission](http://www.transmissionbt.com/) bit torrent client can be set up in a Raspberry Pi. Three steps to set up and use Transmission BT,

* Install Transmission bt on Raspberry Pi.
* Configure the username/password and IP restrictions.
* Access the Transmission bt web console from your laptop/desktop/mobile/tablet or even another Raspberry Pi on the same network.

For me it is at `http://192.168.0.2:9091/transmission/web/`

#### Youtube downloader
[youtube-dl](https://rg3.github.io/youtube-dl/) is a command line utility to download videos from variety of video platforms like Youtube.

    youtube-dl "https://www.youtube.com/watch?v=Zc54gFhdpLA"

Above command will store the video in the given link to `Zc54gFhdpLA.mp4` file. Really helpful, if you are planning to have offline access to specific videos.  
*Warn*: Before downloading any video content, please verify the terms and conditions of the video publisher and the video platform.

#### Wget downloader
[wget](https://www.gnu.org/software/wget/) is a simple utility to download specific URLs.

    wget "http://sakthipriyan.com" -qO index.html

Above command will download the given URL and store it in a `index.html` file.
Useful, if you are downloading a large file with slower download speed.

### Cost Analysis

#### Capital cost

#### Running cost
* I am using a 5v, 700mA Saymsung charger to power the Raspberry Pi.
* It consumes about 5Wh of Power.
* So, 200 hours of running will consume 1 Unit (1000Wh).
* In a two month billing cycle, it uses approximately 7.2 units.
* Last electricity bill, we were charged INR 2.52 per unit.
* So, running cost is INR 18.14 for two months.
* For past three years, I had spend INR 326.59 or USD 4.93 at ( 1USD = 66.23INR ).
This is 18x cheaper than the cost of smallest cloud instance on  [vultr](https://www.vultr.com/pricing/).
Takes this lazy calculation with a pinch of salt as capital cost is not involved.

#### Overall

### Footnote
Once the power situation improved, I ignored the Powerbot.  
It running erratically past few months.
Initially postponed the visualization

### Next
I will be writing about a 4 node Raspberry Pi 2 cluster.
