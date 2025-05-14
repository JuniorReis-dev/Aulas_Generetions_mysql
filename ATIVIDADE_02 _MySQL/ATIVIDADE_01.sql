create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
 id BIGINT AUTO_INCREMENT PRIMARY KEY,
 classes varchar(255),
 descricao VARCHAR(255)
    );
INSERT INTO tb_classes (classes, descricao) 
VALUES 
    ("Guerreiro", "Especialista em combate corpo a corpo, usando espadas, lanças ou machados. Tem alta resistência e força bruta"),
    ("Mago", "Mestre das artes arcanas, manipulando feitiços de fogo, gelo ou eletricidade para derrotar inimigos à distância"),
    ("Arqueiro", "Habilidoso no uso de arcos e bestas, destacando-se por ataques rápidos e precisos de longa distância"),
    ("Paladino", "Guerreiro sagrado que combina força física com habilidades de cura e proteção, ideal para liderar batalhas"),
    ("Assassino", "Ágil e furtivo, especializado em ataques rápidos e letais, surpreendendo inimigos com golpes críticos");
    
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    poder_de_ataque INT,
    poder_de_defesa INT,
    descricao VARCHAR(500),
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, poder_de_ataque, poder_de_defesa, descricao, classe_id)
VALUES
    ("Darian", 2200, 3000, "Um combatente destemido que lidera batalhas em terrenos perigosos. Ele empunha uma enorme espada forjada nas chamas da guerra e resiste aos golpes mais brutais graças à sua armadura pesada", 1),
    ("Eldora", 2800, 1500, "Uma mestra das artes arcanas que manipula a neve e o frio para congelar seus inimigos no campo de batalha. Seus feitiços podem criar tempestades glaciais e aprisionar adversários em cristais de gelo", 2),
    ("Kael", 2500, 1700, "Um atirador habilidoso que nunca erra seu alvo. Com sua mira precisa e flechas encantadas, ele consegue atingir inimigos à distância antes mesmo que percebam sua presença", 3),
    ("Lucius", 2100, 3100, "Um guerreiro devoto que luta pela justiça e proteção dos inocentes. Seu escudo divino é capaz de repelir feitiços e sua lâmina resplandece com a luz sagrada, restaurando a energia de seus aliados", 4),
    ("Selina", 2800, 1400, "Uma especialista em furtividade e ataques rápidos. Movendo-se como um espectro, ela elimina inimigos antes que possam perceber sua presença, deixando apenas o silêncio e o mistério no ar", 5),
    ("Varok", 2600, 2800, "Um guerreiro feroz que manipula o fogo em batalha. Sua armadura resiste a altas temperaturas, permitindo que ele cause destruição com sua lâmina flamejante", 1),
    ("Ezra", 2400, 1800, "Um arqueiro furtivo que prefere caçar à noite. Suas flechas envenenadas paralisam adversários antes que possam contra-atacar", 3),
    ("Reyna", 2900, 1300, "Uma assassina implacável que se move entre as sombras. Seus ataques rápidos e precisos garantem que seus inimigos nunca vejam seu fim chegando", 5);
SELECT * FROM tb_personagens WHERE poder_de_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_de_defesa < 2000;
SELECT * FROM tb_personagens WHERE poder_de_defesa between 1000 and 2000;
SELECT * FROM tb_personagens WHERE nome like "%C%";
select * from tb_classes inner join tb_personagens
ON tb_personagens.classe_id = tb_classes.id;

select * from tb_classes inner join tb_personagens
ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.classes = 'Arqueiro';

-- drop database db_generation_game_online;