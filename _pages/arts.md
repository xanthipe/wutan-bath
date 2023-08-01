---
layout: page
title: Martial Arts
permalink: /arts/
---

<div class="jump-menu">
{% for skills_hash in site.data.skills %}
<a href="../arts/#{{ skills_hash[0] }}">{{ skills_hash[1].title }}</a>
{% endfor %}
</div>

# {{ page.title }}

<section>
{% for skills_hash in site.data.skills %}
{% assign skills = skills_hash[1] %}
<article class="clearfix">
    <h2 id="{{ skills_hash[0]}}">{{ skills.title }}</h2>
    <div>
        {{ skills.description  | markdownify }}
    </div>
</article>
<hr>
<a href="../arts/#top">Top</a>
{% if forloop.last == false %}
<hr>
{% endif %}
{% endfor %}
</section>