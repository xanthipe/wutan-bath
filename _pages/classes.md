---
layout: page
title: Classes
permalink: /classes/
---

# Classes

This page is updated on a regular basis - keep checking back to see what's new. Please note that in addition to per session costs there is an annual £20 membership of Wutan as a whole which also covers insurance.

{% for day in site.data.classes %}
<section>
    <h2>{{ day.name }}</h2>
    {% for class in day.classes %}
    {% assign instructor = site.data.instructors[class.instructor] %}
    <div class="details-block">
        <h4 class="details-header">{{ class.start }} - {{ class.end }} - {{ class.name }}</h4>
        <div class="details-contents">
            <p><span class="details-title">Instructor: </span>{% if instructor.email %}<a href="mailto:{{ instructor.email }}">{{ instructor.name }}</a>{% else %}{{ instructor.name }}{% endif %}{% if instructor.phone %} - {{ instructor.phone }}{% endif %}</p>
            <p><span class="details-title">Location: </span>{{ class.location }}<br /><a href="https://goo.gl/maps/{{ class.map_link }}" target="_blank">Google Maps link</a></p>
            <p>
                {{ class.description }}
            </p>
            <p><span class="details-title">Price per session: </span>{{ class.price }}</p>
        </div>
    </div>
    {% endfor %}
</section>
{% endfor %}