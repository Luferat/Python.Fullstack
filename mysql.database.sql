-- Apagar a tabela se ela existir
DROP TABLE IF EXISTS article;

-- Criar a nova tabela com os campos especificados e prefixo "art_"
CREATE TABLE article (
    art_id INT PRIMARY KEY AUTO_INCREMENT,
    art_name VARCHAR(255),
    art_email VARCHAR(255),
    art_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    art_title VARCHAR(255),
    art_intro VARCHAR(255),
    art_image VARCHAR(255),
    art_content TEXT,
    art_views INT,
    art_status ENUM('on', 'off') DEFAULT 'on'
) CHARSET=utf8 COLLATE=utf8_general_ci;

-- Inserir dados fictícios na tabela article
INSERT INTO article (art_name, art_email, art_title, art_intro, art_image, art_content, art_views, art_status) 
VALUES ('Autor 1', 'autor1@email.com', 'Título 1', 'Introdução 1', 'imagem1.jpg', 'Conteúdo 1', 100, 'on');

INSERT INTO article (art_name, art_email, art_title, art_intro, art_image, art_content, art_views, art_status) 
VALUES ('Autor 2', 'autor2@email.com', 'Título 2', 'Introdução 2', 'imagem2.jpg', 'Conteúdo 2', 150, 'on');

INSERT INTO article (art_name, art_email, art_title, art_intro, art_image, art_content, art_views, art_status) 
VALUES ('Autor 3', 'autor3@email.com', 'Título 3', 'Introdução 3', 'imagem3.jpg', 'Conteúdo 3', 120, 'off');

INSERT INTO article (art_name, art_email, art_title, art_intro, art_image, art_content, art_views, art_status) 
VALUES ('Autor 4', 'autor4@email.com', 'Título 4', 'Introdução 4', 'imagem4.jpg', 'Conteúdo 4', 200, 'on');

INSERT INTO article (art_name, art_email, art_title, art_intro, art_image, art_content, art_views, art_status) 
VALUES ('Autor 5', 'autor5@email.com', 'Título 5', 'Introdução 5', 'imagem5.jpg', 'Conteúdo 5', 80, 'off');
