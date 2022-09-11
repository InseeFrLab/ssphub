---
abstract: |

  Food retailers’ scanner data provide unprecedented details on local consumption, provided that product identifiers allow a linkage with features of interest, such as nutritional information.
  
  In this paper, we enrich a large retailer dataset with nutritional information extracted from crowd-sourced and administrative nutritional datasets. To compensate for imperfect matching through the barcode, we develop a methodology to efficiently match short textual descriptions.
  
  After a preprocessing step to normalize short labels, we resort to fuzzy matching based on several tokenizers (including n-grams) by querying an `ElasticSearch` customized index and validate candidates echos as matches with a Levensthein edit-distance and an embedding-based similarity measure created from a siamese neural network model. The pipeline is composed of several steps successively relaxing constraints to find relevant matching candidates.

authors:
- Lino Galiana
- Milena Suarez-Castillo

# Author notes (optional)
author_notes:
  - 'Insee, SSP-Lab'
  - 'Drees, Lab Santé'

doi: "10.1145/3524458.3547244"
featured: true
image:
  caption: "Siamese network performance"
  focal_point: ""
  preview_only: false
links:
- name: Découvrir le travail
  url: https://dl.acm.org/doi/10.1145/3524458.3547244
- name: Oral presentation
  url: https://linogaliana.github.io/relevanc-goodIT22

#projects:
#- RelevanC
tags:
- NLP
- Deep Learning
- RelevanC
publication: ""
publication_short: ""
publication_types:
- "1"
publishDate: "2022-09-08"
summary: |

  Food retailers’ scanner data provide unprecedented details on local consumption, provided that product identifiers allow a linkage with features of interest, such as nutritional information.

  In this paper, we enrich a large retailer dataset with nutritional information extracted from [`Open Food Facts`](https://fr.openfoodfacts.org/data), completed with the [`ANSES Ciqual`](https://ciqual.anses.fr/) dataset. To compensate for imperfect matching through the bar code, we develop a methodology to efficiently match short textual descriptions. After a preprocessing step to normalize short labels, we resort to fuzzy matching based on several tokenizers (including n-grams) by querying an `ElasticSearch` customized index and validate candidates echos as matches with a Levenstein edit-distances. The pipeline is composed of several steps successively relaxing constraints to find relevant matching candidates.

  We finally develop a similarity based on a word embedding obtained by training a Siamese neural network on bar code matches. This alternative measure is used to evaluate our final matching.

title: "Fuzzy matching on big-data (ACM GoodIT'22 Proceedings)"
url_pdf: "https://dl.acm.org/doi/pdf/10.1145/3524458.3547244"
url_slides: https://linogaliana.github.io/relevanc-goodIT22
external_link: https://dl.acm.org/doi/10.1145/3524458.3547244
---
