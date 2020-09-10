CREATE TABLE `tb_postagem` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(120) NOT NULL DEFAULT 'not  null',
	`text_box` varchar(2200) NOT NULL,
	`data_post` DATETIME NOT NULL DEFAULT 'not  null',
	`localizacao` varchar(120) NOT NULL,
	`sangue` varchar(30) NOT NULL DEFAULT 'not null',
	`tema_id` bigint NOT NULL DEFAULT 'not null',
	`usuario_id` bigint NOT NULL DEFAULT 'not  null',
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_tema` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL DEFAULT 'not null',
	`data_tema` DATETIME NOT NULL DEFAULT 'not null',
	`ativo` BOOLEAN NOT NULL DEFAULT 'not null',
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(60) NOT NULL DEFAULT 'not null',
	`email` varchar(80) NOT NULL DEFAULT 'not null',
	`senha` varchar(20) NOT NULL DEFAULT 'not null',
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`tema_id`) REFERENCES `tb_tema`(`id`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario`(`id`);

