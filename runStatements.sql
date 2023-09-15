--Sentencia 1

WITH ViajesChilenosPorAño AS (
    SELECT
        EXTRACT(YEAR FROM v.fecha_vuelo) AS año,
        v.destino AS lugar,
        COUNT(*) AS cantidad_viajes,
        RANK() OVER (PARTITION BY EXTRACT(YEAR FROM v.fecha_vuelo) ORDER BY COUNT(*) DESC) AS ranking_lugar
    FROM
        vuelo v
    JOIN
        pasaje p ON v.id_vuelo = p.id_vuelo
    JOIN
        cliente c ON p.id_cliente = c.id_cliente
    WHERE
        c.nacionalidad = 'Chile'
        AND EXTRACT(YEAR FROM v.fecha_vuelo) >= EXTRACT(YEAR FROM CURRENT_DATE) - 4
    GROUP BY
        EXTRACT(YEAR FROM v.fecha_vuelo), v.destino
)
SELECT
    año,
    lugar AS Lugar_Más_Visitado,
    cantidad_viajes AS Cantidad_Viajes
FROM
    ViajesChilenosPorAño
WHERE
    ranking_lugar = 1
ORDER BY
    año DESC;

	
--Sentencia 2

SELECT
    s.tipo_seccion AS seccion,
    COUNT(*) AS cantidad_compras
FROM
    pasaje p
JOIN
    cliente c ON p.id_cliente = c.id_cliente
JOIN
    seccion s ON p.id_seccion = s.id_seccion
WHERE
    c.nacionalidad = 'Argentina'
GROUP BY
    s.tipo_seccion
ORDER BY
    cantidad_compras DESC
LIMIT 1;
	
--Sentencia 3

WITH GastoTotalPorMesYOrigen AS (
    SELECT
        EXTRACT(YEAR FROM v.fecha_vuelo) AS año,
        EXTRACT(MONTH FROM v.fecha_vuelo) AS mes,
        v.origen AS país,
        SUM(co.valor_costo) AS gasto_total,
        RANK() OVER (PARTITION BY EXTRACT(YEAR FROM v.fecha_vuelo), EXTRACT(MONTH FROM v.fecha_vuelo) ORDER BY SUM(co.valor_costo) DESC) AS ranking_gasto
    FROM
        vuelo v
    JOIN
        pasaje p ON v.id_vuelo = p.id_vuelo
    JOIN
        costo co ON p.id_costo = co.id_costo
    WHERE
        EXTRACT(YEAR FROM v.fecha_vuelo) >= EXTRACT(YEAR FROM CURRENT_DATE) - 4
    GROUP BY
        EXTRACT(YEAR FROM v.fecha_vuelo), EXTRACT(MONTH FROM v.fecha_vuelo), v.origen
)
SELECT
    año,
    mes,
    país AS País_Mayor_Gasto,
    gasto_total AS Gasto_Total
FROM
    GastoTotalPorMesYOrigen
WHERE
    ranking_gasto = 1
ORDER BY
    año DESC, mes ASC;


--Sentencia 4 (funciona, pero no tenemos en la base de datos casos en los que 
--             pasajeros viajen más de 4 veces al mes, para ver otro caso se 
--             puede cambiar el 4 por un 0)

SELECT
    p.nombre_cliente AS nombre_pasajero,
    COUNT(*) AS cantidad_viajes_first_class
FROM
    pasaje pa
JOIN
    cliente p ON pa.id_cliente = p.id_cliente
JOIN
    seccion s ON pa.id_seccion = s.id_seccion
JOIN
    vuelo v ON pa.id_vuelo = v.id_vuelo
WHERE
    s.tipo_seccion = 'First class'
    AND EXTRACT(MONTH FROM v.fecha_vuelo) >= EXTRACT(MONTH FROM CURRENT_DATE) - 1
GROUP BY
    p.nombre_cliente
HAVING
    COUNT(*) > 4
ORDER BY
    cantidad_viajes_first_class DESC;

--Sentencia 5

SELECT
    a.nombre_avion AS avion,
    COUNT(*) AS cantidad_vuelos
FROM
    avion a
LEFT JOIN
    vuelo v ON a.id_avion = v.id_avion
GROUP BY
    a.nombre_avion
ORDER BY
    cantidad_vuelos ASC
LIMIT 1;

--Sentencia 6

WITH ranked_salaries AS (
    SELECT
        EXTRACT(YEAR FROM s.fecha_sueldo) AS año,
        EXTRACT(MONTH FROM s.fecha_sueldo) AS mes,
        e.nombre_empleado AS piloto,
        s.valor_sueldo,
        RANK() OVER (PARTITION BY EXTRACT(YEAR FROM s.fecha_sueldo), EXTRACT(MONTH FROM s.fecha_sueldo) ORDER BY s.valor_sueldo DESC) AS ranking_salario
    FROM
        sueldo s
    JOIN
        empleado e ON s.id_empleado = e.id_empleado
    JOIN
        cargo c ON e.id_cargo = c.id_cargo
    WHERE
        c.nombre_cargo = 'Piloto'
        AND EXTRACT(YEAR FROM s.fecha_sueldo) >= EXTRACT(YEAR FROM CURRENT_DATE) - 4
)
SELECT
    año,
    mes,
    piloto,
    valor_sueldo AS sueldo_maximo
