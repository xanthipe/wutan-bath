---
layout: page
title: School
permalink: /school/
---

<div class="jump-menu">
{% for school_hash in site.data.school %}
<a href="../school/#{{ school_hash[0] }}">{{ school_hash[1].title }}</a>
{% endfor %}
<a href="../school/#lineage">Lineage</a>
</div>

<section>
{% for school_hash in site.data.school %}
{% assign school = school_hash[1] %}
<article class="clearfix">
    <h1 id="{{ school_hash[0] }}">{{ school.title }}</h1>
    <div>
        {{ school.description  | markdownify }}
    </div>
</article>
<hr>
<a href="../school/#top">Top</a>
{% if forloop.last == false %}
<hr>
{% endif %}
{% endfor %}
</section>

<section>
<h1 id="lineage">Lineage</h1>

{% include quote.html quote="It is Grand Master Liu who has given<br />the light to my art,<br />It is Master Wu who has added a soul to my art,<br />It is you will give the life to my art." source="The Treasure of Mankind" author="They Soon Tuan (Wutan UK)" %}

{% for lineage_hash in site.data.lineage %}
{% assign lineage = lineage_hash[1] %}
<article class="clearfix">
    <h2 id="{{ lineage_hash[0]}}">{{ lineage.title }}</h2>
    <div>
        {{ lineage.description  | markdownify }}
    </div>
</article>
<hr>
<a href="../school/#top">Top</a>
{% if forloop.last == false %}
<hr>
{% endif %}
{% endfor %}
</section>
