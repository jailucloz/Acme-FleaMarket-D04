
    create table `administrator` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `advertisement` (
       `id` integer not null,
        `version` integer not null,
        `average_discount_amount` double precision,
        `average_discount_currency` varchar(255),
        `creation_moment` datetime(6),
        `deadline` datetime(6),
        `description` varchar(255),
        `initial_time` datetime(6),
        `large_discount_amount` double precision,
        `large_discount_currency` varchar(255),
        `picture` varchar(255),
        `small_discount_amount` double precision,
        `small_discount_currency` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `anonymous` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `audit_record` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(255),
        `creation_moment` datetime(6),
        `status` varchar(255),
        `title` varchar(255),
        `auditor_id` integer not null,
        `item_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `auditor` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `firm_name` varchar(255),
        `responsability_statement` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `authenticated` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `buyer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `credit_card` varchar(255),
        `delivery_addres` varchar(255),
        `email` varchar(255),
        `phone_number` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `consumer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `customisation` (
       `id` integer not null,
        `version` integer not null,
        `item_categories` varchar(255),
        `news_categories` varchar(255),
        `spam` varchar(255),
        `threshold` double precision,
        primary key (`id`)
    ) engine=InnoDB;

    create table `figment` (
       `id` integer not null,
        `version` integer not null,
        `creation_moment` datetime(6),
        `description` varchar(255),
        `inventor_name` varchar(255),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `forum` (
       `id` integer not null,
        `version` integer not null,
        `title` varchar(255),
        `item_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `forum_authenticated` (
       `forum_id` integer not null,
        `users_id` integer not null
    ) engine=InnoDB;

    create table `item` (
       `id` integer not null,
        `version` integer not null,
        `additional_information` varchar(255),
        `creation_moment` datetime(6),
        `description_text` varchar(255),
        `item_category` varchar(255),
        `photo` varchar(255),
        `price_amount` double precision,
        `price_currency` varchar(255),
        `ticker` varchar(255),
        `title` varchar(255),
        `supplier_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `lucas_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `moment` datetime(6),
        `text` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `material_sheet` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(255),
        `home_page` varchar(255),
        `provider_name` varchar(255),
        `stars` integer,
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `message` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(255),
        `creation_moment` datetime(6),
        `tags` varchar(255),
        `title` varchar(255),
        `forum_id` integer not null,
        `user_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `news` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(1024),
        `category` varchar(255),
        `deadline` datetime(6),
        `header_picture` varchar(255),
        `related_news` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `provider` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `request_item` (
       `id` integer not null,
        `version` integer not null,
        `creation_moment` datetime(6),
        `notes` varchar(255),
        `quantity` integer,
        `ticker` varchar(255),
        `buyer_id` integer not null,
        `item_id` integer not null,
        `supplier_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `section` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(255),
        `indexer` integer,
        `photo` varchar(255),
        `title` varchar(255),
        `item_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `sheet` (
       `id` integer not null,
        `version` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `sheet_section` (
       `sheet_id` integer not null,
        `sections_id` integer not null
    ) engine=InnoDB;

    create table `suggestion` (
       `id` integer not null,
        `version` integer not null,
        `creation_moment` datetime(6),
        `description` varchar(255),
        `email` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `supplier` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `description` varchar(255),
        `home_page` varchar(255),
        `item_category` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `tool_sheet` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(1024),
        `home_page` varchar(255),
        `provider_name` varchar(255),
        `stars` integer,
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `user_account` (
       `id` integer not null,
        `version` integer not null,
        `enabled` bit not null,
        `identity_email` varchar(255),
        `identity_name` varchar(255),
        `identity_surname` varchar(255),
        `password` varchar(255),
        `username` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `hibernate_sequence` (
       `next_val` bigint
    ) engine=InnoDB;

    insert into `hibernate_sequence` values ( 1 );

    alter table `forum` 
       add constraint UK_c5hjl933amnwf8mq1v2lf45jo unique (`item_id`);

    alter table `item` 
       add constraint UK_d60jfv0vlrqswikfeec1le23u unique (`ticker`);

    alter table `request_item` 
       add constraint UK_4id455fdcp9vi9tvbkh9ufbqk unique (`ticker`);

    alter table `section` 
       add constraint UK_ass7sokvh8np3ga5ql0s62ktd unique (`indexer`);

    alter table `sheet_section` 
       add constraint UK_pdmo9jgd8gsveh7xm08vc2lay unique (`sections_id`);

    alter table `user_account` 
       add constraint UK_castjbvpeeus0r8lbpehiu0e4 unique (`username`);

    alter table `administrator` 
       add constraint FK_2a5vcjo3stlfcwadosjfq49l1 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `anonymous` 
       add constraint FK_6lnbc6fo3om54vugoh8icg78m 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `audit_record` 
       add constraint `FKdcrrgv6rkfw2ruvdja56un4ji` 
       foreign key (`auditor_id`) 
       references `auditor` (`id`);

    alter table `audit_record` 
       add constraint `FK47tigk6nwo26xcchn2ngnlj4f` 
       foreign key (`item_id`) 
       references `item` (`id`);

    alter table `auditor` 
       add constraint FK_clqcq9lyspxdxcp6o4f3vkelj 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `authenticated` 
       add constraint FK_h52w0f3wjoi68b63wv9vwon57 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `buyer` 
       add constraint FK_630a954if6nal5afofvjy73ob 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `consumer` 
       add constraint FK_6cyha9f1wpj0dpbxrrjddrqed 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `forum` 
       add constraint `FKrgdtbakxmpiv2k47q778a77qa` 
       foreign key (`item_id`) 
       references `item` (`id`);

    alter table `forum_authenticated` 
       add constraint `FKbfu7rkr4imldqrkswlqieb4dv` 
       foreign key (`users_id`) 
       references `authenticated` (`id`);

    alter table `forum_authenticated` 
       add constraint `FKd1ebx6x0cql1bxphvu15qxh2x` 
       foreign key (`forum_id`) 
       references `forum` (`id`);

    alter table `item` 
       add constraint `FK7r7pmef5wvaepffbi0xfrso2c` 
       foreign key (`supplier_id`) 
       references `supplier` (`id`);

    alter table `message` 
       add constraint `FKfwwpivgx5j4vw4594dgrw884q` 
       foreign key (`forum_id`) 
       references `forum` (`id`);

    alter table `message` 
       add constraint `FKik4epe9dp5q6uenarfyia7xin` 
       foreign key (`user_id`) 
       references `authenticated` (`id`);

    alter table `provider` 
       add constraint FK_b1gwnjqm6ggy9yuiqm0o4rlmd 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `request_item` 
       add constraint `FKl95xyup7566n80564w7082s` 
       foreign key (`buyer_id`) 
       references `buyer` (`id`);

    alter table `request_item` 
       add constraint `FKj6yooir0deg6w70lmjtf4pa1k` 
       foreign key (`item_id`) 
       references `item` (`id`);

    alter table `request_item` 
       add constraint `FKc2csi1fre6mjxwc8g5492iqcv` 
       foreign key (`supplier_id`) 
       references `supplier` (`id`);

    alter table `section` 
       add constraint `FK1p9pdohs3k78gp2gsf86f0fsv` 
       foreign key (`item_id`) 
       references `item` (`id`);

    alter table `sheet_section` 
       add constraint `FK1uvqucipxvh0svbnq59ydko6u` 
       foreign key (`sections_id`) 
       references `section` (`id`);

    alter table `sheet_section` 
       add constraint `FKt5i38pyxa8cwughj9v40goy9n` 
       foreign key (`sheet_id`) 
       references `sheet` (`id`);

    alter table `supplier` 
       add constraint FK_1h83guf8tf3di74bk4uhuo1ia 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);
