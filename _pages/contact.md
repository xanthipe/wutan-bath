---
layout: page
title: Contact
permalink: /contact/
---

<div class="jump-menu">
{% for instructors_hash in site.data.instructors %}
<a href="../contact/#{{ instructors_hash[0] }}-contact">{{ instructors_hash[1].name }}</a>
{% endfor %}
</div>

# {{ page.title }}

{{ site.data.page.contact | markdownify }}

{% for instructor_hash in site.data.instructors %}
{% assign instructor = instructor_hash[1] %}
{% if instructor.contact %}
<section>
    <h3 id="{{ instructor_hash[0]}}-contact">{{ instructor.name }}</h3>
    {% if instructor.contact.email %}<p><span class="details-title">Email: </span><a href="mailto:{{ instructor.contact.email }}">{{ instructor.contact.email }}</a></p>{% endif %}
    {% if instructor.contact.phone %}<p><span class="details-title">Phone:</span> <a href="tel:{{ instructor.contact.phone | remove: ' ' }}">{{ instructor.contact.phone }}</a></p>{% endif %}
</section>
<hr>
<a href="../contact/#top">Top</a>
{% if forloop.last == false %}
<hr>
{% endif %}
{% endif %}
{% endfor %}