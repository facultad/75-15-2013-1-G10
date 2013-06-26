/*
Caballos de 4 y 5 años 
(con exclusión de yeguas) 
perdedores 
que habiendo corrido no hayan clasificado 2º, 3º ó 4º en los Hipódromos de 
  Palermo ó San Isidro en sus tres últimas actuaciones. (Pueden participar los 
  S.P.C. que hayan corrido esta categoría siempre y cuando no hayan obtenido 
  esos puestos en condicionales u otro tipo de carreras, también quedan 
  excluidos los ejemplares que en sus 
  últimas cinco (5) actuaciones hayan participado en carreras clásicas). 
Peso 4 años 57 kilos; 5 años 55 kilos.
*/
select 'Pasa condición'
from Equino as E
where
  E.NumeroEquino = @NumeroEquino and
  ( 
    /*Peso 4 años 57 kilos*/
    ( FLOOR(DATEDIFF(NOW(), E.FechaNacimiento) / 365) = 4 and
    exists(
      select *
      from Jockey J1
      where
        J1.TipoLicenciaJockey = @TipoLicenciaJockey and  
        J1.NumeroLicenciaJockey = @NumeroLicenciaJockey and
        J1.Peso <= 57
    ) ) or
    /*5 años 55 kilos.*/
    ( FLOOR(DATEDIFF(NOW(), E.FechaNacimiento) / 365) = 5 and
    exists(
      select *
      from Jockey J1
      where
        J1.TipoLicenciaJockey = @TipoLicenciaJockey and  
        J1.NumeroLicenciaJockey = @NumeroLicenciaJockey and
        J1.Peso <= 55
    ) )
  ) and
  /*(con exclusión de yeguas)*/
  E.Genero = 'M' and
  /*no hayan clasificado 1º, 2º, 3º o 4º en los Hipódromos de Palermo ó 
  San Isidro en sus tres últimas actuaciones.*/
  not exists(
    select 
      'Termino 1º, 2º, 3º o 4º', 
      'En alguno de los últimos 3 encuentros',
      'En Palermo o San Isidro'
    from ParticipacionCarrera PC0, Encuentro EN
    where
      PC0.NumeroEquino = E.NumeroEquino and
      PC0.FechaEncuentro = EN.FechaEncuentro and
      EN.NombreHipodromo in ('Palermo', 'San Isidro') and
      /*La cantidad de carreras en las que participó el Equino con fecha 
      igual o posterior a la fecha del encuentro de la carrera estudiada sea
      como mucho 3*/
      3 >= (
        select count(*)
        from ParticipacionCarrera PC2
        where
          PC2.FechaEncuentro >= PC0.FechaEncuentro and
          PC2.NumeroEquino = PC0.NumeroEquino
      ) and
      /*Como mucho 3 caballos tienen mejor tiempo que el caballo en estudio
      en la carrera en estudio: Esto significa que está entre los mejores 4*/
      3 >= (
        select count(*)
        from ParticipacionCarrera PC1
        where
          PC1.FechaEncuentro = PC0.FechaEncuentro and
          PC1.NumeroCarrera = PC0.NumeroCarrera and
          PC1.NumeroEquino != PC0.NumeroEquino and
          PC1.TiempoCarrera > PC0.TiempoCarrera 
      )
  ) and
  /*quedan excluidos los ejemplares que en sus últimas cinco (5) actuaciones
  hayan participado en carreras clásicas)*/
  not exists(
    select 
      'Participo en carrera Clasica', 
      'En sus últimas cinco (5) actuaciones'
    from ParticipacionCarrera PC10, Carrera CA
    where
      PC10.FechaEncuentro = CA.FechaEncuentro and
      PC10.NumeroCarrera = CA.NumeroCarrera and
      PC10.NumeroEquino = E.NumeroEquino and
      CA.TipoCarrera = 'Clásica' and
      PC10.FechaEncuentro = CA.FechaEncuentro and
      /*La cantidad de carreras en las que participó el Equino con fecha 
      igual o posterior a la fecha del encuentro de la carrera estudiada sea
      como mucho 5*/
      5 >= (
        select count(*)
        from ParticipacionCarrera PC11
        where
          PC11.FechaEncuentro >= PC10.FechaEncuentro and
          PC11.NumeroEquino = PC10.NumeroEquino
      )
  )
