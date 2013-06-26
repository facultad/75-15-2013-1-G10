/*
e) Yeguas de 3 años que no hayan ganado. Peso 56 kilos. (No podrán 
inscribirse las ejemplares pertenecientes a las caballerizas que ocupen 
los 12 primeros puestos en la estadística por sumas ganadas desde el 1o de 
marzo de 2012)
*/

set @NumeroEquino = 0;
set @TipoLicenciaJockey = '';
set @NumeroLicenciaJockey= '';

SELECT 
    'OK'
FROM 
    Equino, Jockey, StudEquino
WHERE 
    Equino.NumeroEquino = @NumeroEquino
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
		  	PC1.NumeroEquino = SE1.NumeroEquino and
			  PC1.TiempoCarrera = (
				  SELECT MIN(TiempoCarrera) 
  				FROM ParticipacionCarrera PC3
	  			WHERE 
            PC3.NumeroCarrera = PC1.NumeroCarrera AND
            PC3.FechaEncuentro = PC1.FechaEncuentro
			  )
  		GROUP BY SE1.NombreStud
	  	HAVING COUNT(*) > (
		  	SELECT COUNT(*) 
  			FROM ParticipacionCarrera PC2, StudEquino SE2
	  		WHERE 
		  		SE2.NombreStud = StudEquino.NombreStud and
			  	PC2.NumeroEquino = SE2.NumeroEquino and
			  	PC2.TiempoCarrera = (
				  	SELECT MIN(TiempoCarrera) 
				  	FROM ParticipacionCarrera PC4
				  	WHERE PC4.NumeroCarrera = PC2.NumeroCarrera AND PC4.FechaEncuentro = PC2.FechaEncuentro
				  )
			  GROUP BY SE2.NombreStud
		  )
      )
