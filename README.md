# DW--TF25-03

# 📚 TF - Banco de Dados: Autores e Livros

## 🎯 Objetivo

Criar um banco de dados simples com duas tabelas (**autores** e **Livros**), demonstrando:

* Criação de banco e tabelas
* Uso de chave primária e estrangeira
* Inserção de dados
* Integridade referencial
* Consultas básicas (SELECT)

---

## 🧩 Criação do Banco de Dados

```sql
CREATE DATABASE biblioteca;
USE biblioteca;
```

---

## 🧱 Estrutura das Tabelas

### 🔹 Tabela autores

```sql
CREATE TABLE autores (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);
```

---

### 🔹 Tabela Livros

```sql
CREATE TABLE Livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    isbn VARCHAR(20),
    ano_publicacao INT,
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);
```

---

## 📥 Inserção de Dados

```sql
INSERT INTO autores (id, nome) VALUES
(1, 'J.K. Rowling'),
(2, 'George Orwell');

INSERT INTO Livros (id, titulo, isbn, ano_publicacao, autor_id) VALUES
(1, 'Harry Potter e a Pedra Filosofal', '9780747532699', 1997, 1),
(2, '1984', '9780451524935', 1949, 2);
```

---

## 🔎 Consultas

### 📌 Listar todos os livros

```sql
SELECT * FROM Livros;
```

### 📌 Livros publicados após 2020

```sql
SELECT * FROM Livros
WHERE ano_publicacao > 2020;
```

---

## ⚠️ Teste de Integridade Referencial

```sql
INSERT INTO Livros (id, titulo, isbn, ano_publicacao, autor_id)
VALUES (10, 'Livro Teste', '123', 2022, 999);
```

---

## 🧠 Explicação do Erro

O erro acontece porque o `autor_id` informado não existe na tabela **autores**, violando a chave estrangeira.

---

## ✅ Conclusão

Este trabalho demonstra:

* Como criar e utilizar um banco de dados relacional
* A importância das chaves estrangeiras
* Como o banco garante a consistência dos dados
* Execução de consultas básicas

---
