/*
e) Yeguas de 3 años que no hayan ganado. Peso 56 kilos. (No podrán 
inscribirse las ejemplares pertenecientes a las caballerizas que ocupen 
los 12 primeros puestos en la estadística por sumas ganadas desde el 1o de 
marzo de 2012)
*/

set @NumeroEquino = 0;
set @TipoLicenciaJockey = '';
set @NumeroLicenciaJockey= '';

select 'Pasa condición'
from Equino as E
where
  E.NumeroEquino = @NumeroEquino and
  /*Peso 3 años 56 kilos*/
  ( FLOOR(DATEDIFF(NOW(), E.FechaNacimiento) / 365) = 3 and
  exists(
    select *
    from Jockey J1
    where
      J1.TipoLicenciaJockey = @TipoLicenciaJockey and  
      J1.NumeroLicenciaJockey = @NumeroLicenciaJockey and
      J1.Peso <= 56
  ) ) and
  /*yeguas*/
  E.Genero = 'H' and
  /*que no hayan ganado*/
  not exists(
    select 'Primer puesto'
    from ParticipacionCarrera PC0
    where
      PC0.NumeroEquino = E.NumeroEquino and
      /*0 caballos tienen mejor tiempo que el caballo en estudio
      en la carrera en estudio: Esto significa que ganó.*/
      not exists(
        select 'Tiempo mejor de otro Equino'
        from ParticipacionCarrera PC1
        where
          PC1.FechaEncuentro = PC0.FechaEncuentro and
          PC1.NumeroCarrera = PC0.NumeroCarrera and
          PC1.NumeroEquino != PC0.NumeroEquino and
          PC1.TiempoCarrera > PC0.TiempoCarrera
      )
  ) and
  /*
  No podrán inscribirse las ejemplares pertenecientes a las caballerizas 
  que ocupen los 12 primeros puestos en la estadística por sumas ganadas 
  desde el 1o de marzo de 2012
  Es decir el equino no pertenece a una caballeriza que se encuentre 
  entre las primeras 12.
  Es decir la caballeriza a la que pertenece el equino tiene por encima 
  12 caballerizas o más que lo superan en puntos.
  */
  12 <= (
    /*Se obtiene la cantidad de caballerizas que superan la 
    caballeriza del equino */
    select count(SE1.NombreStud)
    from ParticipacionCarrera PC2, StudEquino SE1
    where
      PC2.FechaEncuentro >= date('2012-03-01') and
      PC2.NumeroEquino = SE1.NumeroEquino and
      PC2.FechaEncuentro >= SE1.FechaDesde and
      PC2.FechaEncuentro <= SE1.FechaHasta and
      /*No se tiene en cuenta el stud del equino analizado.*/
      SE1.NombreStud not in (
        select SE2.NombreStud
        from StudEquino SE2
        where SE2.NumeroEquino = E.NumeroEquino
      ) and
      /*y que el equino obtenido sea ganador (no se discrimina por genero)*/
      exists(
        select 'Primer puesto'
        from ParticipacionCarrera PC3
        where
          PC3.NumeroEquino = PC2.NumeroEquino and
          /*0 caballos tienen mejor tiempo que el caballo en estudio
          en la carrera en estudio: Esto significa que ganó.*/
          not exists(
            select 'Tiempo mejor de otro Equino'
            from ParticipacionCarrera PC4
            where
              PC4.FechaEncuentro = PC3.FechaEncuentro and
              PC4.NumeroCarrera = PC3.NumeroCarrera and
              PC4.NumeroEquino != PC3.NumeroEquino and
              PC4.TiempoCarrera > PC3.TiempoCarrera
          )
      )
    group by SE1.NombreStud
    having
      /*Se pide que la cantidad de carreras ganadas por stud sea mayor que la
      cantidad de carreras ganada por el stud del equino analizado.*/
      count(*) > (
        select count(*)
        from ParticipacionCarrera PC5, StudEquino SE2
        where
          PC5.FechaEncuentro >= date('2012-03-01') and
          PC5.NumeroEquino = SE2.NumeroEquino and
          PC5.FechaEncuentro >= SE2.FechaDesde and
          PC5.FechaEncuentro <= SE2.FechaHasta and
          /*se tiene en cuenta solo el stud del equino analizado.*/
          SE1.NombreStud in (
            select SE2.NombreStud
            from StudEquino SE2
            where SE2.NumeroEquino = E.NumeroEquino
          ) and
          /*y que el equino obtenido sea ganador (no se discrimina por genero)*/
          exists(
            select 'Primer puesto'
            from ParticipacionCarrera PC6
            where
              PC6.NumeroEquino = PC5.NumeroEquino and
              /*0 caballos tienen mejor tiempo que el caballo en estudio
              en la carrera en estudio: Esto significa que ganó.*/
              not exists(
                select 'Tiempo mejor de otro Equino'
                from ParticipacionCarrera PC7
                where
                  PC7.FechaEncuentro = PC6.FechaEncuentro and
                  PC7.NumeroCarrera = PC6.NumeroCarrera and
                  PC7.NumeroEquino != PC6.NumeroEquino and
                  PC7.TiempoCarrera > PC6.TiempoCarrera
              )
          )
      )
  ) 
