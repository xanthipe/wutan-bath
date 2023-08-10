---
layout: page
title: Gallery
permalink: /gallery/
---

# {{ page.title }}

<div class="gallery-wrapper">
{% for photo in site.data.gallery %}
<figure class="gallery-item">
    <div class="gallery-image-bg">
        <img src="{{ site.baseurl }}/assets/photos/gallery/{{photo.name}}" alt="{{photo.description}}">
    </div>
    <figcaption>{{photo.description}}</figcaption>
</figure>
{% endfor %}
</div>