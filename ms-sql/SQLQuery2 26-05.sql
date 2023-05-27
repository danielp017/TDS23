CREATE DATABASE Nortwind

SELECT DISTINCT F1.Nome, DATEPART(YEAR, F1.DataAdmissao) AS []
FROM Funcionarios F1, Funcionarios F2
WHERE DATEPART(MONTH, F1.DataAdmissao) = DATEPART(MONTH, F2.DataAdmissao)
