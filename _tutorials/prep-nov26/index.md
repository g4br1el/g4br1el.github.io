---
layout: page
title: "[Nov 26] Numerics for LLM Training"
description: "Twelve lessons on the numerics behind modern LLM training, from float bit layouts and mixed precision to FP8/INT8 quantization, initialization, normalization, NaN debugging and distributed training at scale."
permalink: /heap/nov26
tutorial: prep-nov26
type: index
total_lessons: 12
tags:
  - Numerics
  - Mixed precision
  - FP8
  - Quantization
  - Initialization
  - Normalization
  - FSDP2
---


<div class="tutorial-detail-nav">
  <a href="{{ site.baseurl }}/heap/prep-nov26/mission/">Mission</a>
  <a href="{{ site.baseurl }}/heap/prep-nov26/glossary/">Glossary</a>
  <a href="{{ site.baseurl }}/heap/prep-nov26/resources/">Resources</a>
  <a href="{{ site.baseurl }}/heap/prep-nov26/notes/">Notes</a>
</div>

{% assign lessons = site.tutorials | where: "tutorial", "prep-nov26" | where: "type", "lesson" | sort: "lesson" %}

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