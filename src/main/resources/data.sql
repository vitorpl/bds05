INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_MEMBER');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 3);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);

INSERT INTO TB_GENRE (NAME) values ('Terror');
INSERT INTO TB_GENRE (NAME) values ('Comédia');
INSERT INTO TB_GENRE (NAME) values ('Ficção Científica');

INSERT INTO TB_MOVIE (IMG_URL,TITLE,SUB_TITLE,SYNOPSIS,YEAR,GENRE_ID) values
('https://upload.wikimedia.org/wikipedia/pt/d/de/White_chicks.jpeg', 'As Branquelas', 'As Branquelas',
'Dois policiais se desfarçam de mulher para desbancar um estelionatário famoso', 2004, 2);
INSERT INTO TB_MOVIE (IMG_URL,TITLE,SUB_TITLE,SYNOPSIS,YEAR,GENRE_ID) values
('https://www.itaucinemas.com.br/_img/_filmes/1375_capa.jpg?O-Iluminado', 
'O Iluminado', 'O Iluminado',
'Um homem consegue um emprego para tomar conta de um hotel no inverno e leva sua família', 1980, 3);
INSERT INTO TB_MOVIE (IMG_URL,TITLE,SUB_TITLE,SYNOPSIS,YEAR,GENRE_ID) values
('https://img.elo7.com.br/product/zoom/26799EE/big-poster-filme-matrix-lo01-tamanho-90x60-cm-poster.jpg', 
'Matrix', 'Matrix',
'Um mundo digital realista muito boladão', 1980, 3);  

insert into tb_review (USER_ID,TEXT,ID_MOVIE)
values (2, 'Achei esse filme bem boladão', 3);
insert into tb_review (USER_ID,TEXT,ID_MOVIE)
values (2, 'Esse é de cagar de rir, já assisti umas 10 vezes na sessão da tarde', 1);  	
