---
layout: page
title: Instructors
permalink: /instructors/
---

<div class="jump-menu" id="instructors-jump-menu">
{% for instructors_hash in site.data.instructors %}
<a href="../instructors/#{{ instructors_hash[0] }}">{{ instructors_hash[1].name }}</a>
{% endfor %}
</div>

<section>
{% for instructors_hash in site.data.instructors %}
{% assign instructor = instructors_hash[1] %}
<article>
    <h1 id="{{ instructors_hash[0]}}">{{ instructor.name }}</h1>
    <div>
        {{ instructor.description  | markdownify }}
    </div>
</article>
<hr>
<a href="../instructors/#instructors-jump-menu">Top</a>
{% if forloop.last == false %}
<hr>
{% endif %}
{% endfor %}
</section>