
WITH gas_stations AS (
    SELECT
        geom
    FROM
        traffic
    WHERE
        fclass = 'fuel'
)

SELECT
    rds.name AS highway_name,
    COUNT(DISTINCT gs.geom) AS nearby_gas_count,
    ST_Union(rds.geom) AS geom
FROM
    roads AS rds
JOIN
    gas_stations AS gs ON ST_DWithin(gs.geom::geography, rds.geom::geography, 402)
WHERE
    rds.name IS NOT NULL
    AND (rds.fclass = 'motorway' OR rds.fclass = 'trunk')
GROUP BY
    rds.name
HAVING
    COUNT(DISTINCT gs.geom) > 10
ORDER BY
    nearby_gas_count DESC;