FROM
    ranked_salaries
WHERE
    ranking_salario = 1
ORDER BY
    año DESC, mes ASC;

--Sentencia 7

WITH AvionRecaudacion AS (
    SELECT
        c.id_compania,
        c.nombre_compania,
        a.id_avion,
        a.nombre_avion,
        SUM(co.valor_costo) AS monto_recaudado
    FROM
        compania c
    JOIN
        avion a ON c.id_compania = a.id_compania
    JOIN
        vuelo v ON a.id_avion = v.id_avion
    JOIN
        pasaje p ON v.id_vuelo = p.id_vuelo
    JOIN
        costo co ON p.id_costo = co.id_costo
    WHERE
        EXTRACT(YEAR FROM v.fecha_vuelo) >= EXTRACT(YEAR FROM CURRENT_DATE) - 4
    GROUP BY
        c.id_compania, c.nombre_compania, a.id_avion, a.nombre_avion
),
RankingAviones AS (
    SELECT
        id_compania,
        id_avion,
        nombre_compania,
        nombre_avion,
        monto_recaudado,
        RANK() OVER (PARTITION BY id_compania ORDER BY monto_recaudado DESC) AS ranking_avion
    FROM
        AvionRecaudacion
)
SELECT
    r.nombre_compania AS Compañía,
    r.nombre_avion AS Avión_Más_Recaudador,
    r.monto_recaudado AS Monto_Recaudado
FROM
    RankingAviones r
WHERE
    ranking_avion = 1;
	
--Sentencia 8

SELECT
    EXTRACT(YEAR FROM a.fecha_adquisicion) AS año,
    c.nombre_compania AS compañía,
    COUNT(*) AS total_aviones
FROM
    compania c
JOIN
    avion a ON c.id_compania = a.id_compania
WHERE
    EXTRACT(YEAR FROM a.fecha_adquisicion) >= EXTRACT(YEAR FROM CURRENT_DATE) - 10
GROUP BY
    EXTRACT(YEAR FROM a.fecha_adquisicion), c.nombre_compania
ORDER BY
    EXTRACT(YEAR FROM a.fecha_adquisicion) ASC, c.nombre_compania;

--Sentencia 9

WITH PromedioSueldosPorAño AS (
    SELECT
        EXTRACT(YEAR FROM s.fecha_sueldo) AS año,
        c.nombre_compania AS compañía,
        AVG(s.valor_sueldo) AS promedio_sueldo
    FROM
        compania c
    JOIN
        empleado e ON c.id_compania = e.id_compania
    JOIN
        sueldo s ON e.id_empleado = s.id_empleado
    WHERE
        EXTRACT(YEAR FROM s.fecha_sueldo) >= EXTRACT(YEAR FROM CURRENT_DATE) - 10
    GROUP BY
        EXTRACT(YEAR FROM s.fecha_sueldo), c.nombre_compania
)
SELECT
    ps.año,
    ps.compañía,
    ps.promedio_sueldo
FROM
    PromedioSueldosPorAño ps
JOIN (
    SELECT
        año,
        MAX(promedio_sueldo) AS max_promedio
    FROM
        PromedioSueldosPorAño
    GROUP BY
        año
) max_promedio_por_año ON ps.año = max_promedio_por_año.año AND ps.promedio_sueldo = max_promedio_por_año.max_promedio
ORDER BY
    ps.año ASC;

--Sentencia 10

WITH VuelosPorModelo AS (
    SELECT
        c.nombre_compania AS compañía,
        m.nombre_modelo AS modelo,
        COUNT(*) AS cantidad_vuelos
    FROM
        compania c
    JOIN
        avion a ON c.id_compania = a.id_compania
    JOIN
        modelo m ON a.id_modelo = m.id_modelo
    JOIN
        vuelo v ON a.id_avion = v.id_avion
    WHERE
        EXTRACT(YEAR FROM v.fecha_vuelo) = 2021
    GROUP BY
        c.nombre_compania, m.nombre_modelo
),
RankingModelosPorCompania AS (
    SELECT
        compañía,
        modelo,
        cantidad_vuelos,
        RANK() OVER (PARTITION BY compañía ORDER BY cantidad_vuelos DESC) AS ranking_modelo
    FROM
        VuelosPorModelo
)
SELECT
    r.compañía,
    r.modelo AS Modelo_Más_Usado,
    r.cantidad_vuelos AS Cantidad_Vuelos
FROM
    RankingModelosPorCompania r
WHERE
    ranking_modelo = 1;

