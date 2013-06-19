/*Caballos de 3 a�os (con exclusi�n de yeguas) que no hayan ganado. 
Peso 56 kilos*/
select 'Pasa condici�n'
from equino as E
where
  E.NumeroEquino = @NumeroEquino and
  /*Peso 3 a�os 56 kilos*/
  ( FLOOR(DATEDIFF(NOW(), E.FechaNacimiento) / 365) = 3 and
  exists(
    select *
    from Jockey J1
    where
      J1.TipoLicenciaJockey = @TipoLicenciaJockey and  
      J1.NumeroLicenciaJockey = @NumeroLicenciaJockey and
      J1.Peso <= 56
  ) and
  /*(con exclusi�n de yeguas)*/
  E.Genero = 'H' and
  /*que no hayan ganado*/
  not exists(
    select 'Gan�'
    from ParticipacionCarrera PC0
      PC0.NumeroEquino = E.NumeroEquino and
      /*0 caballos tienen mejor tiempo que el caballo en estudio
      en la carrera en estudio: Esto significa que gan�.*/
      0 = (
        select count(*)
        from ParticipacionCarrera PC1
        where
          PC1.FechaEncuentro = PC0.FechaEncuentro and
          PC1.NumeroCarrera = PC0.NumeroCarrera and
          PC1.NumeroEquino != PC0.NumeroEquino and
          PC1.TiempoCarrera > PC0.TiempoCarrera 
      )
  )

