CREATE PROCEDURE Delete_Impiegato
	@IDImpiegato INT
	

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM IMPIEGATI
	WHERE IDImpiegato = @IDImpiegato;

END
GO