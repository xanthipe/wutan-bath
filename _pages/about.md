---
layout: page
title: About
permalink: /about/
---

<section>
{% for about_hash in site.data.about %}
{% assign about = about_hash[1] %}
<article>
    <h1 id="{{ about_hash[0]}}">{{about.title}}</h1>
    <div>
        {{ about.description  | markdownify }}
    </div>
</article>
{% endfor %}
</section>

<section>
<h1>Instructors</h1>

<blockquote>
"It is Grand Master Liu who has given the light to my art,<br />
It is Master Wu who has added a soul to my art,<br />
It is you will give the life to my art."
<br />
<span><i>The Treasure of Mankind</i>, by They Soon Taun (Wutan UK)</span>
</blockquote>

{% for instructor_hash in site.data.instructors %}
{% assign instructor = instructor_hash[1] %}
<article>
    <h2 id="{{ instructor_hash[0]}}">{{instructor.name}}</h2>
    <div>
        {{ instructor.description  | markdownify }}
    </div>
</article>
{% endfor %}