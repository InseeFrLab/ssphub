---
# An instance of the Pages widget.
# Documentation: https://wowchemy.com/docs/page-builder/
widget: pages

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 35

title: Événements
subtitle: "Les derniers événements :date: organisés ou recommandés sur les sujets _data-science_"

content:
  # Filter on criteria
  filters:
    folders:
      - event
    tag: ''
    category: ''
    publication_type: ''
    author: ''
    exclude_featured: false
    exclude_future: false
    exclude_past: false
  # Choose how many pages you would like to display (0 = all pages)
  count: 5
  # Choose how many pages you would like to offset by
  offset: 0
  # Page order: descending (desc) or ascending (asc) date.
  order: desc

design:
  # Choose a view for the listings:
  view: compact
  columns: '2'
  #background:
  #  color: '#6886bb'
    # Text color (true=light, false=dark, or remove for the dynamic theme color). 
  #  text_color_light: true

---

<div id="observablehq-grid-fbf85711"></div>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@observablehq/inspector@5/dist/inspector.css">
<script type="module">
import {Runtime, Inspector} from "https://cdn.jsdelivr.net/npm/@observablehq/runtime@5/dist/runtime.js";
import define from "https://api.observablehq.com/@linogaliana/calendar@1233.js?v=3";
new Runtime().module(define, name => {
  if (name === "grid") return new Inspector(document.querySelector("#observablehq-grid-fbf85711"));
});
</script>