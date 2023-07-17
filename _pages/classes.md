---
layout: page
title: Classes
permalink: /classes/
---

# {{ page.title }}

Bath Wutan offers [Tai Chi](about/#tai-chi) and [Kung Fu](about/#kung-fu) classes that start with [Qigong](about/#qigong). This page is
updated on a regular basis – keep checking back for the latest information. [Prices](#prices) are at the bottom of the page.

{% for day in site.data.classes %}
<section>
    <h2>{{ day.name }}</h2>
    {% for class in day.classes %}
    {% assign instructor = site.data.instructors[class.instructor] %}
        <h3>{{ class.start }} - {{ class.end }} - {{ class.name }}</h3>
        <p><span class="details-title">Instructor: </span>{% if instructor.contact.email %}<a href="mailto:{{ instructor.contact.email }}">{{ instructor.name }}</a>{% else %}{{ instructor.name }}{% endif %}</p>
        {% if instructor.contact.phone %}<p><span class="details-title">Phone:</span> <a href="tel:{{ instructor.contact.phone | remove: ' ' }}">{{ instructor.contact.phone }}</a></p>{% endif %}
        <p><span class="details-title">Location: </span><a href="https://goo.gl/maps/{{ class.map_link }}" target="_blank" alt="Google Maps link">{{ class.location }}</a></p>
        <div>
            {{ class.description  | markdownify  }}
        </div>
    {% endfor %}
</section>
{% endfor %}

# Prices

The first taster session is free.

Please note that in addition to per session costs Wutan has an annual £20 membership fee,
which includes insurance coverage.

{% for instructor_hash in site.data.instructors %}
{% assign instructor = instructor_hash[1] %}
{% if instructor.prices %}
<article>
    <h2 id="{{ instructor_hash[0]}}-prices">{{instructor.name | split: " " | first }}'s classes</h2>
    <div>
        {{ instructor.prices | markdownify }}
    </div>
</article>
{% endif %}
{% endfor %}