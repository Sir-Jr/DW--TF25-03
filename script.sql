create database biblioteca;
use biblioteca;
CREATE TABLE autores (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    isbn VARCHAR(20),
    ano_publicacao INT,
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);

INSERT INTO autores (id, nome) VALUES
(1, 'J.K. Rowling'),
(2, 'George Orwell');

INSERT INTO Livros (id, titulo, isbn, ano_publicacao, autor_id) VALUES
(1, 'Harry Potter e a Pedra Filosofal', '9780747532699', 1997, 1),
(2, '1984', '9780451524935', 1949, 2);

