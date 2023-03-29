---
layout: page
title: Contact
permalink: /contact/
---

# {{ page.title }}

We have a [mailing list](https://landing.mailerlite.com/webforms/landing/{{ site.footer-links.mailerlite }}) and various social accounts for keeping in touch with the club - just check out the links at the bottom of the page.

If you want to get in contact more directly, either send us a message via Facebook or get in touch with the appropriate instructor.

## Instructors

{% for instructor_hash in site.data.instructors %}
{% assign instructor = instructor_hash[1] %}
<div class="details-block">
  <h4 class="details-header">{{ instructor.name }}</h4>
  <div class="details-contents">
    <p><span class="details-title">Email: </span>{% if instructor.email %}<a href="mailto:{{ instructor.email }}">{{ instructor.email }}</a>{% else %}N/A{% endif %}</p>
    <p><span class="details-title">Phone: </span>{{ instructor.phone }}</p>
    <p>{{ instructor.description }}</p>
  </div>
</div>
{% endfor %}