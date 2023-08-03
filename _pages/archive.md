---
layout: page
permalink: /archive/
title: Archive
---

# {{ page.title }}

<div id="archives">
  <section id="search">
    <div id="search-container">
        <input type="text" id="search-input" placeholder="Search...">
        <ul id="results-container"></ul>
    </div>

    <script src="{{ '/assets/simple-jekyll-search.min.js' | relative_url }}" type="text/javascript"></script>

    <script>
        SimpleJekyllSearch({
        searchInput: document.getElementById('search-input'),
        resultsContainer: document.getElementById('results-container'),
        searchResultTemplate: '<div style="text-align: left !important;"><a href="{url}"><h1 style="text-align:left !important;">{title}</h1></a><span style="text-align:left !important;">{date}</span></div>',
        json: '{{ site.baseurl }}/search.json'
        });
    </script>
  </section>
  <section>
    <h4><a href="{{'categories/' | relative_url }}">Search by post category</a></h4>
  </section>
  <section id="archive">
     <h3>Most Recent Posts</h3>
      {%for post in site.posts %}
      {% unless post.next %}
      <ul class="this">
          {% else %}
          {% capture month %}{{ post.date | date: '%B %Y' }}{% endcapture %}
          {% capture nmonth %}{{ post.next.date | date: '%B %Y' }}{% endcapture %}
          {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
          {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
          {% if year != nyear %}
      </ul>
      <h2 style="text-align:left;">{{ post.date | date: '%Y' }}</h2>
      <ul class="past">
          {% endif %}
          {% if month != nmonth %}
          <h3 style="text-align:left;">{{ post.date | date: '%B %Y' }}</h3>
          {% endif %}
          {% endunless %}
          <p><b><a href="{{ post.url | relative_url }}">{% if post.title and post.title != "" %}{{post.title}}{% else %}{{post.excerpt |strip_html}}{%endif%}</a></b>{% if post.date and post.date != "" %} &ndash; {{ post.date | date: "%e %B %Y" }}{%endif%}</p>
          {% endfor %}
      </ul>
    <h3>Oldest Posts</h3>
  </section>
</div>
