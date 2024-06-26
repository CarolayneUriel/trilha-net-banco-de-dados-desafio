--1

SELECT
	Nome,
	Ano
FROM Filmes

--2

SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano

--3

SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4

SELECT * FROM Filmes
WHERE Ano = 1997

--5

SELECT * FROM Filmes
WHERE Ano LIKE '2%'

--6

SELECT * FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao

--7

SELECT 
	Ano,
	COUNT(*) Qunatidade
FROM Filmes
GROUP BY Ano
ORDER BY Qunatidade DESC

--8

SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9

SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10

SELECT
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id

--11

SELECT
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mist�rio'

--12

SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON EF.IdFilme = F.Id
INNER JOIN Atores A ON EF.IdAtor = A.Id
