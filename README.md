# [Project Title]

**Student:** [YOUR NAME]
**Course:** GIST 604B – Open Source GIS
**Module:** [MODULE NUMBER AND NAME]
**University of Arizona**

## Project Description
[2–3 sentences describing what this project is about and what you built or analyzed.]

## Tools and Technologies
- [Tool 1, e.g. QGIS, PostGIS, GeoPandas, Leaflet]
- [Tool 2]
- [Tool 3]

## What I Did
[3–5 bullet points summarizing the key tasks completed in this assignment.]

## How to View / Run
[Instructions for viewing the project. For example:
- Link to live GitHub Pages site (if applicable)
- How to run a Python script
- How to open the map]

## Repository Structure
[Brief description of folders and key files]


# GIST 604B – OSM & PostGIS

Repository for working with OSM spatial data using PostgreSQL and PostGIS.

## Repository Structure

    .
    ├── .devcontainer/
    │   ├── Dockerfile
    │   └── devcontainer.json
    ├── notebooks/
    │   ├── setup_osm_postgis.ipynb
    │   └── osm_postgis_queries.ipynb
    ├── sql/
    │   └── arizona/
    │       ├── 01_osm_restaurant_distribution.sql
    │       ├── 02_osm_park_area_by_county.sql
    │       ├── 03_osm_restaurants_near_streets.sql
    │       ├── 04_osm_railway_density_by_county.sql
    │       └── 05_osm_county_amenity_synthesis.sql
    ├── src/
    │   └── setup_osm_postgis.py
    ├── docker-compose.yml
    ├── pyproject.toml
    ├── uv.lock
    └── README.md

## Notes

- Notebooks are for exploration and learning.
- sql/arizona folder contains sql scripts discussed in the lectures.
- Data is downloaded and prepared inside the Codespace environment and is not stored in this repository.
- The database runs in a separate PostGIS container using Docker.
