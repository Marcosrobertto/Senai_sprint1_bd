--- Sprint DML

USE Optus;

INSERT INTO Artista (Nome)
VALUES				('Angra'),
		    		('Madona'),
					('Shaman');

INSERT INTO Estilos (Nome)
VALUES				('Rock'),
		    		('Top'),
					('Metal');

INSERT INTO Albuns (idArtista, Titulo, DataLancamento, Localizacao, QtsMinutos, Ativo)
VALUES			   (1, 'Holy Land', '1996', 'Brasil', 57, 1),
		    	   (2, 'MDNA', '2012', 'EUA', 75, 2);

INSERT INTO AlbumEstilos (idAlbum, idEstilo)
VALUES					 (1, 1),
		    			 (2, 2);

INSERT INTO Usuarios (Nome, Email, Senha, Permissao)
VALUES		('Marcos', 'marcos@gmail.com', 123456, 'administrador')
		   ,('Saulo', 'Saulo@hotmail.com', 123456, 'Comum');

UPDATE Albuns
SET QtsMinutos = 60
WHERE idAlbum = 1;

DELETE FROM AlbumEstilos
WHERE idAlbum = 1;