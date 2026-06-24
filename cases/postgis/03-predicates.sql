SELECT CASE WHEN ST_Intersects(
    ST_GeomFromText('POLYGON((0 0, 4 0, 4 4, 0 4, 0 0))'),
    ST_GeomFromText('POINT(2 2)')
) THEN 1 ELSE 0 END;
SELECT CASE WHEN ST_Intersects(
    ST_GeomFromText('POLYGON((0 0, 4 0, 4 4, 0 4, 0 0))'),
    ST_GeomFromText('POINT(10 10)')
) THEN 1 ELSE 0 END;
SELECT CASE WHEN ST_IsClosed(ST_GeomFromText('LINESTRING(0 0, 1 1, 0 0)')) THEN 1 ELSE 0 END;
SELECT CASE WHEN ST_IsEmpty(ST_GeomFromText('POINT(1 1)')) THEN 1 ELSE 0 END;
SELECT CASE WHEN ST_IsValid(ST_GeomFromText('POINT(1 1)')) THEN 1 ELSE 0 END;
