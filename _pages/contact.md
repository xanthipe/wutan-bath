---
layout: page
title: Contact
permalink: /contact/
---

<div class="jump-menu" id="contact-jump-menu">
{% for instructors_hash in site.data.instructors %}
<a href="../contact/#{{ instructors_hash[0] }}-contact">{{ instructors_hash[1].name }}</a>
{% endfor %}
</div>

We have a [mailing list](https://landing.mailerlite.com/webforms/landing/{{ site.footer-links.mailerlite }}) and various social accounts for keeping in touch with the club - just click on the links at the bottom of the page.

If you wish to contact our instructors directly, either send us a message via Facebook or see
the contact details below:

{% for instructor_hash in site.data.instructors %}
{% assign instructor = instructor_hash[1] %}
{% if instructor.contact %}
<section>
    <h1 id="{{ instructor_hash[0]}}-contact">{{ instructor.name }}</h1>
    {% if instructor.contact.email %}<p><span class="details-title">Email: </span><a href="mailto:{{ instructor.contact.email }}">{{ instructor.contact.email }}</a></p>{% endif %}
    {% if instructor.contact.phone %}<p><span class="details-title">Phone:</span> <a href="tel:{{ instructor.contact.phone | remove: ' ' }}">{{ instructor.contact.phone }}</a></p>{% endif %}
</section>
<hr>
<a href="../contact/#contact-jump-menu">Top</a>
{% if forloop.last == false %}
<hr>
{% endif %}
{% endif %}
{% endfor %}