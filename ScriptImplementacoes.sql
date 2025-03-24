USE Filmes

--1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano 
FROM FILMES

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano, Duracao  
FROM FILMES
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao 
FROM FILMES
WHERE Nome = 'De volta para o futuro' 

--4 - Buscar os filmes lançados em 1997

SELECT Nome, Ano, Duracao 
FROM FILMES
WHERE Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano, Duracao 
FROM FILMES
WHERE Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao 
FROM FILMES
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, Count(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * --PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero

SELECT f.nome, g.Genero 
FROM Filmes f
	INNER JOIN FilmesGenero fg
		ON f.Id = fg.IdFilme
	INNER JOIN Generos g
		ON fg.IdGenero = g.Id
ORDER BY Genero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT f.nome, g.Genero 
FROM Filmes f
	INNER JOIN FilmesGenero fg
		ON f.Id = fg.IdFilme
	INNER JOIN Generos g
		ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
	INNER JOIN ElencoFilme e
		ON f.Id = e.IdFilme
	INNER JOIN Atores a
		ON a.Id = e.IdAtor

