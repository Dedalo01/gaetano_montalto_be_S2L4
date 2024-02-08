CREATE PROCEDURE Update_Impiegato
	@IDImpiegato INT,
	@IDImpiego INT

AS
BEGIN
	SET NOCOUNT ON;

	UPDATE IMPIEGATI
	SET IDImpiego = @IDImpiego
	WHERE IDImpiegato = @IDImpiegato;

END
GO