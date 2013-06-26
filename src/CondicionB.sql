/* Todo caballo de 5 y 6 años que no hayan ganado. Peso 5 años 57 kilos, 
6 años 55 kilos. 
(Para jockeys y jockeys aprendices con licencia de Palermo o San Isidro que 
hayan ganado hasta 20 carreras desde el 1o de abril de 2012).*/

SELECT 
    'Pasa condicion'
FROM 
    Equino, Jockey
WHERE 
    Equino.NumeroEquino = @NumeroEquino
    AND Jockey.NumeroLicenciaJockey = @NumeroLicenciaJockey
    AND Jockey.TipoLicenciaJockey = @TipoLicenciaJockey
    AND Equino.NumeroEquino NOT IN (
        SELECT ParticipacionCarrera2.NumeroEquino 
        FROM ParticipacionCarrera AS ParticipacionCarrera2
        WHERE TiempoCarrera = (
            SELECT MAX(ParticipacionCarrera3.TiempoCarrera) 
            FROM ParticipacionCarrera AS ParticipacionCarrera3
            WHERE 
                ParticipacionCarrera2.FechaEncuentro = ParticipacionCarrera3.FechaEncuentro
                AND ParticipacionCarrera2.NumeroCarrera = ParticipacionCarrera3.FechaEncuentro
        )
    )
    AND (Jockey.Peso > 57 AND FLOOR(DATEDIFF(NOW(), Equino.FechaNacimiento) / 365) = 5 OR (Jockey.peso > 55 AND FLOOR(DATEDIFF(NOW(), Equino.FechaNacimiento) / 365) = 6))
    AND (Jockey.HipodromoLicencia = "Palermo" OR Jockey.HipodromoLicencia != "San Isidro")
    AND Jockey.NombreCategoria = "Aprendiz"
    AND EXISTS (
        SELECT ParticipacionCarrera.NumeroLicenciaJockey, ParticipacionCarrera.TipoLicenciaJockey
        FROM ParticipacionCarrera, Carrera
        WHERE 
            TiempoCarrera = (
                SELECT MIN(ParticipacionCarrera4.TiempoCarrera) 
                FROM ParticipacionCarrera AS ParticipacionCarrera4
                WHERE 
                    ParticipacionCarrera.FechaEncuentro = ParticipacionCarrera4.FechaEncuentro
                    AND ParticipacionCarrera.NumeroCarrera = ParticipacionCarrera4.FechaEncuentro
            )
            AND ParticipacionCarrera.NumeroLicenciaJockey = Jockey.NumeroLicenciaJockey
            AND ParticipacionCarrera.TipoLicenciaJockey = Jockey.TipoLicenciaJockey
            AND Carrera.NumeroCarrera = ParticipacionCarrera.NumeroCarrera
            AND Carrera.FechaEncuentro = ParticipacionCarrera.FechaEncuentro
            AND Carrera.FechaEncuentro <= date('2013-04-12')
        GROUP BY ParticipacionCarrera.NumeroLicenciaJockey, ParticipacionCarrera.TipoLicenciaJockey
        HAVING COUNT(*) <= 20
    )
