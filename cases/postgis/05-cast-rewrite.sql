-- Exercises shim-sql-preprocess's CAST rewrite. The literal
-- `CAST('POINT(1 1)' AS GEOMETRY)` is not a parsed expression
-- in stock SQLite or DuckDB (neither knows a `GEOMETRY` type
-- on the parser level). The preprocessor rewrites it to
-- `st_geomfromtext('POINT(1 1)')` before the SQL hits the
-- target CLI, exercising the source_kind="stringliteral"
-- cast-rewrites table.

SELECT CASE WHEN ST_AsText(CAST('POINT(1 1)' AS GEOMETRY)) = 'POINT(1 1)'
            THEN 1 ELSE 0 END;

SELECT CASE WHEN ST_Length(CAST('LINESTRING(0 0, 3 4)' AS GEOMETRY)) = 5.0
            THEN 1 ELSE 0 END;
