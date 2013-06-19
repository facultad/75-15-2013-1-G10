SELECT 
	Andarivel.NumeroAndarivel,
	Equino.Nombre,
	Equnino.Peso,
	PersonaJockey.Nombre,
	Jockey.Peso,
	ParticipacionCarrera.Diferencia
	PersonaCuidador.Nombre,
	Stud.NombreStud
FROM
	Equino, Andarivel, Jockey, Persona AS PersonaJockey, Rol, Cuida, Persona AS PersonaCuidador, Stud, ParticipacionCarrera, StudEquino
WHERE
	Equnino.NumeroEquino = ParticipacionCarrera.NumeroEquino
	AND (
		Jockey.NumeroLicenciaJockey = ParticipacionCarrera.NumeroLicenciaJockey 
		AND Jockey.TipoLicenciaJockey = ParticipacionCarrera.TipoLicenciaJockey
	)
	AND Jockey.DNI = PersonaJockey.DNI
	AND Cuida.DNI = PersonaCuidador.DNI
	AND Cuida.NumeroEquino = Equino.NumeroEquino
	AND (Rol.NumeroRol = Cuida.NumeroRol AND Rol.FechaDesde IS NULL)
	AND (Andarivel.NombreHipodromo = PariticipaCarrera.NombreHipodromo AND Andarivel.NumeroPista = PariticipaCarrera.NumeroPista)
	AND (StudEquino.NumeroEquino = Equino.NumeroEquino AND StudEquino.FechaHasta IS NULL)
	AND StudEquino.NombreStud = Stud.NombreStud

