---
# An instance of the Portfolio widget.
# Documentation: https://wowchemy.com/docs/page-builder/
widget: portfolio

# This file represents a page section.
headless: true
active: false

# Order that this section appears on the page.
weight: 40

title: Ressources utiles

subtitle: "Une sélection de ressources utiles pour se former ou se perfectionner à la data-science"

content:
  # Page type to display. E.g. project.
  page_type: course

  # Default filter index (e.g. 0 corresponds to the first `filter_button` instance below).
  filter_default: 0

  # Filter toolbar (optional).
  # Add or remove as many filters (`filter_button` instances) as you like.
  # To show all items, set `tag` to "*".
  # To filter by a specific tag, set `tag` to an existing tag name.
  # To remove the toolbar, delete the entire `filter_button` block.
  filter_button:
    - name: All
      tag: '*'
    - name: Cours
      tag: courses
    - name: Livres
      tag: book
    - name: Vidéos
      tag: videos
    - name: Analyse textuelle
      tag: NLP
    - name: Deep Learning
      tag: Deep Learning
    - name: Big Data
      tag: Big Data
    - name: Visualisation
      tag: Dataviz
    - name: Open Source
      tag: opensource
    - name: Open Data
      tag: opendata
    - name: Made by SSPHub people
      tag: MadeByUs
    - name: Python
      tag: Python
    - name: R
      tag: R

design:
  # Choose how many columns the section has. Valid values: '1' or '2'.
  columns: '2'

  # Toggle between the various page layout types.
  #   1 = List
  #   2 = Compact
  #   3 = Card
  #   5 = Showcase
  view: 3

  # For Showcase view, flip alternate rows?
  flip_alt_rows: false
---
