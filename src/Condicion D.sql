/*
Caballos de 4 y 5 a�os 
(con exclusi�n de yeguas) 
perdedores 
que habiendo corrido no hayan clasificado 2�, 3� � 4� en los Hip�dromos de 
  Palermo � San Isidro en sus tres �ltimas actuaciones. (Pueden participar los 
  S.P.C. que hayan corrido esta categor�a siempre y cuando no hayan obtenido 
  esos puestos en condicionales u otro tipo de carreras, tambi�n quedan 
  excluidos los ejemplares que en sus 
  �ltimas cinco (5) actuaciones hayan participado en carreras cl�sicas). 
Peso 4 a�os 57 kilos; 5 a�os 55 kilos.
*/
select 'Pasa condici�n'
from Equino as E
where
  E.NumeroEquino = @NumeroEquino and
  ( 
    /*Peso 4 a�os 57 kilos*/
    ( FLOOR(DATEDIFF(NOW(), E.FechaNacimiento) / 365) = 4 and
    exists(
      select *
      from Jockey J1
      where
        J1.TipoLicenciaJockey = @TipoLicenciaJockey and  
        J1.NumeroLicenciaJockey = @NumeroLicenciaJockey and
        J1.Peso <= 57
    ) ) or
    /*5 a�os 55 kilos.*/
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
  /*(con exclusi�n de yeguas)*/
  E.Genero = 'M' and
  /*no hayan clasificado 1�, 2�, 3� o 4� en los Hip�dromos de Palermo � 
  San Isidro en sus tres �ltimas actuaciones.*/
  not exists(
    select 
      'Termino 1�, 2�, 3� o 4�', 
      'En alguno de los �ltimos 3 encuentros',
      'En Palermo o San Isidro'
    from ParticipacionCarrera PC0, Encuentro EN
    where
      PC0.NumeroEquino = E.NumeroEquino and
      PC0.FechaEncuentro = EN.FechaEncuentro and
      EN.NombreHipodromo in ('Palermo', 'San Isidro') and
      /*La cantidad de carreras en las que particip� el Equino con fecha 
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
      en la carrera en estudio: Esto significa que est� entre los mejores 4*/
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
  /*quedan excluidos los ejemplares que en sus �ltimas cinco (5) actuaciones
  hayan participado en carreras cl�sicas)*/
  not exists(
    select 
      'Participo en carrera Clasica', 
      'En sus �ltimas cinco (5) actuaciones'
    from ParticipacionCarrera PC10, Carrera CA
    where
      PC10.FechaEncuentro = CA.FechaEncuentro and
      PC10.NumeroCarrera = CA.NumeroCarrera and
      PC10.NumeroEquino = E.NumeroEquino and
      CA.TipoCarrera = 'Cl�sica' and
      PC10.FechaEncuentro = CA.FechaEncuentro and
      /*La cantidad de carreras en las que particip� el Equino con fecha 
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
