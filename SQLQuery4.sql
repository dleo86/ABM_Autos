/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 1000 [patente]
      ,[propietario]
      ,[precio]
      ,[codigomarca]
      ,[foto]
      ,[modelo]
  FROM [tp2].[dbo].[autos]