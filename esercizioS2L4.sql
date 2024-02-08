--a
SELECT Nome, Cognome FROM IMPIEGATI WHERE Eta > 29;

--b
SELECT Nome, Cognome, [Reddito Mensile] FROM IMPIEGATI WHERE [Reddito Mensile] > 800;

--c
SELECT Nome, Cognome FROM IMPIEGATI WHERE [Detrazione Fiscale] = 'True';

--d
SELECT Nome, Cognome FROM IMPIEGATI WHERE [Detrazione Fiscale] <> 'True';

--e
SELECT Cognome, Nome FROM IMPIEGATI WHERE Cognome LIKE 'G%' ORDER BY Cognome;

--f
SELECT count(*) AS [Totale Impiegati] FROM IMPIEGATI;

--g
SELECT sum([Reddito Mensile]) AS [Totale Redditi Mensili] FROM IMPIEGATI;

--h
SELECT avg([Reddito Mensile]) AS [Totale Media Redditi Mensili] FROM IMPIEGATI;

--i
SELECT max([Reddito Mensile]) AS [Reddito Mensile Maggiore] FROM IMPIEGATI;

--j
SELECT min([Reddito Mensile]) AS [Reddito Mensile Minore] FROM IMPIEGATI;

--k
SELECT I.Nome, I.Cognome, J.[Data Assunzione]
FROM IMPIEGATI AS I
INNER JOIN IMPIEGHI AS J ON I.IDImpiego = J.IDImpiego
WHERE J.[Data Assunzione] BETWEEN '2007-01-01' AND '2008-01-01';

--l
DECLARE @TipoImpiego NVARCHAR(50) = 'Developer';
SELECT I.Nome, I.Cognome 
FROM IMPIEGATI AS I
INNER JOIN IMPIEGHI AS J ON I.IDImpiego = J.IDImpiego
WHERE J.[Tipo Impiego] = @TipoImpiego;

--m
SELECT avg(Eta) AS [Eta Media] FROM IMPIEGATI;

--PROCEDURE
--a
EXEC Save_Impiegato @Cognome='Vanni', @Nome='Giorgio', @IDImpiego=5;