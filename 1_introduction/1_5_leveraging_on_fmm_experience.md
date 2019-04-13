##  1_5 Leveraging on FMM Experience <a href="README.md">&#8592;</a><br>

**(i) Quick FMM landscape**

*Some critics*
- FMM has been living in "fat cow" era tremendous amount of means (money, people, indulgence, advantages...) hopefully the company is entering in a thin cow era.

- There is very talented expert people but too much complexity in processes
It is very heavy organization, pyramidal with at the top people absolutely unaware of the changing in media consumption.

- The stakeholders (marketing, editorial, technicals) suffering of a lot of misunderstanding, most of them ignore what are doing the other.

- Strong aversion to change.

- Fear of failure.

*Some compliments*
- There is an obvious desire to reform the way the digital direction works.
- We try to package feature team on dedicated project.
- We have adopted scrum agile methodology.
- Things are getting better.
- Decision making is become more horizontal, teams become more autonomous and mature but the bad habits are sometime emerging in crisis situation e.g. 

**(ii) Concretely**
- Coming from Drupal
- API centric
- Rebuild most in Symfony (PHP Framework) both for front-end and back-end

**(iii) Recommendations for ZNBC**
**Using WP remain a good choice, excellent learning curb, many implicit advantages.**

- Buying theme is good starter.
Think mobile first
Benchmark other WP websites aof other news websites
Prospect news source audiences and always goes for quick win.

- Implement Continuous integration (testing, staging and production)
Define few KPI and improve performance on it
Avoid complexity between all the stakeholders, choose SMART objectives.

- Do not tweaking your purchased WP theme.
Testing and developing your own plugins to extend features is better than twisting WP with existing WP plugins (semi-advanced)

**(iv) Audit ffrom the current website (AUDIT V2 znbc.co.zm)**
**Some elements from the audit of the website, Here is a quick start for the audit of the website view-source:https://www.znbc.co.zm/**

**1. The theme @ 20/03/19**
view-source:https://www.znbc.co.zm/
- ZNBC.CO.ZM has change the WP theme paper from https://themeforest.net/user/tagdiv for vidorev (https://themeforest.net/item/vidorev-video-wordpress-theme/21798615)
demo @ http://demo.beeteam368.com/vidorev/


**2. Plugin list @ 20/03/19**
From what I saw from the source code
Here is the non-definitive list of plugins used in znbc.co.zm

- ZNBC.CO.ZM has removed event-aggregator, revslider
https://www.znbc.co.zm/wp-json/tribe/events/v1
Source: https://theeventscalendar.com/product/wordpress-events-calendar/

**Plugins used :**

- cmb2
https://wordpress.org/plugins/cmb2/

- mediaelement
https://wordpress.org/plugins/media-element-html5-video-and-audio-player/

- menu-icons
https://wordpress.org/plugins/menu-icons/

- buddypress
https://wordpress.org/plugins/buddypress/

- post-views-counter
https://wordpress.org/plugins/post-views-counter/

- social-counter
https://wordpress.org/plugins/accesspress-social-counter/

- tf-numbers-number-counter-animaton
https://wordpress.org/plugins/tf-numbers-number-counter-animaton/

- weather-atlas
https://wordpress.org/plugins/weather-atlas/

- yet-another-stars-rating
https://wordpress.org/plugins/yet-another-stars-rating/

- wp-pagenavi
https://wordpress.org/plugins/wp-pagenavi/

You may have also all the vidorev-extensions requierd by the the theme

**3. API**<br>
API activated Check https://www.znbc.co.zm/wp-json/

``` json
"cmb2/v1",
"oembed/1.0",
"post-views-counter",
"themeisle-sdk/v1", 
"wp/v2"
```

**4. Robots**<br>
view-source:https://www.znbc.co.zm/robots.txt
``` text
User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Basic Robots.txt implemeted
```

**5. Sitemap**<br>
No sitemap https://www.znbc.co.zm/sitemap.xml


**6. Cache**<br>
No cache enabled for instance via supercache

**7. Categories editorial**<br>
Check the categories at https://www.znbc.co.zm/wp-json/wp/v2/categories

``` text
#technical categories
"Ads",
"Global",

#editorial categories
"Agriculture",
"Business",
"Culture",
"Education",
"Entertainment",
"Fashion &amp; LifeStyle",
"Featured",
"Health",
```

**8. Fonts**<br>
Usage of google fonts, related ot the theme
You are using some Google fonts for

- from fonts.googleapis.com
``` html
https://fonts.googleapis.com/css?family=Open+Sans
https://fonts.googleapis.com/css?family=Open+Sans:300,400&subset=cyrillic,greek,latin-ext
https://fonts.googleapis.com/css?family=Oswald
https://fonts.googleapis.com/css?family=Poppins%3A400%2C500%2C700
https://fonts.googleapis.com/css?family=Roboto%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CRoboto+Slab%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7COswald%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic
```

- from fonts.gstatic.com: opensans/v15, oswald/v16
``` html
<!-- opensans/v15 -->
https://fonts.gstatic.com/s/opensans/v15/mem8YaGs126MiZpBA-UFVZ0bf8pkAg.woff2

<!-- oswald/v16 -->
https://fonts.gstatic.com/s/oswald/v16/TK3hWkUHHAIjg75-6hwTus9CAZek1w.woff2
https://fonts.gstatic.com/s/oswald/v16/TK3hWkUHHAIjg75-ohoTus9CAZek1w.woff2
https://fonts.gstatic.com/s/oswald/v16/TK3hWkUHHAIjg75-xhsTus9CAZek1w.woff2
https://fonts.gstatic.com/s/oswald/v16/TK3iWkUHHAIjg752GT8Gl-1PKw.woff2
```









