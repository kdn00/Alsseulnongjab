CREATE TABLE tb_member (
        mem_pk	int	NOT NULL AUTO_INCREMENT PRIMARY KEY,
        mem_user_id	varchar(30) NOT NULL UNIQUE,
        mem_user_pw	varchar(30) NOT NULL,
        mem_user_name varchar(30) NOT NULL,
        mem_user_email varchar(30) NOT NULL UNIQUE,
        mem_user_job varchar(30) NOT NULL,
        mem_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

select * from tb_member;

--INSERT INTO tb_member(mem_user_id, mem_user_pw, mem_user_name, mem_user_email, mem_user_job)
--VALUES ('admin', '1234', '관리자', 'admin@mail.com', '관리자');