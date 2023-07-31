---
layout: page
title: About
permalink: /about/
---

<div class="jump-menu">
{% for school_hash in site.data.school %}
<a href="../about/#{{ school_hash[0] }}">{{ school_hash[1].title }}</a>
{% endfor %}
<a href="../about/#lineage">Lineage</a>
{% for skills_hash in site.data.skills %}
<a href="../about/#{{ skills_hash[0] }}">{{ skills_hash[1].title }}</a>
{% endfor %}
</div>

<section>
{% for school_hash in site.data.school %}
{% assign school = school_hash[1] %}
<article>
    <h1 id="{{ school_hash[0] }}">{{ school.title }}</h1>
    <div>
        {{ school.description  | markdownify }}
    </div>
</article>
{% endfor %}
</section>

<section>
<h1 id="lineage">Lineage</h1>
{% for lineage_hash in site.data.lineage %}
{% assign lineage = lineage_hash[1] %}
<article>
    <h2 id="{{ lineage_hash[0]}}">{{ lineage.title }}</h2>
    <div>
        {{ lineage.description  | markdownify }}
    </div>
</article>
{% endfor %}
</section>

<div class="quote">
<blockquote>
&ldquo;It is Grand Master Liu who has given<br />
the light to my art,<br />
It is Master Wu who has added a soul to my art,<br />
It is you will give the life to my art.&rdquo;
<cite><i>The Treasure of Mankind</i>, by They Soon Tuan (Wutan UK)</cite>
</blockquote>
</div>

<section>
<h1 id="arts">Arts</h1>
{% for skills_hash in site.data.skills %}
{% assign skills = skills_hash[1] %}
<article>
    <h2 id="{{ skills_hash[0]}}">{{ skills.title }}</h2>
    <div>
        {{ skills.description  | markdownify }}
    </div>
</article>
{% endfor %}
</section>