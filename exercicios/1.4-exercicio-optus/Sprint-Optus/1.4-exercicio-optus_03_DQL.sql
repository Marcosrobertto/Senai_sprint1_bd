--- Sprint DQL

USE Optus;

SELECT * FROM Artista;
SELECT * FROM Albuns;
SELECT * FROM Estilos;
SELECT * FROM AlbumEstilos;
SELECT * FROM Usuarios;

--- listar todos os usuários administradores, sem exibir suas senhas

SELECT Usuarios.Nome, Usuarios.Email, Usuarios.Permissao FROM Usuarios
WHERE Usuarios.Permissao = 'administrador';

--- listar todos os álbuns lançados após o um determinado ano de lançamento

SELECT Albuns.Titulo, Artista.Nome AS Nome_Artista, Albuns.DataLancamento, Albuns.Localizacao, Albuns.QtsMinutos, Albuns.Ativo FROM Albuns
INNER JOIN Artista
ON Albuns.idArtista = Artista.idArtista
WHERE Albuns.DataLancamento > '1996';

--- listar os dados de um usuário através do e-mail e senha

SELECT Usuarios.Nome, Usuarios.Email, Usuarios.Permissao FROM Usuarios
WHERE Usuarios.Email = 'marcos@gmail.com'
AND Usuarios.Senha = 123456;

--- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum

SELECT Albuns.Titulo, Artista.Nome, Estilos.Nome AS Estilo FROM Albuns
INNER JOIN Artista
ON Albuns.idArtista = Artista.idArtista
INNER JOIN AlbumEstilos
ON AlbumEstilos.idAlbum = Albuns.idAlbum
INNER JOIN Estilos
ON Estilos.idEstilo = AlbumEstilos.idEstilo
WHERE Albuns.Ativo = 1;
