--- Sprint DML

USE PCCLINICS;

INSERT INTO Clinica (RazaoSocial, CNPJ, Endereco)
VALUES				('Meu Pimpão', '22-2222222', 'Av. Limeira')

INSERT INTO Veterinario (IdClinica, Veterinario, CRM)
VALUES					 (1, 'Saulo', '432551'),
						 (1, 'Caique', '653655');

INSERT INTO Dono (Dono)
VALUES			 ('Paulo'),
				 ('Odirlei');

INSERT INTO TipoPet (Tipo)
VALUES				('Cachorro'),
					('Gato')

INSERT INTO Raca (IdTipoPet, Raca)
VALUES			 (1, 'Poodle'),
				 (1, 'Labrador'),
				 (1, 'SRD'),
				 (2, 'Siamês')

INSERT INTO Pet (IdRaca, IdDono, NomePet, DataNascimento)
VALUES			(1, 1, 'Rex', '10/10/2018'),
				(4, 1, 'Poli', '18/05/2017'),
				(1, 2, 'Garfild', '16/06/2016')

INSERT INTO Atendimento (IdPet, IdVeterinario, DataAtendimento, Descricao)
VALUES					(1, 1, '10/10/2018', 'Restam 48 anos de vida'),
						(4, 2, '18/05/2017', 'O paciente está ok'),
						(1, 2, '16/06/2016', 'O paciente está ok')

