//c) Yeguas de 4 y 5 años perdedoras, que habiendo corrido no hayan clasificado 2a, 3a ó 4a en los Hipódromos de Palermo
//ó San Isidro en sus tres últimas actuaciones. (Pueden participar las S.P.C. que hayan corrido esta categoría siempre y
//cuANDo no hayan obtenido esos puestos en condicionales u otro tipo de carreras, también quedan excluidos los
//ejemplares que en sus últimas cinco (5) actuaciones hayan participado en carreras clásicas). Peso 4 años 57 kilos; 5 años
//55kilos.

SELECT 
    'OK'
FROM 
    Equino, Jockey
WHERE 
    Eqino.NumeroEquino = @NumeroEquino
    AND Jockey.NumeroLicenciaJockey = @NumeroLicenciaJockey
    AND Jockey.TipoLicenciaJockey = @TipoLicenciaJockey
    AND Equino.Genero = 'H'
    AND (Jockey.Peso > 57 AND FLOOR(DATEDIFF(NOW(), Equino.FechaNacimiento) / 365) = 4 OR (Jockey.peso > 55 AND FLOOR(DATEDIFF(NOW(), Equino.FechaNacimiento) / 365) = 5)
    AND NOT EXISTS(
    	SELECT 
      		'Termino 1º, 2º, 3º ó 4º', 
      		'En alguno de los últimos 3 encuentros',
      		'En Palermo o San Isidro'
    	FROM ParticipacionCarrera PC0, Encuentro EN
    	WHERE
			PC0.NumeroEquino = Equino.NumeroEquino
			AND PCO.FechaEncuentro = EN.FechaEncuentro
			AND EN.NombreHipodromo IN ('Palermo', 'San Isidro')
			AND 3 >= (
				SELECT COUNT(*)
				FROM ParticipacionCarrera PC2
				WHERE
				  PC2.FechaEncuentro >= PC0.FechaEncuentro AND
				  PC2.NumeroEquino = PC0.NumeroEquino
			)
			AND 3 >= (
				SELECT COUNT(*)
				FROM ParticipacionCarrera PC1
				WHERE
				  PC1.FechaEncuentro = PC0.FechaEncuentro AND
				  PC1.NumeroCarrera = PC0.NumeroCarrera AND
				  PC1.NumeroEquino != PC0.NumeroEquino AND
				  PC1.TiempoCarrera > PC0.TiempoCarrera 
			)
	)