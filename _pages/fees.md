---
layout: page
title: Fees
permalink: /fees/
---

<div class="jump-menu">
{% for instructors_hash in site.data.instructors %}
<a href="../fees/#{{ instructors_hash[0] }}-fees">{{ instructors_hash[1].name | split: " " | first }}'s classes</a>
{% endfor %}
</div>

# Fees

The first taster session is free.

Please note that in addition to per session costs Wutan has an annual £20 membership fee,
which includes insurance coverage.

{% for instructor_hash in site.data.instructors %}
{% assign instructor = instructor_hash[1] %}
{% if instructor.prices %}
<article>
    <h3 id="{{ instructor_hash[0]}}-fees">{{instructor.name | split: " " | first }}'s classes</h3>
    <div>
        {{ instructor.prices | markdownify }}
    </div>
</article>
<hr>
<a href="../fees/#top">Top</a>
{% if forloop.last == false %}
<hr>
{% endif %}
{% endif %}
{% endfor %}