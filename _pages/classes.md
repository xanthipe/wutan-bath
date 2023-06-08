---
layout: page
title: Classes
permalink: /classes/
---

# {{ page.title }}

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
            <p><span class="details-title">Location: </span><a href="https://goo.gl/maps/{{ class.map_link }}" target="_blank" alt="Google Maps link">{{ class.location }}</a></p>
            <div>
                {{ class.description  | markdownify  }}
            </div>
            <p><span class="details-title">Price per session: </span>{{ class.price | markdownify | remove: '<p>' | remove: '</p>' }}</p>
        </div>
    </div>
    {% endfor %}
</section>
{% endfor %}