---
# An instance of the Portfolio widget.
# Documentation: https://wowchemy.com/docs/page-builder/
widget: portfolio-custom

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 30

title: Articles de blog
subtitle: Sélection des articles de blog les plus récents

content:
  # Filter on criteria
  filters:
    folders:
      - post
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
  view: masonry
  columns: '2'
  flip_alt_rows: true
  #background:
  #  color: '#6886bb'
    # Text color (true=light, false=dark, or remove for the dynamic theme color). 
  #  text_color_light: true
---


# Blog

<br>

Les articles de blog les plus récents

<br>