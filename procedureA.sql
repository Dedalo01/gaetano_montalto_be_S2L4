-- PROCEDURE
-- a
CREATE PROCEDURE Save_Impiegato
	@Cognome VARCHAR(30),
	@Nome VARCHAR(30),
	@IDImpiego INT

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO IMPIEGATI(Cognome, Nome, IDImpiego)
	VALUES (@Cognome, @Nome, @IDImpiego);

END
GO