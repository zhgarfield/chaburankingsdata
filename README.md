# chaburankingsdata 📦

Peer-Ranked Traits and Conflict Resolution in a Small-Scale Society  
Collected as part of the Chabu Leadership Study (2016)

---

## Overview

This R package provides structured data from a 2016 study on leadership, social traits, and conflict resolution among the Chabu—a small-scale society in Southwest Ethiopia.  
The data include peer rankings of community members across various traits (e.g., intelligence, prosociality, aggression) and conflict resolution ability.
---

## Included Datasets

### `chaburankingsdata`

A **wide-format** dataset where each column corresponds to a rater's ranking of individuals on a specific trait. The column names encode:

**Trait_Gender_RaterID_RaterGender**

| Column Example              | Meaning                              |
|----------------------------|--------------------------------------|
| `respect_m_rater1_male`    | Rankings of men on "respect" by male Rater 1 |
| `conflict_f_rater5_female` | Rankings of women on "conflict" by female Rater 5 |
| `prosocial_m_rater7_male`  | Rankings of men on "prosociality" by male Rater 7 |

Each column contains **participant IDs ordered by ranking** (1 = highest rank).  
This format can be reshaped to long format using `tidyverse::pivot_longer()` for modeling.

---

### `chaburankingsmetadata`

A metadata file for participants, including demographic and physical characteristics.

| Variable          | Description                           |
|-------------------|---------------------------------------|
| `id`              | Participant ID (matches ranking columns) |
| `sex`             | Participant sex (`"male"` / `"female"`)        |
| `age_estimated`   | Age in years (estimated)              |
| `age_category`    | Categorical age group (e.g., young adult, adult, elder) |
| `height`          | Height in cm                          |
| `grip_RH`         | Grip strength (right hand)            |
| `grip_LH`         | Grip strength (left hand)             |

These metadata can be merged into the long-format ranking data for multilevel or covariate-adjusted modeling.

---

## Installation

```r
# Install from GitHub (if hosted)
# remotes::install_github("zhgarfield/chaburankingsdata")

