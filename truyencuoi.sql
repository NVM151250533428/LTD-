CREATE DATABASE TRUYENCUOI
go
use TRUYENCUOI
go

create table TheLoai(
MaTL char(10) primary key,
Ten nvarchar(50) not null,
SL int not null,
)
insert into TheLoai values('TL01',N'Truyện Cười Tình Yêu','52')
insert into TheLoai values('TL02',N'Truyện Trạng quỳnh','35')
insert into TheLoai values('TL03',N'Truyện cười dân gian','101')
insert into TheLoai values('TL04',N'Truyện cười người lớn','113')
insert into TheLoai values('TL05',N'Truyện cười thế giới','87')
insert into TheLoai values('TL06',N'Truyện cười gia đình','20')
insert into TheLoai values('TL07',N'Truyện cười con gái','23')
insert into TheLoai values('TL08',N'Truyện cười con nít','85')
insert into TheLoai values('TL09',N'Truyện cười con trai','54')
insert into TheLoai values('TL10',N'Truyện cười y học','65')
insert into TheLoai values('TL11',N'Truyện cười nghề nghiệp','80')
insert into TheLoai values('TL12',N'Truyện cười học đường','54')
insert into TheLoai values('TL13',N'Truyện cười giao thông','95')
insert into TheLoai values('TL14',N'Truyện cười vova','105')
create table Truyen (
MaTr char(10) primary key,
MaTL char(10) foreign  key(MaTL) references TheLoai(MaTL),
TenTruyen nvarchar(50) not null,
ND text not null
)
insert into Truyen values('T01','TL01',N'Lộ tẩy','Nửa đêm, một gã say rượu bị ngã trầy mông, chảy máu be bét.Anh ta mò về nhà, lén mở tủ thuốc, soi gương để tự rửa vết thương và băng bó cho mình. Xong xuôi, thấy bà vợ vẫn ngủ say, anh chồng lấy làm đắc chí nghĩ rằng sẽ lừa được vợ, sáng hôm sau, hắn bị dựng dậy vì có tiếng quát của vợ: -có chuyện gì vậy? -Hôm qua, ông lại say rượu phải không? -Đâu...đâu có!! -Thế ai dán đầy băng tăm thuốc đỏ lên cái gương của tôi hả???')