/*Yeguas de 5 y 6 a√±os que no hayan ganado. Peso 5 a√±os 57 kilos, 
6 a√±os 55 kilos.*/
select 'Pasa condicion'
from Equino as E
where
  E.NumeroEquino = @NumeroEquino and
  E.Genero = 'H' and
  ( 
    /*Peso 5 aÒos 57 kilos*/
    ( FLOOR(DATEDIFF(NOW(), E.FechaNacimiento) / 365) = 5 and
    exists(
      select *
      from Jockey J1
      where
        J1.TipoLicenciaJockey = @TipoLicenciaJockey and  
        J1.NumeroLicenciaJockey = @NumeroLicenciaJockey and
        J1.Peso <= 57
    ) ) or
    /*6 aÒos 55 kilos.*/
    ( FLOOR(DATEDIFF(NOW(), E.FechaNacimiento) / 365) = 6 and
    exists(
      select *
      from Jockey J1
      where
        J1.TipoLicenciaJockey = @TipoLicenciaJockey and  
        J1.NumeroLicenciaJockey = @NumeroLicenciaJockey and
        J1.Peso <= 55
    ) )
  ) and
  /*que no hayan ganado*/
  not exists(
    select 'GanÛ'
    from ParticipacionCarrera PC0
      where PC0.NumeroEquino = E.NumeroEquino and
      /*0 caballos tienen mejor tiempo que el caballo en estudio
      en la carrera en estudio: Esto significa que ganÛ.*/
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
