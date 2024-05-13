SELECT * FROM noticias.noti_extraidas;

SELECT Seccion, COUNT(*) AS TotalNoticias
FROM noti_extraidas
WHERE Fecha = CURDATE()  -- Filtra por el día de hoy
GROUP BY Seccion
ORDER BY TotalNoticias DESC
LIMIT 1;  -- Limita el resultado a la sección con más noticias
SELECT Seccion
FROM noti_extraidas
WHERE Fecha >= CURDATE()
GROUP BY Seccion
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT Seccion, COUNT(*) AS TotalNoticias
FROM noti_extraidas
WHERE Fecha BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 DAY) AND CURDATE()
GROUP BY Seccion
ORDER BY TotalNoticias DESC
LIMIT 1;

SELECT Seccion, COUNT(*) AS TotalArticulos
FROM noti_extraidas
WHERE Fecha >= NOW() - INTERVAL 1 HOUR
GROUP BY Seccion;



SELECT Seccion, COUNT(*) AS TotalArticulos
FROM noti_extraidas
GROUP BY Seccion
ORDER BY COUNT(*) DESC;

SELECT Autor, COUNT(*) AS TotalArticulos
FROM noti_extraidas
WHERE  Seccion = 'México'
GROUP BY Autor
ORDER BY COUNT(*) DESC;