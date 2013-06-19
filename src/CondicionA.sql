//a) Yeguas de 5 y 6 años que no hayan ganado. Peso 5 años 57 kilos, 6 años 55 kilos.

SELECT 
    'OK'
FROM 
    Equino, Jockey
WHERE 
    Eqino.NumeroEquino = @NumeroEquino
    AND Jockey.NumeroLicenciaJockey = @NumeroLicenciaJockey
    AND Jockey.TipoLicenciaJockey = @TipoLicenciaJockey
    AND Equino.Genero = 'H'
    AND Equino.NumeroEquino NOT IN (
        SELECT ParticipacionCarrera.NumeroEquino 
        FROM ParticipacionCarrera
        WHERE TiempoCarrera = (
                SELECT MIN(ParticipacionCarrera2.TiempoCarrera) 
                FROM ParticipacionCarrera AS ParticipacionCarrera2
                WHERE 
                    ParticipacionCarrera2.FechaEncuentro = ParticipacionCarrera.FechaEncuentro
                    AND ParticipacionCarrera2.NumeroCarrera = ParticipacionCarrera.FechaEncuentro
            )
        )
    )
    AND (Jockey.Peso > 57 AND FLOOR(DATEDIFF(NOW(), Equino.FechaNacimiento) / 365) = 5 OR (Jockey.peso > 55 AND FLOOR(DATEDIFF(NOW(), Equino.FechaNacimiento) / 365) = 6)