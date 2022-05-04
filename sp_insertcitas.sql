CREATE  PROCEDURE spa_citas
(
			@MEDICOID int
           ,@PACIENTEID int
           ,@FECHAATENCION date
           ,@INICIOATENCION time(7)
           ,@FINATENCION time(7)
           ,@ESTADO varchar(25)
           ,@OBSERVACIONES varchar(500)
           ,@ACTIVO bit
           ,@FECHAREGISTRO datetime
           ,@USUARIOREGISTRO varchar(25)
           ,@FECHAMODIFICACION datetime
           ,@USUARIOMODIFICACION varchar(25)
)
AS
BEGIN
INSERT INTO dbo.CITAS
           ([MEDICOID]
           ,[PACIENTEID]
           ,[FECHAATENCION]
           ,[INICIOATENCION]
           ,[FINATENCION]
           ,[ESTADO]
           ,[OBSERVACIONES]
           ,[ACTIVO]
           ,[FECHAREGISTRO]
           ,[USUARIOREGISTRO]
           ,[FECHAMODIFICACION]
           ,[USUARIOMODIFICACION])
     VALUES
           (@MEDICOID
           ,@PACIENTEID
           ,@FECHAATENCION
           ,@INICIOATENCION
           ,@FINATENCION
           ,@ESTADO
           ,@OBSERVACIONES
           ,@ACTIVO
           ,@FECHAREGISTRO
           ,@USUARIOREGISTRO
           ,@FECHAMODIFICACION
           ,@USUARIOMODIFICACION)
END