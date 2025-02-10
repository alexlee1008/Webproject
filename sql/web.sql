create table member (
    name varchar2(50) not null,
    id varchar2(10) not null,
    pw varchar2(15) not null,
    birth varchar(13) not null,
    phone1 varchar2(4) not null,
    phone2 varchar2(4) not null,
    phone3 varchar2(4) not null,
    email varchar2(60) not null,
    post varchar2(5) not null,
    addr1 varchar2(500) not null,
    addr2 varchar2(500) not null,
    root varchar2(100),
    reg date default sysdate
);


commit;


create table board (
    bno number primary key,
    title varchar2(200) not null,
    content varchar2(4000),
    writer varchar2(50) not null,
    readcount number default 0,
    regDate date default sysdate,
    updateDate date default sysdate
);
create sequence board_seq nocache;

-- test
insert into board values (board_seq.nextval, 'test33', '내용내용', '이서준', 0, sysdate, sysdate);

commit;