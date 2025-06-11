# 📊 Audiovisual Content Trends Analysis - Data Warehouse Project

## 🧠 Overview

This project implements a **complete decision-support system** aimed at analyzing **trends in audiovisual content consumption** (series, movies, animes) based on user demographic data and platforms. It was developed as part of the **EDD (Entrepôt de Données)** course in the **Master 1 ISII** program at **Université d’Alger 1**.

The architecture follows the standard **ETL + OLAP + BI pipeline**:
- 🔄 **ETL Process** with **Talend**
- 🧱 **OLAP Cube** with **Pentaho Schema Workbench**
- 📊 **Data Visualization** with **Microsoft Power BI**

---

## 🎯 Project Objectives

- Build a structured **data warehouse** with a star schema
- Apply a **robust ETL** pipeline to clean and load data
- Design an **OLAP cube** for multidimensional analysis
- Visualize user behavior and content trends using **Power BI**
- Provide **business insights** for decision-making in the audiovisual industry

---

## 🔧 Tech Stack

| Layer                  | Tools/Technologies                     |
|------------------------|----------------------------------------|
| ETL                   | Talend Open Studio                     |
| Database              | MySQL (via WAMP/XAMPP)                |
| OLAP Cube             | Pentaho Schema Workbench               |
| Visualization         | Microsoft Power BI                     |
| Source Data           | Excel files (raw viewing data)         |
| Modeling              | Star Schema (Fact + Dimension Tables)  |

---

## 🗃️ Data Model

The **star schema** includes:

### Fact Table: `Visionnage`
- `id_visionnage`, `utilisateur_id`, `contenu_id`, `plateforme_id`, `date_id`
- **Measures**: `note`, `duree_visionnage`

### Dimensions:
- **Utilisateur**: nom, âge, sexe, pays
- **Contenu Audiovisuel**: titre, type, genre, langue, date_sortie
- **Plateforme**: nom_plateforme
- **Date**: jour, mois, année, saison

---

## 🔄 ETL Process (Talend)

1. **Extraction**:
   - Load data from Excel (113 rows)
2. **Transformation**:
   - Clean duplicates, enforce types, create metadata
3. **Loading**:
   - Target: MySQL database `visionnageDB_ETL`
   - Tables: dimensions + fact table

---

## 🧱 OLAP Cube (Pentaho)

- **Cube Name**: `Visionnage_Cube`
- Measures: `Durée Visionnage (SUM)`, `Note Moyenne (AVG)`
- Dimensions: Utilisateur, Plateforme, Contenu, Date
- **Tested with MDX Queries**:
  - Top-rated content
  - Viewing duration by platform
  - Average ratings by content type

---

## 📊 Power BI Visualizations

Using the `visionnageDB_ETL` database, we created:

### 📈 Dashboards:
- **Demographic Insights**: Age groups, gender, countries, continents
- **Platform Usage**: Netflix, Prime Video, Crunchyroll, evolution over years
- **Temporal Trends**: Seasonality in viewing behavior
- **Content Preferences**: Genre distribution, most watched, highest-rated
- **Global Dashboard**: Overview KPIs and visual summaries
