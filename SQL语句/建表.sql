create table tb_XT(
	id int identity primary key,
	userId int not null,
	XT varchar(10) not null,--Ѫ�� blood glucose
	GY varchar(10) not null,--��ѹ
	DY varchar(10) not null,--��ѹ
	XL varchar(10) not null,--����
	TZ varchar(10) not null,--��֬
	createTime datetime default getdate()
)

