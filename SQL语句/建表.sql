create table tb_XT(
	id int identity primary key,
	userId int not null,
	XT varchar(10) not null,--血糖 blood glucose
	GY varchar(10) not null,--高压
	DY varchar(10) not null,--低压
	XL varchar(10) not null,--心率
	TZ varchar(10) not null,--体脂
	createTime datetime default getdate()
)

