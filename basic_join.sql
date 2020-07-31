--drop table t1 cascade;

create table if not exists t1
(
	id int not null,
	surname varchar(30) not null,
	birthday date,
	amount int not null,
	salary int not null,
	constraint pk_t1 primary key (id)
);

insert into t1 (id, surname, birthday, amount, salary) 
values
	('2335', '������', '14.11.1992', '200000', '50000'),
	('6337', '������', '23.04.1978', '500000', '70000'),
	('3345', '�������', '09.09.1982', '300000', '58000'),
	('4774', '��������', '03.12.1990', '350000', '35000'),
	('8685', '����', '19.03.1984', '1000000', '20000');

select * from t1;

--drop table t2 cascade;

create table if not exists t2
(
	id int,
	status varchar(10),
	constraint pk_t2 primary key (id)
);

 insert into t2 (id, status) 
 values
	('2335', '�����'),
	('6337', '�����'),
	('3345', '�����'),
	('4774', '�����'),
	('8685', '�����');
	
select * from t2;

select surname
from t1
left join t2
	on t1.id = t2.id
where status = '�����';