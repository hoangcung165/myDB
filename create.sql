use javaservlet;

create table role(
                     id bigint NOT NULL PRIMARY KEY auto_increment,
                     name VARCHAR(150) NOT NULL,
                     code VARCHAR(150) NOT NULL,
                     createddate timestamp NULL,
                     modifieddate timestamp null,
                     createdby VARCHAR(255) NULL,
                     modifiedby VARCHAR(255) NULL
);
create table user(
                     id bigint NOT NULL PRIMARY KEY auto_increment,
                     username VARCHAR(150) NOT NULL,
                     password VARCHAR(150) NOT NULL,
                     fullname VARCHAR(150) NOT NULL,
                     status INT NOT NULL,
                     roleID bigint NOT NULL,
                     createddate timestamp NULL,
                     modifieddate timestamp null,
                     createdby VARCHAR(255) NULL,
                     modifiedby VARCHAR(255) NULL
);

ALTER TABLE user ADD CONSTRAINT fk_user_role FOREIGN KEY (roleID) REFERENCES role(id);


CREATE TABLE news(
                     id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                     title VARCHAR(150) NULL,
                     thumbnail VARCHAR(150) NULL,
                     shortdescription TEXT NULL,
                     content TEXT NULL,
                     categoryid bigint not null,
                     createddate timestamp NULL,
                     modifieddate timestamp null,
                     createdby VARCHAR(255) NULL,
                     modifiedby VARCHAR(255) NULL
);

CREATE TABLE category(
                         id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         name VARCHAR(255) NOT NULL,
                         code VARCHAR(255) NOT NULL,
                         createddate timestamp NULL,
                         modifieddate timestamp null,
                         createdby VARCHAR(255) NULL,
                         modifiedby VARCHAR(255) NULL
);
ALTER TABLE news ADD CONSTRAINT fk_news_category FOREIGN KEY (categoryid) REFERENCES category(id);
CREATE TABLE comment(
                        id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        content TEXT NOT NULL,
                        user_id BIGINT NOT NULL,
                        news_id BIGINT NOT NULL,
                        createddate timestamp NULL,
                        modifieddate timestamp null,
                        createdby VARCHAR(255) NULL,
                        modifiedby VARCHAR(255) NULL
);
.

