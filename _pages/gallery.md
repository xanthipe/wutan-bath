---
layout: page
title: Gallery
permalink: /gallery/
---

# {{ page.title }}

<div class="gallery-wrapper">
{% for photo in site.data.photos %}
<div class="gallery-item">
    <img src="/assets/photos/{{photo.name}}" alt="{{photo.description}}">
    <p>{{photo.description}}</p>
</div>
{% endfor %}
</div>