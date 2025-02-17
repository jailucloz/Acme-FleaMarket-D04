
    alter table `administrator` 
       drop 
       foreign key FK_2a5vcjo3stlfcwadosjfq49l1;

    alter table `anonymous` 
       drop 
       foreign key FK_6lnbc6fo3om54vugoh8icg78m;

    alter table `audit_record` 
       drop 
       foreign key `FKdcrrgv6rkfw2ruvdja56un4ji`;

    alter table `audit_record` 
       drop 
       foreign key `FK47tigk6nwo26xcchn2ngnlj4f`;

    alter table `auditor` 
       drop 
       foreign key FK_clqcq9lyspxdxcp6o4f3vkelj;

    alter table `authenticated` 
       drop 
       foreign key FK_h52w0f3wjoi68b63wv9vwon57;

    alter table `buyer` 
       drop 
       foreign key FK_630a954if6nal5afofvjy73ob;

    alter table `consumer` 
       drop 
       foreign key FK_6cyha9f1wpj0dpbxrrjddrqed;

    alter table `forum` 
       drop 
       foreign key `FKrgdtbakxmpiv2k47q778a77qa`;

    alter table `forum_authenticated` 
       drop 
       foreign key `FKbfu7rkr4imldqrkswlqieb4dv`;

    alter table `forum_authenticated` 
       drop 
       foreign key `FKd1ebx6x0cql1bxphvu15qxh2x`;

    alter table `item` 
       drop 
       foreign key `FK7r7pmef5wvaepffbi0xfrso2c`;

    alter table `message` 
       drop 
       foreign key `FKfwwpivgx5j4vw4594dgrw884q`;

    alter table `message` 
       drop 
       foreign key `FKik4epe9dp5q6uenarfyia7xin`;

    alter table `provider` 
       drop 
       foreign key FK_b1gwnjqm6ggy9yuiqm0o4rlmd;

    alter table `request_item` 
       drop 
       foreign key `FKl95xyup7566n80564w7082s`;

    alter table `request_item` 
       drop 
       foreign key `FKj6yooir0deg6w70lmjtf4pa1k`;

    alter table `request_item` 
       drop 
       foreign key `FKc2csi1fre6mjxwc8g5492iqcv`;

    alter table `section` 
       drop 
       foreign key `FK1p9pdohs3k78gp2gsf86f0fsv`;

    alter table `sheet_section` 
       drop 
       foreign key `FK1uvqucipxvh0svbnq59ydko6u`;

    alter table `sheet_section` 
       drop 
       foreign key `FKt5i38pyxa8cwughj9v40goy9n`;

    alter table `supplier` 
       drop 
       foreign key FK_1h83guf8tf3di74bk4uhuo1ia;

    drop table if exists `administrator`;

    drop table if exists `advertisement`;

    drop table if exists `anonymous`;

    drop table if exists `audit_record`;

    drop table if exists `auditor`;

    drop table if exists `authenticated`;

    drop table if exists `buyer`;

    drop table if exists `consumer`;

    drop table if exists `customisation`;

    drop table if exists `figment`;

    drop table if exists `forum`;

    drop table if exists `forum_authenticated`;

    drop table if exists `item`;

    drop table if exists `lucas_bulletin`;

    drop table if exists `material_sheet`;

    drop table if exists `message`;

    drop table if exists `news`;

    drop table if exists `provider`;

    drop table if exists `request_item`;

    drop table if exists `section`;

    drop table if exists `sheet`;

    drop table if exists `sheet_section`;

    drop table if exists `suggestion`;

    drop table if exists `supplier`;

    drop table if exists `tool_sheet`;

    drop table if exists `user_account`;

    drop table if exists `hibernate_sequence`;
