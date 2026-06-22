---
layout: page
title: "MCML AI Day'26 Preparation"
description: "This is a short overview and refresh to the topics LLM lifecycle, inference optimization and world models."
permalink: /heap/ai-day/
tutorial: ai-day
type: index
total_lessons: 5
tags:
  - LLM
  - Inference Optimization
  - World Models
---


<div class="tutorial-detail-nav">
  <a href="{{ site.baseurl }}/heap/ai-day/mission/">Mission</a>
  <a href="{{ site.baseurl }}/heap/ai-day/glossary/">Glossary</a>
  <a href="{{ site.baseurl }}/heap/ai-day/resources/">Resources</a>
  <a href="{{ site.baseurl }}/heap/ai-day/notes/">Notes</a>
</div>

{% assign lessons = site.tutorials | where: "tutorial", "ai-day" | where: "type", "lesson" | sort: "lesson" %}

{% if lessons.size == 0 %}
<p style="color: #999; font-style: italic;">No lessons found yet.</p>
{% endif %}

<ul class="lesson-list">
{% for lesson in lessons %}
<li class="lesson-list-item">
  <a href="{{ lesson.url | relative_url }}">
    <span class="lesson-list-number">{{ lesson.lesson | prepend: "00" | slice: -3, 3 }}</span>
    <span class="lesson-list-title">{{ lesson.title }}</span>
    {% if lesson.tags.size > 0 %}
    <span class="lesson-list-tags">
      {% for tag in lesson.tags %}
      <span class="tutorial-tag tutorial-tag--secondary">{{ tag }}</span>
      {% endfor %}
    </span>
    {% endif %}
  </a>
</li>
{% endfor %}
</ul>