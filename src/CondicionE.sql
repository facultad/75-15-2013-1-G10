//e) Yeguas de 3 años que no hayan ganado. Peso 56 kilos. (No podrán inscribirse las ejemplares pertenecientes a las
//caballerizas que ocupen los 12 primeros puestos en la estadística por sumas ganadas desde el 1o de marzo de 2012)


SELECT 
    'OK'
FROM 
    Equino, Jockey, StudEquino
WHERE 
    Eqino.NumeroEquino = @NumeroEquino
    AND Jockey.NumeroLicenciaJockey = @NumeroLicenciaJockey
    AND Jockey.TipoLicenciaJockey = @TipoLicenciaJockey
    AND Equino.Genero = 'H'
    AND FLOOR(DATEDIFF(NOW(), Equino.FechaNacimiento) / 365) = 3
    AND Jockey.Peso = 56
    AND (StudEquino.NumeroEquino = Equino.NumeroEquino AND StudEquino.FechaHasta IS NULL)
    AND 12 > (
   		SELECT COUNT(*) 
		FROM ParticipacionCarrera PC1, StudEquino SE1
		WHERE 
			PC1.NumeroEquino = SE1.NumeroEquino
			PC1.TiempoCarrera = (
				SELECT MIN(TiempoCarrera) 
				FROM ParticipacionCarrera PC3
				WHERE PC3.NumeroCarrra = PC1.NumeroCarrra AND PC3.FechaEncuentro = PC1.FechaEncuentro
			)
		GROUP BY SE2.NombreStud
		HAVING COUNT(*) > (
			SELECT COUNT(*) 
			FROM ParticipacionCarrera PC2, StudEquino SE2
			WHERE 
				SE2.NombreStud = StudEquino.NombreStud
				PC2.NumeroEquino = SE2.NumeroEquino
				PC2.TiempoCarrera = (
					SELECT MIN(TiempoCarrera) 
					FROM ParticipacionCarrera PC4
					WHERE PC4.NumeroCarrra = PC2.NumeroCarrra AND PC4.FechaEncuentro = PC2.FechaEncuentro
				)
			GROUP BY SE2.NombreStud
		)
    )