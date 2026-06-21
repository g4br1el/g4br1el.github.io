---
layout: page
title: Tutorials
permalink: /heap/
sitemap: false
---


<strong>About this section.</strong> I use LLMs as accelerated learning partners to build structured, in-depth tutorials on topics I'm actively working with. The content is AI-generated, then validated and corrected against official documentation, source code, and hands-on experimentation.

LLMs hallucinate — that's a feature of the workflow, not a bug. Having the domain expertise to <em>identify and fix</em> incorrect claims is precisely what makes this approach effective. If you lack the background to spot errors, LLM-generated material is dangerous. If you have it, the learning velocity is unmatched.


{% assign tutorial_indexes = site.tutorials | where: "type", "index" %}

{% if tutorial_indexes.size == 0 %}
<p style="color: #999; font-style: italic;">No tutorials found. Check that <code>_tutorials/</code> exists and <code>_config.yml</code> has the collection defined with <code>output: true</code>.</p>
{% endif %}

<div class="heap-index">
{% for tut in tutorial_indexes %}
  {% assign lessons = site.tutorials | where: "tutorial", tut.tutorial | where: "type", "lesson" | sort: "lesson" %}
  <div class="tutorial-card">
    <h3><a href="{{ tut.url | relative_url }}">{{ tut.title }}</a></h3>
    <p class="tutorial-card-desc">{{ tut.description }}</p>
    <div class="tutorial-card-meta">
      <div class="tutorial-card-tags">
        {% for tag in tut.tags %}
        <span class="tutorial-tag tutorial-tag--secondary">{{ tag }}</span>
        {% endfor %}
      </div>
    </div>
  </div>
{% endfor %}
</div>