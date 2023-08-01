---
layout: page
title: Classes
permalink: /classes/
---

<div class="jump-menu">
{% for day in site.data.classes %}
<a href="../classes/#{{ day.name | downcase }}">{{ day.name }}</a>
{% endfor %}
</div>

# {{ page.title }}

Bath Wutan offers [Tai Chi](../arts/#tai-chi) and [Kung Fu](../arts/#kung-fu) classes that start with [Qigong](../arts/#qigong). This page is
updated on a regular basis – keep checking back for the latest information.

{% for day in site.data.classes %}
<section>
    <h2 id="{{ day.name  | downcase }}">{{ day.name }}</h2>
    {% for class in day.classes %}
    {% assign instructor = site.data.instructors[class.instructor] %}
    <div class="class-container">
        <h3>{{ class.start }} - {{ class.end }} - {{ class.name }}</h3>
        <p><span class="details-title">Instructor: </span>{% if instructor.contact.email %}<a href="mailto:{{ instructor.contact.email }}">{{ instructor.name }}</a>{% else %}{{ instructor.name }}{% endif %}</p>
        {% if instructor.contact.phone %}<p><span class="details-title">Phone:</span> <a href="tel:{{ instructor.contact.phone | remove: ' ' }}">{{ instructor.contact.phone }}</a></p>{% endif %}
        <p><span class="details-title">Location: </span><a href="https://goo.gl/maps/{{ class.map_link }}" target="_blank" alt="Google Maps link">{{ class.location }}</a></p>
        <div>
            {{ class.description  | markdownify  }}
        </div>
    </div>
    {% endfor %}
    <hr>
    <a href="../classes/#top">Top</a>
    {% if forloop.last == false %}
    <hr>
    {% endif %}
</section>
{% endfor %}
