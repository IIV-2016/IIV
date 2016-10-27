DROP TABLE user;
DROP TABLE activity;
DROP TABLE gallery;
DROP TABLE notice;
DROP TABLE community;
DROP TABLE alumni;
DROP TABLE comment;
DROP TABLE authority;
DROP TABLE community_likes_history;

create table user (
	 id INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
     username varchar(50) NULL UNIQUE,
     password varchar(500) NULL,
     firstname varchar(50) NULL,
     lastname varchar(50) NULL,
     email varchar(50) NULL,
     isAccountNonExpired boolean DEFAULT TRUE,
     isAccountNonLocked boolean DEFAULT TRUE,
     isCredentialsNonExpired boolean DEFAULT TRUE,
     isEnabled boolean DEFAULT TRUE
);

create table authority (
	 id INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
     username varchar(50) NULL UNIQUE,
     authority_name varchar(50) NULL
);

CREATE TABLE activity (
	id INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	sector VARCHAR(50) NULL,
	title VARCHAR(100) NULL,
	content VARCHAR(1000) NULL,
	file_id VARCHAR(100) NULL,
	user_id VARCHAR(50) NULL,
	write_date DATE,
	views INT(100) DEFAULT 0,
	likes INT(100) DEFAULT 0
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE gallery (
	id INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	link VARCHAR(100) NULL,
	year VARCHAR(50) NULL
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE notice (
	id INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	sector VARCHAR(50) NULL,
	title VARCHAR(100) NULL,
	content VARCHAR(1000) NULL,
	file_id VARCHAR(100) NULL,
	user_id VARCHAR(50) NULL,
	write_date DATE,
	views INT(100) DEFAULT 0,
	likes INT(100) DEFAULT 0
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE community (
	id INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	sector VARCHAR(50) NULL,
	title VARCHAR(100) NULL,
	content VARCHAR(5000) NULL,
	file_id VARCHAR(100) NULL,
	user_id VARCHAR(50) NULL,
	write_date DATE,
	views INT(100) DEFAULT 0,
	likes INT(100) DEFAULT 0
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE alumni (
	id INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	sector VARCHAR(50) NULL,
	title VARCHAR(100) NULL,
	content VARCHAR(1000) NULL,
	file_id VARCHAR(100) NULL,
	user_id VARCHAR(50) NULL,
	write_date DATE,
	views INT(100) DEFAULT 0,
	likes INT(100) DEFAULT 0
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE comment (
	id INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	content VARCHAR(1000) NULL,
	user_id VARCHAR(50) NULL,
	write_date DATE,
	board_id INT(100) UNSIGNED NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE community_likes_history (
	id INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	post_id int(100) NULL,
	username varchar(50) NULL,
	state BOOLEAN DEFAULT FALSE
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

COMMIT;