# biblioteca_banco
criação de um banco de dados simples, de uma blibioteca 

para a seguinte atividade foi usado comandos simples do banco de dados

explicações de alguns comandos usados :


-- Use o banco de dados "oscar"

USE oscar;

-- Dropa a tabela Livros se ela existir

DROP TABLE IF EXISTS Livros;

-- Cria a tabela Livros

CREATE TABLE Livros (

    livros_id INT auto_increment PRIMARY KEY, 
    
    titulo VARCHAR(255),
    
    autor VARCHAR(255),
    
    editora VARCHAR(255),
    
    ano_publicacao INT,
    
    isbn VARCHAR(255)
);

-- Insere dados na tabela Livros

INSERT INTO Livros (livros_id, titulo, autor, editora, ano_publicacao, isbn) VALUES 

(1, 'A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '978-85-8057-346-6'),

(2, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),

(3, 'O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),

(4, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, '9780316769488'),

(5, '1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '978-85-221-0616-9'),

(6, 'Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');


-- Cria a tabela Autores

CREATE TABLE Autores (

    autor_id INT AUTO_INCREMENT PRIMARY KEY,
    
    autor VARCHAR(255)
);

-- Insere autores únicos na tabela Autores

INSERT INTO Autores (autor)

SELECT DISTINCT autor FROM Livros;

-- Cria a tabela Editoras

CREATE TABLE Editoras (

    editora_id INT AUTO_INCREMENT PRIMARY KEY,
    
    editora VARCHAR(255)
);

-- Insere editoras únicas na tabela Editoras

INSERT INTO Editoras (editora)

SELECT DISTINCT editora FROM Livros;

-- Adiciona as colunas autor_id e editora_id à tabela Livros

ALTER TABLE Livros

ADD COLUMN autor_id INT,

ADD COLUMN editora_id INT;

-- Atualiza a coluna autor_id na tabela Livros com base na correspondência de autores

UPDATE Livros

JOIN Autores ON Livros.autor = Autores.autor

SET Livros.autor_id = Autores.autor_id;

-- Atualiza a coluna editora_id na tabela Livros com base na correspondência de editoras

UPDATE Livros

JOIN Editoras ON Livros.editora = Editoras.editora

SET Livros.editora_id = Editoras.editora_id;

-- Exclui as colunas identificador, autor e editora da tabela Livros

ALTER TABLE Livros

DROP COLUMN identificador,

DROP COLUMN autor,

DROP COLUMN editora;

-- Exclui as colunas autor_id e editora_id da tabela Livros

ALTER TABLE Livros

DROP COLUMN autor_id,

DROP COLUMN editora_id;

-- Exibe os dados da tabela Livros

SELECT * FROM Livros;
