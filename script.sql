create database dbBiblioteca;
use dbBiblioteca;

create table Usuarios(
id int primary key auto_increment,
nome varchar(100),
email varchar(100),
senha_Hash varchar(255),
role enum('Bibliotecario','Admin'),
ativo tinyint(1) default 1,
criado_Em datetime default current_timestamp
);

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_usuario_criar $$
CREATE PROCEDURE sp_usuario_criar (
    IN p_nome VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_senha_hash VARCHAR(255),
    IN p_role VARCHAR(20) 
)
BEGIN
    INSERT INTO Usuarios (nome, email, senha_Hash, role, ativo, criado_Em)
    VALUES (p_nome, p_email, p_senha_hash, p_role, 1, NOW());
END $$
DELIMITER ;

CALL sp_usuario_criar(
    'João Admin',
    'joao@biblioteca.com',
    '$2a$11$HASHADMINEXEMPLO9876543210',
    'Admin'
);

select * from usuarios;