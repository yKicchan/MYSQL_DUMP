create table `roles` (
  `id` INT unsigned not null AUTO_INCREMENT,
  `name` VARCHAR(20) not null,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table `adventurers` (
  `id` INT unsigned NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `gender` VARCHAR(5) NOT NULL,
  `role_id` INT unsigned NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  constraint `fk_role` foreign key (`role_id`) references `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `roles` (`name`) values ('剣士'), ('戦士'), ('魔法使い'), ('僧侶');

insert into `adventurers` (`name`, `gender`, `role_id`) values
('タロウ', 'M', 1),
('アリサ', 'F', 2),
('スギタ', 'F', 3),
('アオイ', 'F', 4);
