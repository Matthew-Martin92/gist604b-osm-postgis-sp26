
-- Query 2: Protected  Area by County
-- Purpose: Calculate the total area of protected areas in each county

-- Requirements:
-- - Use adminareas_a for counties (fclass = 'admin_level6')
-- - Use protected_areas_a for protected areas (fclass = 'national_park')
-- - Use ST_Intersects to join protected areas to counties
-- - Use ST_Intersection to clip protected area geometries to county boundaries
-- - Use ST_Area(geom::geography) for accurate measurements on WGS84
-- - Convert square meters to square kilometers (divide by 1,000,000)
-- - Group results by county name
-- - Include geom column for spatial visualization

-- Expected Output:
-- - county_name
-- - protected_area_sq_km
-- - geom

SELECT
    aa.name AS county_name,
    SUM(ST_Area(ST_Intersection(pa.geom, aa.geom)::geography)) / 1000000 AS protected_area_sq_km,
    aa.geom
FROM
    adminareas_a AS aa
JOIN
    protected_areas_a AS pa ON ST_Intersects(aa.geom, pa.geom)
WHERE
    aa.fclass = 'admin_level6'
    AND pa.fclass = 'national_park'
GROUP BY
    aa.name, aa.geom
ORDER BY
    protected_area_sq_km DESC;