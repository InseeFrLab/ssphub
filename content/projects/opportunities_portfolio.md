---
# An instance of the Portfolio widget.
# Documentation: https://wowchemy.com/docs/page-builder/
widget: portfolio

# This file represents a page section.
headless: true
active: true

# Order that this section appears on the page.
weight: 20

title: Projets

subtitle: |
  Une galerie de projets innovants illustrant l'apport de la data-science pour la production statistique.

  N'hésitez pas à utiliser les filtres !

content:
  # Page type to display. E.g. project.
  page_type: project

  # Default filter index (e.g. 0 corresponds to the first `filter_button` instance below).
  filter_default: 0

  count: 10

  # Filter toolbar (optional).
  # Add or remove as many filters (`filter_button` instances) as you like.
  # To show all items, set `tag` to "*".
  # To filter by a specific tag, set `tag` to an existing tag name.
  # To remove the toolbar, delete the entire `filter_button` block.
  filter_button:
    - name: All
      tag: '*'
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
#    - name: Made by SSPHub people
#      tag: MadeByUs
    - name: Insee
      tag: Insee
    - name: DARES (Travail)
      tag: DARES
    - name: DREES (Santé)
      tag: DREES
    - name: DGFIP (Finances)
      tag: DGFIP
    - name: SDES (Ecologie)
      tag: SDES
    - name: SIES (Enseignement Supérieur)
      tag: SIES
    - name: SSMSI (Intérieur)
      tag: SSMSI

design:
  # Choose how many columns the section has. Valid values: '1' or '2'.
  columns: '1'

  # Toggle between the various page layout types.
  #   1 = List
  #   2 = Compact
  #   3 = Card
  #   5 = Showcase
  view: masonry

  # For Showcase view, flip alternate rows?
  flip_alt_rows: false
---

# Galerie des projets

<br>

Une galerie de projets innovants illustrant l'apport de la data-science pour la production statistique.

N'hésitez pas à utiliser les filtres !