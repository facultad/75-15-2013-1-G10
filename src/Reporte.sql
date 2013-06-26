SELECT 
    Andarivel.NumeroAndarivel,
    Equino.NumeroEquino,
    ParticipacionCarrera.PesoEquino,
    PersonaJockey.Nombre,
    Jockey.Peso,
    ParticipacionCarrera.DiferenciaCuerpos,
    PersonaCuidador.Nombre,
    Stud.NombreStud
FROM
    Equino, Andarivel, Jockey, Cuida, Persona AS PersonaJockey, Rol AS RolCuidador, Rol AS RolJockey, Persona AS PersonaCuidador, Stud, ParticipacionCarrera, StudEquino
WHERE
    Equino.NumeroEquino = ParticipacionCarrera.NumeroEquino
    AND (
        Jockey.NumeroLicenciaJockey = ParticipacionCarrera.NumeroLicenciaJockey 
        AND Jockey.TipoLicenciaJockey = ParticipacionCarrera.TipoLicenciaJockey
    )
    AND RolJockey.DNI = PersonaJockey.DNI
    AND Jockey.NumeroRol = RolJockey.NumeroRol
    AND RolCuidador.DNI = PersonaCuidador.DNI
    AND (RolCuidador.NumeroRol = Cuida.NumeroRol AND RolCuidador.FechaDesde IS NULL)
    AND Cuida.NumeroEquino = Equino.NumeroEquino
    AND (Andarivel.NumeroAndarivel = ParticipacionCarrera.NumeroAndarivel)
    AND (StudEquino.NumeroEquino = Equino.NumeroEquino AND StudEquino.FechaHasta IS NULL)
    AND StudEquino.NombreStud = Stud.NombreStud

