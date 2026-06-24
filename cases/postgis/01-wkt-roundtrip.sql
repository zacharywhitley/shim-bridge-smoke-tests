-- All queries return 1 on success, 0 on failure. Output
-- format (integers, one per line) is identical between
-- SQLite's `.mode list` and DuckDB's `.mode csv`.

SELECT CASE WHEN octet_length(ST_GeomFromText('POINT(1 1)')) = 21 THEN 1 ELSE 0 END;
SELECT CASE WHEN ST_AsText(ST_GeomFromText('POINT(1 1)')) = 'POINT(1 1)' THEN 1 ELSE 0 END;
SELECT CASE WHEN ST_AsText(ST_GeomFromText('LINESTRING(0 0, 1 1, 2 2)')) = 'LINESTRING(0 0,1 1,2 2)' THEN 1 ELSE 0 END;
SELECT CASE WHEN ST_AsText(ST_GeomFromText('POLYGON((0 0, 4 0, 4 4, 0 4, 0 0))')) = 'POLYGON((0 0,4 0,4 4,0 4,0 0))' THEN 1 ELSE 0 END;
