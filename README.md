# OSM & PostGIS

**Student:** Matthew Martin  
**Course:** GIST 604B – Open Source GIS  
**Module:** Module 5: OSM & PostGIS Spatial Analysis  
**University of Arizona**

## Project Description
This project uses PostGIS and Open Street Map data along with sql queries to apply real world workflows on the Open Street Map data. I created 3 new queries for a location of my choice - Southern California. These queries will find and visualize the following:  
- Post office Distribution
- Protected area by county
- Number of fuel options near highways

## Tools and Technologies
- PostGIS SQL
- Open Street Map Data
- Jupyter Notebooks
- MatLibplot

## What I Did
- Completed notebooks on building queries to pull Open Street Map Data for the example area of Arizona
- Created 3 new queries that will find data of my choice in a new study area of my choice (Southern California)
- Downloaded data from Open Street Map for Southern California
- Created a new Jupyter Notebook to run the workflow that executes and visualizes my queries

## How to View / Run
-Open Repository in codespaces
- Set Up PostgreSQL environment by running setup python file in src folder
- Run code in notebooks to exeecute the queries

## Repository Structure
Demos of Arizona studey area include the osm_postgis_queries and arizona sql folder. I created a new set of 3 queries for Southern California, located in the sql/california folder. The osm_postgis_california notebooks runs the 3 queries and visualizes the data.



## Repository Structure

    .
    ├── .devcontainer/
    │   ├── Dockerfile
    │   └── devcontainer.json
    ├── notebooks/
    │   ├── setup_osm_postgis.ipynb
    │   ├── osm_postgis_california.ipynb
    │   └── osm_postgis_queries.ipynb
    ├── sql/
    │   └── arizona/
    │       ├── 01_osm_restaurant_distribution.sql
    │       ├── 02_osm_park_area_by_county.sql
    │       ├── 03_osm_restaurants_near_streets.sql
    │       ├── 04_osm_railway_density_by_county.sql
    │       └── 05_osm_county_amenity_synthesis.sql
    │   └── california/
    │       ├── query1_socal_post_distribution.sql
    │       ├── query2_protected_area_by_county.sql
    │       └── query3_fuel_near_highways.sql
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
