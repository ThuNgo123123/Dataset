--create database data_dish;
--use data_dish;
create table MONAN(
	MaMonAn varchar(6) primary key,
	TenMonAn nvarchar(255),
	LoaiMonAn bit not null,
	HinhAnh text,
	CachThucHien ntext,

);

create table NGUYENLIEU(
	MaNguyenLieu varchar(6) primary key,
	TenNguyenLieu nvarchar(255),
);

create table CTMA(
	MaMonAn varchar(6) not null,
	MaNguyenLieu varchar(6) not null,
	LieuLuong nvarchar(50),
);

alter table CTMA add constraint PK_CTMA primary key (MaMonAn, MaNguyenLieu);
alter table CTMA add constraint FK_CTMA_MONAN foreign key (MaMonAn) references MONAN (MaMonAn);
alter table CTMA add constraint FK_CTMA_NGUYENLIEU foreign key (MaNguyenLieu) references NGUYENLIEU (MaNguyenLieu);

--drop table CTMA;
--drop table MONAN;
--drop table NGUYENLIEU;
--drop database data_dish;

--delete from MONAN;
--delete from CTMA;
--delete from NGUYENLIEU;

-- select * from MONAN;
-- select * from NGUYENLIEU;
-- select count(*) from CTMN;

-- data MONAN																						
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0001', N'Thịt vịt kho tàu', '0', N'https://cdn.tgdd.vn/2021/01/CookProduct/cach-lam-mon-thit-vit-kho-tau1200-1200x676.jpg', N'1.Sơ chế thịt vịt
Vịt khi mua về, bạn rửa sạch bên trong lẫn bên ngoài vịt với nước, cắt thành miếng vừa ăn khoảng 2 lóng tay.

Sau đó, bạn bắc nồi lên bếp mở lửa vừa, thêm 1 lít nước nấu sôi, thêm 1 muỗng canh muối, gừng đập dập, thịt vịt vào nồi, chần trong 3 - 5 phút và rửa lại thật sạch, để ráo. 
2.Ướp thịt vịt
Ớt sừng bạn bỏ hạt rồi cắt nhỏ. Tỏi bóc vỏ rồi bạn giã nhuyễn tỏi và ớt sừng.

Cho thịt vịt vào tô ướp với tỏi ớt giã nhuyễn, 1.5 muỗng canh muối, 1/2 muỗng canh bột ngọt, 2 muỗng canh đường, 1 muỗng cà phê nước cốt chanh.

Bạn trộn đều và ướp thịt vịt khoảng 1 tiếng để thịt thấm gia vị. 
3.Luộc trứng vịt
Trứng vịt rửa sạch, cho vào nồi luộc trong 5 - 7 phút trên lửa vừa. Sau đó để nguội, bóc sạch vỏ.
4. Thắng nước màu
Bắc nồi lên bếp mở lửa vừa, thêm 1 muỗng canh đường, 1 muỗng canh nước lọc, dùng đũa khuấy đều đến khi nước đường trở màu nâu cánh gián thì thêm 2 muỗng canh nước lọc rồi tắt bếp.
5. Kho thịt vịt
Bắc nồi lên bếp ở lửa vừa, thêm 1.5 lít nước lọc, 500ml nước cốt dừa, nước màu, gắp thịt đã ướp cho vào nồi, nấu sôi và vớt bớt bọt.

Chỉnh lửa nhỏ, dùng tăm châm trứng vịt rồi thêm vào nồi, lấy 1 lá chuối đậy lên nồi thịt và kho trong 1 tiếng.

Sau 1 tiếng, bạn nêm thêm 3 muỗng canh nước mắm, nêm nếm lại gia vị cho vừa ăn, tiếp tục nấu thêm 20 rồi lấy lá chuối ra, tắt bếp.
6. Thành phẩm
Món thịt vịt kho tàu cực ngon đã hoàn thành và có thể dùng nóng. Món ăn mềm ngon, đậm đà, thịt vịt beo béo kết hợp với trứng vịt bùi bùi cực đưa cơm đấy nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0002', N'Gà ác tiềm thuốc bắc', '0', N'https://cdn.tgdd.vn/Files/2019/06/16/1173500/video-cach-lam-ga-tiem-thuoc-bac-ngon-nhieu-dam-bo-mau-de-lam-tai-nha6.jpg', N'1.Sơ chế gà ác với gừng băm và 50ml rượu trắng, thoa đều gừng và rượu khắp mình gà để khử mùi sau đó đem rửa sạch lại với nước lạnh.
2.Bắc nồi lên bếp, cho gà ác vào nồi. Lần lượt cho các nguyên liệu thuốc bắc là xuyên khung, đỗ trọng, thục địa, hoài sơn, táo đỏ, đương quy, đẳng sâm, nhãn nhục và kỷ tử, mỗi loại 15gr vào nồi. Cho vào 700ml nước dừa tươi vào nồi, bật lửa lớn, nấu đến khi sôi.
3.Khi nồi hầm sôi, cho vào 20ml rượu trắng, nêm gia vị với 1 muỗng cà phê muối, 1 muỗng canh hạt nêm và 2 muỗng canh đường. Đậy nắp, hầm lửa nhỏ trong 30 phút đến khi gà chín mềm.
4.Gà ác tiềm thuốc bắc chín để trong thố và dùng nóng, phần thuốc bắc bên trong có những loại hơi khó ăn nhưng nếu ăn được thì sẽ rất tốt cho cơ thể đấy. Khi ăn bạn có thể chấm thịt gà với muối tiêu vắt thêm tắc. Món gà tiềm thuốc bắc ăn rất ấm bụng, dùng vào những ngày mưa lành lạnh sẽ rất phù hợp. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0003', N'Sườn kho tiêu xanh', '0', N'https://image.cooky.vn/posproduct/g0/15473/s400x400/521b8a82-614c-48a1-b245-4a6a28d045d4.jpeg', N'Bước 1:
Rã đông sản phẩm ở nhiệt độ phòng
Bước 2:
Đặt nồi lên bếp, cho sườn non heo kho tiêu (ướp sẵn) vào nồi đảo nhẹ 2-3 phút cho săn, tiếp đến cho 200ml nước lọc vào nồi (lấy phần nước này cho vào hộp sườn ướp để lấy hết phần sốt ướp trong hộp). Kho trên lửa nhỏ đến khi nước kho sệt lại, nêm nếm cho vừa ăn rồi tắt bếp
Bước 3:
Bày món ăn ra dĩa và thưởng thức. Ngon hơn khi ăn nóng cùng cơm trắng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0004', N'Gà ta nấu đậu', '0', N'https://image.cooky.vn/posproduct/g0/409/s/d6219631-b346-4d86-ab26-f2a92e3e2428.jpeg', N'Bước 1:
Rửa sạch gà đã sơ chế, để ráo, ướp cùng gói tương cà và gói gia vị khô trong 10 phút. Khoai tây, cà rốt và đậu rửa sạch, để ráo, cắt khúc vừa ăn.
Bước 2:
Cho 2 muỗng canh dầu ăn vào làm nóng. Chiên sơ khoai tây cà rốt vàng đều các mặt, vớt ra để ráo dầu.
Bước 3:
Cho 2 muỗng dầu ăn vào chảo làm nóng, phi hành tỏi thơm. Cho gà vào xào săn khoảng 5 phút. Cho 200 ml nước vào đun lửa lớn cho sôi, giảm lửa vừa, vớt bọt, nấu 20 phút. Cho tiếp cà rốt vào 5 phút. Sau đó cho khoai tây, đậu nấu khoảng 5 phút nữa. Cho pate và sữa vào nấu 5 phút cho tan đều. Nêm nếm lại cho vừa ăn, nước vừa sệt là có thể dùng.
Bước 4:
Cho gà nấu đậu ra rô và trang trí theo ý thích. Ngon hơn khi dùng với cơm nóng hoặc bánh mì.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0005', N'Gà ta rô ti', '0', N'https://image.cooky.vn/posproduct/g0/4/s/3579a49d-4a88-49c8-9ba7-ab71d2cb1bab.jpeg', N'Bước 1:
Gà rửa sạch, để ráo nước. Hành tỏi băm nhuyễn.
Bước 2:
Cho gà vào tô lớn ướp với gói gia vị ướp gà và gói nước tương cho gà thấm gia vị.
Bước 3:
Cho 2 muỗng canh dầu ăn vào chảo đợi dầu nóng, cho hành tỏi băm vào phi thơm. Sau đó cho gà vào chiên đến khi gà chuyển sang màu vàng thì cho 500ml nước lọc vào tô ướp gà để lấy phần gia vị còn đọng lại rồi đổ vào chảo chiên gà và tiếp tục nấu.

Lật gà thường xuyên để gà thấm điều gia vị. Khi sốt cạn, sệt lại, nêm nếm lại cho vừa ăn thì tắt bếp.
Bước 4:
Cho gà rô ti ra đĩa thưởng thức ngay còn nóng ăn cùng cơm trắng và ăn kèm cùng xà lách, dưa leo hoặc cà chua sẽ làm tăng thêm hương vị của món ăn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0006', N'Cánh gà chiên nước mắm', '0', N'https://image.cooky.vn/posproduct/g0/4462/s/e2505600-1f89-477d-85d2-351224273c65.jpeg', N'Bước 1:
Rửa sạch các nguyên liệu đã sơ chế để ráo nước, hành lá cắt khúc, hành tây rửa sạch cắt mùi cau. Cánh gà cắt miếng vừa ăn hay để nguyên tuỳ thích.
Bước 2:
Bật bếp lên cho 300 ml dầu ăn vào nồi đợi dầu nóng cho cánh gà vào chiên trên lửa vừa từ 7-8 phút cho cánh gà vàng, giòn vớt ra để ráo dầu.
Bước 3:
Cho 2 thìa canh dầu ăn vào chảo, đợi dầu nóng cho gói tỏi băm vào phi thơm. Sau đó cho gói gia vị sốt vào đun 1 phút rồi cho cánh gà vừa chiên xào xóc đều. Tiếp đến, cho hành tây vào đảo đều tay và ớt sừng xắt lát vào đảo đều từ 2-3 phút. Cho hành lá vào đảo đều rồi tắt bếp.
Bước 4:
Bày món ăn ra đĩa, rắc thêm ít tiêu lên mặt sẽ ngon hơn. Ngon hơn khi ăn nóng cùng cơm trắng, sald, dưa leo hay cà chua.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0007', N'Cháo thịt gà bí đỏ', '0', N'https://cdn.tgdd.vn/2022/01/CookDish/cach-nau-chao-thit-ga-bi-do-thom-ngon-hap-dan-cuc-don-gian-avt-1200x676-2.jpg', N'1. Sơ chế và luộc thịt gà
Thịt lườn gà sau khi mua về, rửa sơ cho sạch máu và bụi bẩn rồi cho vào ngâm cùng 1 lát chanh và 1 muỗng cà phê muối trong 5 - 10 phút để khử mùi hôi. Sau đó, rửa lại với nước sạch và cho thịt gà ra rổ, để ráo.

Hành tím và gừng bạn lột vỏ, rửa sạch rồi cắt thành từng khúc dày khoảng 1/2 đốt ngón tay.

Bắc nồi lên bếp, cho khoảng 1 lít nước vào đun đến khi nước sôi thì cho thịt gà cùng hành tím, gừng vào. Luộc gà ở lửa nhỏ khoảng 30 phút, đến khi thịt gà chín, chuyển sang màu trắng.
2. Nấu cháo thịt gà bí đỏ
Tiếp đó, bạn cho 1 chén cơm nguội vào nồi gà luộc, nấu ở lửa nhỏ khoảng 45 phút, đến khi hạt cơm nở bung mềm thành cháo.

Lúc này, bạn cho thêm bí đỏ vào, nấu thêm ở lửa nhỏ khoảng 30 phút, đến khi bí đỏ mềm, hơi nát.
3. Hoàn thành
Cuối cùng, bạn nêm vào nồi cháo 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê đường, khuấy đều, nêm nếm lại cho vừa ăn rồi tắt bếp.

Vớt thịt gà ra khỏi nồi cháo, dùng tay hoặc nĩa xé nhỏ thịt gà. Bạn múc cháo ra tô, cho thịt gà lên trên. Rắc thêm 1 ít tiêu xay, hành lá và ngò rí cắt nhuyễn để trang trí là hoàn tất rồi đấy!
4. Thành phẩm
Cháo thịt gà nấu cùng bí đỏ ấm áp, thơm ngon hấp dẫn vô cùng. Cháo được nấu từ nước luộc gà nên có vị ngọt thanh tự nhiên, được nêm nếm đậm đà vừa ăn.

Thịt gà chắc ngọt, có phần da gà giòn dai, bí đỏ thơm béo ăn cùng cháo chín mềm mại quả là hấp dẫn đúng không nào.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0008', N'Ba rọi heo rim tôm', '0', N'https://image.cooky.vn/posproduct/g0/14161/s400x400/ad6e0cde-5cdd-4e37-b580-c4d942fddda4.jpeg', N'Bước 1:
Rã đông sản phẩm ở nhiệt độ phòng.
Bước 2:
Đặt nồi lên bếp, cho ba rọi heo rim tôm thẻ (ướp sẵn) vào đảo đều trên lửa vừa cho săn lại, tiếp đến cho cơm dừa và 200ml nước lọc vào nồi (lấy phần nước này cho vào hộp thịt ướp để lấy hết phần sốt ướp trong hộp). Kho trên lửa nhỏ đến khi nước kho sệt lại, nêm nếm cho vừa ăn rồi tắt bếp.
Bước 3:
Bày món ăn ra dĩa và thưởng thức. Ngon hơn khi ăn nóng cùng cơm trắng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0009', N'Ba rọi heo chiên da giòn', '0', N'https://image.cooky.vn/posproduct/g0/402/s/a0dd4ed4-e063-4b20-a555-a86ddaa5a94e.jpeg', N'Bước 1:
Rửa sạch thịt, để thịt ráo nước hoặc dùng khăn thấm thật khô.
* Bí quyết: dùng tăm hoặc nĩa nhọn xăm đều vào phần da sẽ giúp da heo phồng lên, giòn rụm.
Bước 2:
Pha gói nước tương và khuấy đều. Xoa đều và ướp thịt trong 15 phút cho thịt thấm gia vị.
Bước 3:
Đặt chảo lên bếp, bật lửa vừa. Cho lượng dầu ăn đủ ngập thịt vào chảo, làm nóng. Xếp từng miếng thịt cho vào chiên theo chiều đứng sao cho lớp da thật giòn. Chiên thêm theo chiều ngang cho lớp thịt vàng đều thì vớt ra thấm cho ráo dầu.
Bước 4:
Cắt thịt thành lát mỏng vửa ăn và trình bày ra đĩa. Có thể ăn kèm cùng ít xà lách, rau sống, dưa leo, cà chua hoặc kim chi.Chấm cùng tương ớt hoặc nước tương tùy theo sở thích.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0010', N'Ba rọi heo kho nước dừa', '0', N'https://image.cooky.vn/posproduct/g0/13583/s400x400/3858bd99-f06f-419a-b58d-5f73899a2dec.jpeg', N'Bước 1:
Rửa sạch các nguyên  liệu đã sơ chế, để ráo nước. Hành lá cắt nhỏ. Ướp ba rọi với gói gia vị kho hoàn chỉnh Kho trong 15 phút.
Bước 2:
Đặt nồi lên bếp, cho 2 muỗng canh dầu ăn vào nồi, đợi dầu nóng, phi thơm hành lá băm .Sau đó, cho hỗn hợp ba rọi ướp vào xào cho thịt săn lại.
Bước 3:
Tiếp đến, rót 100 ml nước lọc và nước dừa vào nấu khoảng 20 phút để nước rút hết và thấm đều vào ba rọi . 
Thêm hành lá vào nồi, nêm nếm cho vừa ăn rồi tắt bếp.
Bước 4:
Bước 4: Bày món ăn ra dĩa, rắc tiêu lên mặt và thưởng thức. Ngon hơn khi ăn nóng cùng cơm trắng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0011', N'Ba rọi heo kho cải chua', '0', N'https://image.cooky.vn/posproduct/g0/3396/s400x400/5bfe279b-9ffc-40e9-a713-14e9d19473ae.jpeg', N'Bước 1:
Rửa sạch các nguyên liệu đã sơ chế, để ráo nước. Gừng cắt lát. Hành lá cắt nhỏ. Ướp thịt heo với gói gia vị hoàn chỉnh trong 20 phút.
Bước 2:
Bật bếp lên cho 2 muỗng canh dầu ăn vào chảo, băm nhuyễn hành tím, tỏi, đợi dầu nóng cho vào phi thơm. Sau đó cho hỗn hợp thịt ướp vào xào cho thịt săn lại, rồi cho 200 ml nước lọc vào đun sôi.
Bước 3:
Tiếp đến cho cải chua, hành tây, gừng vào nấu 10 phút trên lửa vừa cho nước sệt lại, cho hành lá vào đảo đều, nêm nếm lại cho vừa ăn rồi tắt bếp.
Bước 4:
Bày món ăn ra đĩa, rắc tiêu xay lên mặt và thưởng thức. Ngon hơn khi ăn nóng cùng cơm trắng.
Ghi chú:
- Gói gia vị nên đổ từ từ (không đổ hết) để nêm nếm cho vừa ăn.
- Có thể thay đổi định lượng nước và gia vị để phù hợp với khẩu phần và khẩu vị.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0012', N'Thịt xiên nướng cà ri', '0', N'https://image.cooky.vn/recipe/g4/35295/s640/recipe35295-cook-step5-636687434274703337.jpg', N'1.Pha nước sốt cà ri ướp thịt. Bắc nồi lên bếp, làm nóng 2 muỗng canh dầu ăn, cho 30gr tỏi băm, 30gr hành tím băm, 30gr sả băm vào phi vàng thơm. Chế vào nồi 30ml nước lọc và đun sôi hỗn hợp. Tiếp theo cho vào nồi các gia vị: 50gr đường, 50ml nước mắm, 20gr ớt sa tế, 20gr bột cà ri, 5gr bột nghệ, 3gr tiêu rồi khuấy đều. Tiếp theo cho phần nước cốt dừa và thêm ớt băm vào nếu bạn thích ăn cay, khuấy đều lên là hoàn tất phần sốt cà ri.
2.Thịt nạc dăm rửa sạch, cắt thành lát mỏng. Đợi hỗn hợp sốt cà ri nguội bớt thì đổ sốt vào tô thịt cắt lát. Trộn đều thịt với sốt và để yên 30 phút cho thịt ngấm gia vị.
3. Chuẩn bị sẵn que xiên, xiên thịt lần lượt cho đến hết. Nhóm 1 bếp than hồng, xếp từng xiên nướng lên bếp, nướng đến khi thấy thịt săn lại thì phết thêm 1 lớp sốt cà ri lên trên để thịt đậm đà hơn. Vì thịt đã cắt mỏng nên nướng rất nhanh chín, khi nướng nhớ trở đều tay và đừng nướng lâu quá thịt dễ bị khô bạn nhé!
4.Những que xiên nướng thơm nức mùi cà ri, hương vị đậm đà và beo béo của nước cốt dừa, ăn đến đâu mê đến đó. Phần nước sốt cà ri ướp thịt còn dư bạn có thể cho lên bếp nấu sôi rồi dùng làm sốt chấm nhé, đảm bảo không phí một thành phần nào cả. Món xiên nướng ăn với bún tươi hoặc cuốn cùng bánh tráng, nhớ cho thêm ít rau thơm, nghĩ thôi cũng thấy đói bụng rồi đúng không.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0013', N'Đậu hũ nhồi thịt sốt nước tương', '0', N'https://image.cooky.vn/recipe/g3/20485/s640/recipe20485-prepare-step3-636352849625121131.jpg', N'1.Đậu hũ trắng cắt làm 3, dùng muỗng nhỏ múc một miếng ruột bên trên miếng đậu hũ, cho ruột vào 1 tô để riêng. Làm lần lượt đến hết.
2.Trong tô đựng ruột đậu hũ, cho thêm 100gr thịt băm, 20gr hành lá băm nhuyễn, 1 muỗng cà phê đường, 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê muối, 1/2 muỗng cà phê tiêu. Trộn đều hỗn hợp sau đó nhồi nhân vào bên trong từng miếng đậu hũ.
3.Bắc chảo nóng cùng với 30ml dầu ăn, cho đậu hũ vào chiên vàng đều các mặt. Gắp đậu hũ ra để riêng.
4.Trên chảo lúc nãy, cho thêm 30ml nước tương, 30gr dầu hào, 20gr đường và 2gr tiêu và 50ml nước vào đảo đều cho đường tan. Chờ nước sốt sôi lên thì bạn cho đậu hũ vừa chiên vào, rưới nước sốt lên mặt những miếng đậu hũ, rim liu riu thêm 5 phút thì nhắc xuống.
5.Nếu bạn đã quá quen thuộc với món đậu hũ nhồi thịt sốt cà thì bây giờ mình hãy thử làm ngay món đậu hũ nhồi thịt sốt nước tương để cảm nhận một hương vị đậm đà vừa quen thuộc vừa mới lạ này nhé. Món này làm cực kì đơn giản, các mẹ nội trợ nhanh tay thêm vào sổ tay nấu nướng của mình ngay nào.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0014', N'Ba rọi cháy tỏi', '0', N'https://image.cooky.vn/recipe/g4/39614/s640/cooky-recipe-cover-r39614.JPG', N'1.Rửa sạch thịt ba rọi (thịt ba chỉ) với nước muối, dùng giấy ăn thấm khô. Cắt thịt thành từng miếng dài. Ướp thịt với 1 muỗng cà phê muối, 1 muỗng cà phê hạt nêm, 1 muỗng cà phê tiêu, 1 muỗng cà phê nước mắm và 50gr bột chiên giòn.
2.Đun nóng dầu ăn trong chảo hoặc nồi lớn, cho từng miếng thịt ba rọi(thịt ba chỉ) vào chiên vàng giòn 2 mặt. Sau đó vớt ra để ráo dầu và cắt thành từng miếng vừa ăn.
3.Cách làm ba rọi cháy tỏi: Đun nóng 2 muỗng canh dầu ăn, cho 30gr tỏi băm và 15gr ớt băm vào phi đến khi tỏi chuyển vàng thì cho thịt ba rọi đã cắt vào, rang thịt khoảng 3 phút thì tắt bếp.
4.Chỉ với 20 phút thôi là đã có ngay dĩa thịt ba rọi cháy tỏi thơm nức, ăn cùng cơm trắng rất ngon miệng. Từng miếng thịt ba rọi cháy tỏi chiên vàng giòn, rất hấp dẫn. Với Cách làm thịt heo cháy tỏi đơn giản này các bạn đã có thể tự vào bếp thực hiện ngay cho bữa cơm gia đình rồi. Chúc các bạn thành công.

');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0015', N'Ba chỉ lắc sả tắc', '0', N'https://image.cooky.vn/recipe/g4/30455/s640/cooky-recipe-cover-r30455.jpg', N'1.Rửa sạch thịt ba chỉ và dùng dao cạo phần da cho sạch, có thể chà thêm một ít muối để khử bẩn, để cho ráo. Dùng nĩa đâm phần da heo, càng nhiều càng tốt nhé. Ướp thịt với 4 gram ớt bột Hàn Quốc cho màu thịt được đẹp, 5 gram hạt nêm và 1 muỗng cá phên dầu ăn. Đeo găng tay và xoa bóp thịt thật nhẹ nhàng để thịt thấm vị và đều màu. Để yên trong 10 - 15 phút.
2.Cho dầu ăn vào nồi, đun sôi và nhẹ nhàng thả thịt vào chiên trên lửa vừa. Chiên ngập dầu sẽ giúp thịt vàng đều hơn. Sau khi thị vàng đều 2 mặt, mang thị ra ngoài để nguội. Sau khi thịt nguội, thái lát mỏng khoảng 0,5 cm để chuẩn bị lắc nhé!
3.Cho thịt ba chỉ đã cắt vào tô, cho thêm 1 muỗng cà phê dầu mè, 15 ml nước cốt tắc, 1 muỗng cà phê đường, 5 gram muối tôm, 5 gram ớt xay. Trộn đều cho thịt ba chỉ thấm gia vị.
4.Cách làm thịt ba chỉ lắc sả tắc: Cho thêm vào tô 15 gram sả thái khoanh mỏng, 15 gram tắc trái thái làm 4 đã bỏ hạt, 2 gram lá chanh thái nhuyễn, 2 gram tỏi băm, 5 gram ớt băm, 10 gram đậu phộng rang. Dùng màng bọc thực phẩm bọc kín tô. Lắc mạnh tô khoảng 1 phút là hoàn thành.
5.Bày thịt ba chỉ lắc sả tắc ra đĩa, rắc thêm ít đậu phộng giã nhuyễn. Thịt ba chỉ lắc sả tắc dùng ăn vặt, nhâm nhi, hoặc ăn trong bữa cơm gia đình để chống ngán cũng đều rất ngon và bắt miệng. Thịt ba chỉ giòn ngọt với màu sắc đẹp, lắc cùng những nguyên liệu có mùi thơm kích thích giác quan. Công thức thịt ba chỉ lắc là sự hòa quyện tuyệt vời giữa hương vị chua, cay, mặn, ngọt, màu sắc thu hút mọi ánh nhìn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0016', N'Thịt Băm Bọc Trứng Cút Sốt Cà Chua Phô Mai', '0', N'https://image.cooky.vn/recipe/g4/39881/s640/cooky-recipe-636736014934374374.JPG', N'1.Đầu tiên là sơ chế các nguyên liệu. Trứng cút luộc chín sau đó bóc vỏ. Cắt hạt lựu lần lượt đậu hũ non, cà chua; băm nhỏ hành tím và cuối cùng là cắt nhỏ hành lá.
2.Cho 50gr đậu hũ non, 5gr hành tím, 5gr hành lá vào tô thịt bằm. Sau đó nêm thêm 1tbs hạt nêm, 1tsp đường, 1/2 tsp tiêu, 1tbs nước tương, 1tbs nước mắm. Trộn đều các nguyên liệu và sau đó ướp khoảng 10-15 phút cho thịt ngấm đều gia vị bạn nhé. Lấy khoảng 12gr thịt đã tẩm ướp dàn đều lên tay và đặt 1 trái trứng cút vào giữa, vo tròn lại sao cho thịt ôm trọn lấy trứng là thành công nhé các bạn.
3.Làm nóng dầu ăn trên chảo, sau đó cho lần lượt các viên thịt vào, chiên cho thịt chín, bên ngoài vàng đều, cháy xém nhẹ một chút là cực ngon rồi nha.
4.Phần tiếp theo là làm sốt cà chua phô mai, một phần linh hồn của món ăn đây rồi. Mình làm nóng chảo, rồi cho 5ml dầu ăn vào, tiếp theo đun chảy 10gr bơ lạt. Khi bơ lạt tan chảy thì cũng là lúc mình cho thêm hành tím phi lên cho dậy mùi thì cho cà chua vào chảo. Nêm sốt 1tbs nước mắm, 1/2 tbs đường, 2 tbs hạt nêm, đun tới lúc cà chua mềm nhũn và phấn sốt sền sệt là công đoạn làm sốt đã đi được một nửa rồi.
5.Tiếp theo mình cho thêm 10ml nước, 10ml sữa tươi, 5gr sốt phô mai rồi quậy đều cho hỗn hợp hoà quyên với nhau, đun sôi lên thì cho thịt viên vào chảo đảo đều cho thấm sốt. Vậy là mình đã hoàn thành xong món ăn rồi đấy.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0017', N'Thịt kho mắm ruốc', '0', N'https://www.cooky.vn/Content/img/icons/cooky-video-play-fill.png', N'1.Để làm món thịt kho mắm ruốc ngon, loại thịt thường được chọn là thịt ba chỉ vì có lớp mỡ và thịt xen kẻ nhau, dù kho lâu thì thịt cũng không bị khô mà vẫn giữ được độ ẩm và vị béo bên trong. Lấy 300gr thịt ba chỉ đem rửa sạch, cắt thành những miếng vuông dài, chiều rộng khoảng 1-2cm. Sau đó bạn pha 1 muỗng canh mắm ruốc cùng với 70ml nước lọc cho tan đều.
2.Làm nóng chảo với 2 muỗng canh dầu ăn, cho vào chảo 15gr sả băm, 10gr hành tím băm, 10gr tỏi băm và 10gr ớt băm rồi xào lên cho thơm. Tiếp theo cho thịt ba chỉ vào xào lên cho săn.
3.Thêm hỗn hợp nước mắm ruốc đã pha cùng với 2 muỗng canh đường vào chảo thịt, đảo đều lên cho gia vị hòa quyện với nhau. Rim cho mắm ruốc sôi liu riu đến khi nước sốt keo lại, sền sệt, phần mỡ của thịt ba chỉ trong lên thì tắt bếp.
4.Dọn thịt kho mắm ruốc ra dĩa, rắc thêm ớt và hành lá lên cho đẹp mắt và tăng thêm hương vị. Dọn cơm nóng ra và thưởng thức thôi nào. Món này các bạn nên chuẩn bị thêm rau luộc hoặc rau sống để ăn kèm sẽ rất là hợp, hương vị thịt đậm đà mặn ngọt, mùi sả và mắm ruốc thơm dậy, ăn hao cơm lắm đó nha.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0018', N'Canh khổ qua nhồi thịt', '0', N'https://image.cooky.vn/recipe/g2/10052/s640/recipe10052-636203467210609166.jpg', N'1.Ngâm nấm mèo, nấm hương khô và miến tàu đem qua nước ấm cho nở rồi cắt nhỏ. Cắt hành lá lấy đầu hành và lá hành để riêng, băm nhỏ 1/2 số đầu hành cùng với gốc ngò (lá hành và lá ngò để riêng cho vào canh khi đã chín).
2.Trộn chung thịt băm, nấm mèo, nấm hương, miến tàu, hành ngò băm nhỏ với 1 muỗng cà phê muối, 2 muỗng cà phê hạt nêm, 2 muỗng cà phê tiêu xay và 2 muỗng cà phê đường. Để 15 phút cho nhân ngấm gia vị.
3.Cắt khổ qua thành khúc vừa ăn, nạo bỏ hết ruột rồi nhồi nhân thịt vào. Dùng muỗng nén chặt nhân vào khúc khổ qua để cố định nhân tránh làm nhân rơi ra khi hầm.
4.Cho vào nồi 800ml nước lạnh, 50gr nấm rơm, 1/2 số đầu hành còn lại và khổ qua đã nhồi thịt. Mở lửa lớn nấu cho canh khổ qua nhồi thịt sôi lên, vớt hết bọt để nước được trong và nêm nếm gia vị lại cho vừa miệng. Sau đó hạ lửa nhỏ, hầm khoảng 1 tiếng cho canh khổ qua nhồi thịt mềm.
5.Canh khổ qua nhồi thịt sau khi hầm 1 tiếng, kiểm tra độ chín bằng dùng nĩa xiên qua khúc khổ qua, nếu thấy xiên qua dễ dàng là hoàn tất. Rưới thêm hành ngò rồi nhắc xuống. Canh khổ qua ăn với cơm nóng, chấm kèm với nước mắm ớt sẽ làm nổi bật hương vị món canh lên rất nhiều. Món canh khổ qua nhồi thịt quen thuộc đặc trưng của người Việt, thường thấy trong các dịp lễ Tết, rất ngon và đậm đà.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0019', N'Canh kim chi thịt ba chỉ', '0', N'https://image.cooky.vn/recipe/g1/9260/s640/recipe9260-636256067812723682.jpg', N'1.Rửa sạch thịt ba chỉ, đem cắt thành những miếng vừa ăn. Ướp thịt với 1/2 muỗng cà phê muối và 1/2 muỗng cà phê tiêu. Cho thịt đã ướp vào nồi 1 muỗng cà phê dầu ăn rồi xào thịt đến khi săn lại.
2.Cắt kim chi cải thảo Hàn Quốc thành miếng vừa ăn. Khi mua kim chi lấy cả phần nước lẫn phần cái. Gắp kim chi đã cắt vào nồi thịt, đảo sơ cho thịt và kim chi hòa vào nhau. Sau đó cho nước kim chi (khoảng 1 chén) và 250ml nước ấm vào.
3.Để lửa lớn nấu canh kim chi thịt heo cho đến khi nước canh sôi thì hạ nhỏ lửa, đậy nắp và tiếp tục đun 15 phút. Sau 15 phút, nêm nếm lại nước canh cho vừa ăn với 1 muỗng cà phê đường (tùy khẩu vị) rồi nhấc xuống. Cắt hành boa rô, ớt sừng trang trí lên mặt.
4.Canh kim chi thịt heo dùng ngon nhất khi còn nóng. Ăn canh kim chi thịt heo cùng với cơm trắng và trứng cuộn là giống kiểu những bữa ăn quen thuộc chúng ta hay thấy trên phim Hàn rồi. Món canh kim chi chua chua, cay nồng với những miếng thịt ba chỉ béo ngậy, vừa ăn vừa suýt xoa hít hà thì sao có thể chối từ được nhỉ?');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0020', N'Thịt gà mỡ hành', '0', N'https://image.cooky.vn/recipe/g1/3671/s640/recipe3671-636226642037700123.jpg', N'1.Thịt gà rửa sạch với 1 muỗng canh giấm và 1 muỗng cà phê muối cho hết mùi hôi. Sau đó thấm khô nước. Rắc đều 1/2 muỗng cà phê muối lên 2 mặt da gà, xoa đều cho thấm gia vị. Tiếp đến cho hạt nêm nêm, tiêu, rượu trắng vào, lại xoa đều lên thịt gà. Ướp như vậy ít nhất 30 phút cho thịt thấm đều. Hành lá rửa sạch, cắt nhỏ, để riêng.
2.Thịt gà sau khi ngấm gia vị thì cho vào đĩa sâu lòng. Cho nước vào xửng hấp, đun sôi. Cho đĩa thịt gà vào xửng hấp cho đến khi thịt gà chín mềm.
3.Thịt gà sau khi đã hấp chín bạn lấy ra cho nguội bớt, cắt miếng vừa ăn và xếp ra đĩa. Phần nước gà tiết ra bạn để lát nữa trộn chung với mỡ hành.
4.Bắc nồi lên bếp cùng với nước mỡ gà (có thể thêm 2 muỗng canh dầu ăn), đun nóng dầu, cho gừng băm nhỏ, hành lá vào, xào sơ qua 1 - 2 phút. Hành vừa chín tới là tắt bếp. Trút hết phần mỡ hành vào đĩa nước hấp thịt gà vừa nãy. Lấy muỗng múc nước mỡ hành rưới lên trên thịt gà là xong rồi.
5.Thịt gà mềm ngọt tự nhiên, thơm và béo ngậy vị mỡ hành, cách làm đơn giản, mang lại hiệu quả vị giác rất tốt. Các bạn hãy thử làm cho gia đình mình thưởng thức nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0021', N'Cà Tím Xào Thịt', '0', N'https://image.cooky.vn/recipe/g1/4838/s640/recipe4838-635938200845389183.jpg', N'1.Cà tím cắt miếng to nhưng vừa ăn, cho vào ngâm khoảng 10 phút trong chậu nước có pha chút muối cho cà không bị thâm. Sau đó vớt ra, sả qua nước lạnh rồi để ráo.
2.Đun nóng 2 muỗng canh dầu ăn, cho cà tím vào xào. Đảo đều tay với lủa vừa cho đến khi cà mềm thì vớt ra.
3.Ướp thịt băm với 1/2 muỗng canh rượu, 1/4 muỗng cà phê muối, 1 muỗng cà phê gừng băm trong khoảng 10 phút. Tận dụng chảo xào cà, cho phần thịt đã ướp vào xào đến khi thịt chuyển sang màu trắng thì trút ra để riêng.
4.Trong chảo xào thịt, phi thơm tỏi và gừng cắt lát với 1 muỗng canh dầu ăn, trút cà và thịt vào đảo đều tay. Nêm 2 muỗng cà phê hạt nêm, đảo đều khoảng 2-3 phút thì rắc thêm hánh lá cắt nhỏ, trộn đều rồi tắt bếp.
5.Bày trí ra đĩa và thưởng thức nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0022', N'Miến Xào Thịt Heo Xay', '0', N'https://image.cooky.vn/recipe/g1/6365/s640/recipe6365-636008060956177424.jpg', N'1.Miến rửa sạch, ngâm với nước lạnh cho đến khi miến mềm rồi mới vớt miến ra, cắt thành đoạn nhỏ vừa ăn. Nếu bạn đang vội, bạn có thể ngâm miến với nước ấm cho tiết kiệm thời gian.
2.Thịt heo bằm cho vào tô. Hành lá cắt nhỏ, để riêng phần đầu trắng hành lá. Tỏi bóc vỏ, gừng gọt vỏ, băm nhỏ.
3.Phi thơm tỏi băm, gừng, đầu trắng hành lá với 2 muỗng canh dầu ăn. Cho thịt heo bằm vào, đảo đều.
4.Tiếp theo, cho 1 muỗng canh sa tế vào, đảo đều. Lượng sa tế bạn có thể cho thêm tùy vào khẩu vị của gia đình.
5.Cho miến vào, đảo đều nhẹ tay. Thêm 160ml nước nóng hoặc nước dùng, tiếp tục đun sôi rồi mới hạ nhỏ lửa. Đun liu riu trong khoảng vài phút cho sợi miến nở mềm. Nêm gia vị 1 muỗng canh nước tương, 1 muỗng canh dầu hào, 1/2 muỗng cà phê muối vào cho vừa ăn.
6.Tắt bếp, cho hành lá vào, trộn đều. Bày món ăn ra đĩa, dùng nóng nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0023', N'Canh cà chua trứng thịt viên', '0', N'https://image.cooky.vn/recipe/g2/11352/s640/recipe11352-636033136936794067.jpg', N'1.Thịt heo bằm cho vào tô trộn đều cùng 1 muỗng canh bột bắp, 1/2 muỗng cà phê muối cho ngấm gia vị.
2.Cà chua rửa sạch, cắt múi cau, cho vào chảo đảo đều cùng 2 muỗng canh dầu ăn.
3.Khi cà chua mềm, đổ từ từ 400ml nước vào, nấu sôi trong 10 phút.
4.Dùng tay vo nhẹ từng miếng thịt thành viên tròn, nhỏ, cho vào nồi canh cà chua.
5.Cuối cùng, cho trứng gà đánh tan, 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê bột ngọt vào, nấu thêm 30 giây là được.
6.Rất nhanh chóng, chưa đầy 25 phút là bạn đã có món canh cà chua trứng thịt viên thật hấp dẫn cho bữa cơm gia đình.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0024', N'Gà xào sả ớt', '0', N'https://image.cooky.vn/recipe/g1/1565/s640/recipe1565-635629822713768387.jpg', N'1.Bóc sạch vỏ khô của cây sả, dùng dao bào nhỏ rồi cho sả ra thớt, băm nhỏ. Bóc bỏ vỏ tỏi, cắt lát rồi băm nhỏ. Bỏ cuống ớt trái, rửa sạch, băm nhuyễn.
2.Rửa sạch thịt gà, chặt thành những miếng nhỏ vừa ăn. Ướp thịt gà đã cắt nhỏ cùng một ít tỏi, ớt băm nhuyễn, ít tiêu, nước mắm, đường, muối. Gà ướp để khoảng 15 phút cho ngấm gia vị.
3.Làm nóng chảo, cho 2 muỗng cà phê dầu ăn, thêm một ít tỏi băm vào xào thơm. Sau đó để gà đã ướp vào xào cho săn đều.
4.Khi thịt gà xào đã săn lại, để hỗn hợp sả, tỏi, ớt vừa băm nhuyễn vào, nêm thêm một ít bột cà ri vào xào cho đến khi nào gà chín vàng đều, thơm phức là gà xào sả ớt ngon lành đã hoàn tất rồi đấy.
5.Múc gà xào sả ớt cho ra đĩa, ăn cùng với cơm nóng, kèm thêm ít rau sống và dưa leo, sẽ đưa cơm lắm đấy! Lâu lâu thử đổi mới khẩu vị cho cả nhà với cách làm gà xào sả ớt ngon béo, đơn giản này nhé! Gà xào sả ớt với phần da giòn, phần thịt chín mềm, thơm lừng mùi sả, hơi cay vị gừng và ớt, rất hấp dẫn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0025', N'Nui xào thịt bò', '0', N'https://image.cooky.vn/recipe/g2/13008/s640/recipe13008-636033972853030276.jpg', N'1.Luộc nui chín mềm vừa tới, rửa sạch lại với lạnh, vớt ra rổ để ráo nước.
2.Ướp thịt bò với ít 1 muỗng cà phê hạt nêm, 1/4 muỗng cà phê tiêu, 1 muỗng cà phê đường, 1/2 muỗng cà phê bột ngọt, 1 muỗng canh dầu ăn, 1 muỗng canh nước tương và 1/3 chỗ tỏi và hành tím băm. Sau đó trộn đều hỗn hợp để khoảng 15 phút cho thịt bò thấm gia vị.
3.Cách làm nui xào bò: Đun nóng 1 muỗng canh dầu ăn, phi thơm 1/3 chỗ tỏi và hành tím băm, cho tiếp nui vào chảo, nêm 1/2 muỗng cà phê hạt nêm và 1 muỗng canh nước tương vào, xào nui nhanh tay lửa lớn cho nui thấm gia vị. Trút nui ra tô, cho bơ vào và trộn đều.
4.Cho thêm 1 muỗng canh dầu ăn vào chảo vừa xào nui, phi thơm tỏi với hành tím băm còn lại, cho thịt bò vào xào nhanh tay với lửa lớn, thịt bò chín tái ta tắt lửa.
5.Cắt cà chua với dưa leo thành lát mỏng sắp lên dĩa, cho tiếp nui, sau cùng là thịt bò, rắc tiêu, trang trí vài cọng ngò. Nui xào bò thành phẩm nên ăn kèm với nước tương, sẽ bắt vị hơn đấy nhé. Lưu ngay công thức làm nui xào bò đơn giản, nhanh gọn cho ngày bận rộn liền nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0026', N'Chạo thịt bọc sả chiên', '0', N'https://image.cooky.vn/recipe/g2/16395/s640/recipe16395-635846521452684557.jpg', N'1.Sả băm nhuyễn 1 cây. Còn lại cắt lấy khúc củ sả dài khoảng 12-15 cm rồi dùng chày đập hơi dập phần đầu.
2.Cho sả băm và hành tím băm vào tô thịt. Thêm vào 1 muỗng canh bột bắp, 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối rồi trộn đều cho các nguyên liệu quyện vào nhau.
3.Sau đó bọc kín hỗn hợp thịt vào từng đầu cây sả.
4.Đun nóng 200ml dầu ăn rồi cho các cây sả đã bọc thịt vào chiên chín vàng đều thì vớt ra để ráo dầu.
5.Bày trí đẹp mắt và thưởng thức với thương ớt.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0027', N'Thịt gà hấp nấm hương', '0', N'https://image.cooky.vn/recipe/g3/24777/s640/recipe-cover-r24777.jpg', N'1.Gà rửa sạch chặt miếng vừa ăn, cho gà vào bát rồi thêm đường, rượu, nước tương, dầu ăn, bột bắp, súp nêm vị gà và nước vào trộn đều. Ướp gà 10 phút. Hành lá thái nhỏ, nấm hương ngâm nở. Thêm nấm hương vào tô gà trộn đêu.
2.Cho gà đã ướp vào thố chịu nhiệt, thêm gừng và đặt vào nồi hấp, đun sôi khoảng 10 phút hoặc hấp cho đến khi gà chín là được. Gà chín rắc chút hành lá lên trên để thêm 1 phút là được.
3.Cách làm thịt gà hấp nấm hương là một món ăn chế biến nhanh với nguyên liệu chủ đạo là gà và nấm hương. Bạn chỉ cần tẩm ướp gia vị theo cách thức trên và hấp chín là đã có một món tuyệt ngon cho bữa cơm gia đình mình.

');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0028', N'Salad Ức gà', '0', N'https://image.cooky.vn/recipe/g2/15381/s640/cooky-recipe-635744633042575724.jpg', N'1.Các nguyên liệu cần thiết. Đun sôi nước và luộc thịt gà.
2.Ớt chuông bỏ ruột, cắt sợi vừa ăn.
3.Gỡ xà lách thành từng lá riêng rẽ. Rửa sạch.
4.Luộc chín đậu Hà lan rồi vớt ra sau đó cho vào nước lạnh để đậu giữ được màu xanh đẹp.
5.Luộc qua ớt chuông đã xắt rồi cũng cho vào nước lạnh để giữ màu.
6.Gà luộc xong thì ngâm vào nước lạnh 10 phút để thịt không bị bở rồi xé thịt thành từng miếng vừa ăn.
7.Trộn đều tương cà và sốt mayonnaise để làm sốt nền.
8.Đặt xà lách vào tô, lần lượt cho ớt chuông, đậu, thịt gà và cải mầm vào.
9.Cho sốt nền vào xà lách, trộn đều cho thấm và dọn ra dĩa. Món salad gà rất thích hợp dùng vào buổi tối khi cả nhà cùng quây quần bên nhau nhé. Chúc các bạn thành công!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0029', N'Súp gà bắp', '0', N'https://image.cooky.vn/recipe/g3/27915/s640/recipe-cover-r27915.jpg', N'1.Luộc ức gà giữ lại phần nước luộc hoặc nếu có nước luộc gà sẵn thì càng ngon ngọt, ức gà chín để nguội xé sợi nhỏ hoặc thái nhỏ. Bắp ngọt dùng dao bào lấy phần thịt, đem luộc chín vớt ra để ráo. Nấm hương ngâm cho nở, rửa lại thật sạch thái sợi. Cà rốt thái nhỏ hoặc xắt hạt lựu. Ngò rí thái nhỏ.
2.Cho nước luộc ức gà hoặc nước luộc gà vào nồi đặt lên bếp, nước sôi hớt sạch bọt. Lần lượt cho bắp ngọt vào trước, tiếp đến là cà rốt, nấm hương. Đun sôi các nguyên liệu và chịu khó hớt bọt để nồi súp ngon và đẹp mắt hơn. Cho phần ức gà đã xé sợi nhỏ hoặc thái nhỏ vào đảo đều, cho chút bột nêm, nêm nếm cho vừa miệng. Cho 3 thìa canh bột năng ra bát nhỏ, thêm chút nước khuấy tan. Hạ nhỏ lửa nồi súp, một tay cầm bát bột năng, một tay cầm thìa, từ từ đổ bột năng vào nồi súp, tay đổ tay khuấy để tránh bột năng bị vón cục. Nhớ rót từ từ để kiểm soát được độ loãng đặc, đến khi nồi súp sánh như ý muốn thì dừng lại, nếu loãng quá thì thêm chút bột năng hoà thêm nước. Trứng gà đập ra bát, chỉ lấy lòng trắng, nếu trứng gà ta quả nhỏ thì lấy 2 lòng trắng, to thì chỉ cần 1, thêm chút xíu bột nêm, đánh đều lọc qua một lần rây. Cũng một tay khuấy, một tay đổ từ từ vào và khuấy theo chiều kim đồng hồ để tạo vân cho nồi súp đến khi hết. Bắc nồi súp xuống, rắc rau mùi thái nhỏ vào khuấy đều. Nếu không thích cho ngay rau mùi vào nồi súp bạn có thể rắc vào bát ăn cũng được, thêm chút hạt tiêu lên trên và ăn nóng

');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0030', N'Chả Giò Nhân Thịt
', '0', N'https://image.cooky.vn/recipe/g1/7035/s640/recipe7035-635839528256004411.jpg', N'1.Chuẩn bị nguyên liệu làm chả giò nhân thịt: Ngâm nở và băm nhỏ miến, nấm mèo. Gọt vỏ và cắt nhỏ khoai môn.
2.Nhân chả giò thịt: Trộn đều thịt heo bằm, miến, nấm mèo, khoai môn, trứng gà, 1 muỗng cà phê hành tím băm, 1 muỗng canh nước mắm, 1/2 muỗng cà phê tiêu trong tô. Trải bánh tráng bía ra, cho hỗn hợp vào, cuộn tròn lại.
3.Cách chiên chả giò giòn: Làm nóng dầu ăn, cho chả giò nhân thịt vào, chiên vàng đều các mặt.
4.Chả giò nhân thịt thành phẩm với hương vị thơm ngon, lớp vỏ ngoài giòn tan, nhân thịt bên trong mềm, thấm gia vị. Các bạn có thể chuẩn bị tương ớt, mayonnaise để thêm phần ngon miệng nha. Cách làm chả giò nhân thịt đơn giản này sẽ làm bữa tiệc nhỏ của gia đình thêm thú vị đó, rảnh rỗi các bạn nhất định phải thử nhé.

');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0031', N'Thịt kho xá xị', '0', N'https://image.cooky.vn/recipe/g1/5887/s640/recipe5887-636197575862040875.jpg', N'1.Thịt ba chỉ rửa sạch, cắt miếng lớn. Bắc nồi nước nóng, cho thịt vào trụng đến khi nước sôi bùng lên thì vớt ra, để ráo.
2.Cách kho thịt với xá xị: Ướp thịt với 30gr hành tím băm, 30gr tỏi băm, 1 muỗng cà phê tiêu, 1 muỗng cà phê hạt nêm, 2 muỗng canh nước tương trong khoảng từ 30 phút đến 1 tiếng cho thịt thấm gia vị. Sau đó, bạn cho cả thịt và nước ướp vào nồi, kho lửa vừa đến khi nước thịt sôi lăn tăn.
3.Khi nước kho sôi, bạn cho vào nồi 1 lon xá xị rồi trở mặt thịt để thịt có thể ngấm đều xá xị. Lúc nước kho sôi lại, bạn thả trứng vịt đã luộc vào, số lượng tùy chỉnh theo sở thích của gia đình mình. Lúc này nếu thấy nước ít, chưa đủ ngập 2/3 thịt thì bạn có thể thêm vào 200ml nước nóng (tùy chỉnh) và tiếp tục kho khoảng 1 tiếng, đừng đậy nắp để giữ nước thịt được trong nhé!
4.Món thịt kho xá xị mang lại một hương vị mới lạ, thơm ngon đậm đà rất đưa cơm. Mùi hương của nước xá xị hòa quyện với những gia vị ướp thịt làm thơm nức cả một gian bếp. Hãy cùng thử đổi mới một chút cách kho thịt hàng ngày của gia đình mình bằng cách làm thịt kho xá xị mà Cooky giới thiệu hôm nay nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0032', N'Thịt Thăn Heo Rim Nước Dừa Tươi', '0', N'https://image.cooky.vn/recipe/g2/17992/s640/cooky-recipe-636088574424079214.jpg', N'1.Thịt thăn heo cắt miếng mỏng, to, ướp với 1 muỗng canh dầu hào, 1/2 muỗng canh nước mắm, 1/2 muỗng cà phê tiêu, 1/2 muỗng cà phê bột cà ri trong tô khoảng 30 phút cho ngấm gia vị.
2.Làm nóng dầu ăn trong chảo, cho từng miếng thịt thăn heo vào, chiên vàng đều, nhỏ lửa 2 mặt. Gắp thịt thăn ra đĩa, để riêng.
3.Tiếp tục dùng chảo đó, cho tỏi băm với đường trắng, đảo đều đến khi tỏi có mùi thơm. Đổ từ từ nước dừa tươi vào. Cho tiếp thịt thăn vào, rim lửa nhỏ cho nước cạn gần hết thì tắt bếp.
4.Từng miếng thịt màu vàng đẹp mắt, ăn rất mềm, đậm đà và ngon cơm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0033', N'Gỏi cuốn tôm thịt', '0', N'https://image.cooky.vn/recipe/g1/2625/s640/recipe2625-636245006981008017.jpg', N'1.Rau húng quế và hẹ rửa và nhặt sạch, cắt bớt lá của hẹ. Tôm rửa sạch, cho vào nồi nước sôi luộc chín, lột vỏ, xẻ làm đôi. Thịt ba chỉ cũng luộc chín với nước có cho vào một ít nước mắm, vớt ra để nguội rồi cắt mỏng.
2.Thấm hơi ướt bánh tráng, xếp từng lớp bún, tôm, thịt, rau sống vào, thêm hẹ trang trí rồi cuốn lại chặt tay.
3.Gỏi cuốn tôm thịt dùng làm món khai vị hoặc dùng ăn chơi, đổi bữa cho những ngày chán cơm đều tiện lợi vô cùng. Gỏi cuốn ít tinh bột và có thể cho nhiều rau nên không sợ tăng cân bạn nhé! Có thể chấm gỏi cuốn với mắm nêm, tương đen, nước mắm chua ngọt đều được.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0034', N'Thịt gà kho gừng tươi', '0', N'https://image.cooky.vn/recipe/g2/15180/s640/recipe15180-635705761451711962.jpg', N'1.Thịt gà mua về rửa sạch, chặt miếng vừa ăn rồi cho ra đĩa.
2.Sả bóc vỏ, ớt rửa sạch, cắt nhỏ cả 2. Gừng cạo vỏ, cắt sợi nhỏ. Hành tím và tỏi bóc vỏ, băm nhỏ.
3.Làm nóng 2 muỗng canh dầu ăn trong chảo, cho sả, hành tím, tỏi, gừng, ớt vào, đảo đều khoảng 3 phút. Sau đó, cho thịt gà vào.
4.Tiếp theo, nêm gia vị 1 muỗng cà phê muối, 1/2 muỗng cà phê tiêu, 1 muỗng cà phê hạt nêm, 1 muỗng canh nước mắm, 1 muỗng cà phê đường trắng vào, đảo đều, đậy kín nắp cho thịt gà chín.
5.Thịt gà kho gừng tươi đã chín, múc ra đĩa làm món mặn ăn với cơm rất ngon đấy!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0035', N'Thịt bò xào lúc lắc', '0', N'https://image.cooky.vn/recipe/g3/23821/s640/recipe-cover-r23821.jpg', N'1.Thịt bò cắt khối 2cm, đem ướp với 1,5 muỗng canh nước tương; 1 muỗng canh đường; 1 muỗng cà phê bột bắp; 1/4 muỗng cà phê dầu mè; tỏi băm và hạt tiêu đen trong 30 phút.
2.Trong khi chờ ướp thịt, bạn chuẩn bị các nguyên liệu khác. Khoai tây, ớt chuông đỏ, ớt chuông xanh và hành tây cũng thái miếng vuông tương tự thịt bò.
3.Làm nóng chảo với 2 muỗng canh dầu, cho khoai tây vào áp chảo cho tới khi khoai cháy cạnh thì trút ra đĩa để riêng.
4.Làm nóng chảo trở lại, thêm 1 ít dầu rồi trút thịt bò vào, lưu ý để lửa to. Bò xém cạnh bạn lắc chảo hoặc đảo để bò xém đều các cạnh còn lại là được. Trút thịt bò ra đĩa để riêng.
5.Thêm hành tây, ớt xanh và ớt đỏ vào xào mềm, nêm thêm một chút muối, thêm thịt bò, khoai tây và mật ong vào đảo đều.
6.Sau cùng, rắc hạt vừng trắng, cầm cán chảo xóc đều các nguyên liệu rồi tắt bếp.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0036', N'Bò xào hành tây', '0', N'https://image.cooky.vn/recipe/g2/14073/s640/cooky-recipe-cover-r14073.jpg', N'1.Rửa sạch thịt bò, cắt lát mỏng. Ướp thịt bò với 2 muỗng cà phê dầu hào, 1/2 muỗng cà phê tiêu. Dùng đũa trộn đều để thịt bò thấm gia vị. Bóc vỏ hành tây, cắt múi cau.
2.Cách làm thịt bò xào hành tây: Cho 2 muỗng cà phê dầu ăn vào chảo và đun nóng, đổ hành tây vào xào sơ 1-2 phút. Sau đó, thêm thịt bò đã ướp gia vị vào xào cùng hành tây. Dùng đũa đảo đều và nhanh tay cho đến khi thịt bò và hành tây chín tới. Nêm nếm lại tùy khẩu vị.
3.Múc bò xào hành tây ra đĩa, trang trí bằng những lát cà chua và rau xà lách, giúp món ăn ngon và tinh tế hơn. Lâu lâu thì bạn thử đổi vị cho bữa cơm gia đình thêm ngon miệng và giàu dinh dưỡng với món bò xào hành tây đơn giản này thử nhé. Cách làm bò xào hành tây thật đơn giản và nhanh chóng đúng không, rất thích hợp cho những bạn hay bạn rộn với công việc đó.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0037', N'Thịt bò xào măng tây', '0', N'https://image.cooky.vn/recipe/g2/10649/s640/recipe10649-635953554195483917.jpg', N'1.Thịt bò cắt lát mỏng, măng tây và bông cải xanh cắt nhỏ vừa ăn.
2.Nấu một nồi nước sôi sau đó cho măng tây và bông cải xanh vào trụng qua cho rau được xanh. Vớt ra để ráo nước.
3.Đun nóng 1 muỗng canh dầu ăn, cho măng tây và bông cải vào xào qua, nêm 1/2 muỗng cà phê muối, xào 1-2 phút rau chín thì tắt bếp, nêm 1 muỗng cà phê bột ngọt và cho ra dĩa.
4.Phi thơm tỏi băm với 1 muỗng canh dầu ăn, cho thịt bò vào xào nhanh, không xào lâu làm thịt bò dai cứng. Nêm 1/4 muỗng cà phê muối, 1/2 muỗng cà phê tiêu, tắt bếp.
5.Cho thịt bò lên dĩa rau hoặc cho rau vào trộn đều cùng thịt bò, cho thêm vào lá cần tây cho thơm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0038', N'Bò né', '0', N'https://image.cooky.vn/recipe/g4/35492/s640/cooky-recipe-cover-r35492.jpg', N'1.Cách làm bò né: Rửa sạch thịt bò, cắt miếng vừa ăn, bạn lưu ý cắt ngang sớ thịt để miếng bò không bị dai. Ướp 250gr bò phi lê với 1 muỗng canh nước tương, 1 muỗng canh dầu hào, 1 muỗng canh tỏi băm, 1 muỗng cà phê đường, 1 muỗng cà phê dầu ăn, 1 muỗng cà phê tiêu và 1 muỗng cà phê mè. Trộn đều 2 mặt và để thấm gia vị trong khoảng 20 phút.
2.Cắt hành tây thành sợi mỏng, cho vào chảo gang xào thơm sau đó cho miếng bò đã được tẩm gia vị vào, đảo sơ đến khi chín tái một mặt thì lật mặt còn lại. Tiếp tục cho vào chảo một quả trứng chiên ốp la. Sau đó cắt một miếng pa tê gan và vài lát khoai tây chiên để bên cạnh.
3.Bò né nóng hổi kêu xèo xèo trên chảo ăn kèm salad, bánh mì và chấm cùng tương ớt hay nước tương. Vậy là hoàn thành cách làm bò né ngon hết sẩy rồi. Ngoài cách ướp thịt bò né, dùng chảo gang giữ nhiệt cũng tạo nên độ chín vừa với, mềm ngọt của miếng bò. Chuẩn bị thêm salad ăn kèm bò né gồm: cà chua, xà lách và dưa leo trộn chút dầu giấm cho có vị chua ngọt, thì chuẩn bài đấy. Bạn có thể ướp bò né và chuẩn bị nguyên liệu ăn kèm từ hôm trước, sáng hôm sau chỉ việc chiên chín bò rồi thưởng thức cùng bánh mì thôi nè. Chúc bạn thành công và ngon miệng với món bò né của Cooky nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0039', N'Bò lá lốt', '0', N'https://image.cooky.vn/recipe/g4/33876/s640/cooky-recipe-cover-r33876.JPG', N'1.Cho 500gr thịt bò xay vào dĩa lớn, thêm vào các loại gia vị gồm: 2 muỗng canh dầu ăn, 1 muỗng canh nước mắm, 2 muỗng canh dầu hào, 1 muỗng canh hạt nêm, 2 muỗng canh đường, 1 muỗng canh tiêu. Tiếp theo cho vào 20gr sả băm, 10gr tỏi băm, 10gr hành tím băm. Trộn đều thịt với gia vị bằng muỗng. Ướp thịt trong thời gian khoảng 1 tiếng cho thịt thật thấm gia vị.
2.Rửa lá lốt thật sạch và nhẹ nhàng, tránh làm rách lá lốt bạn nhé, vì mình cuốn trực tiếp thịt bò vào lá lốt cần được làm sạch, không còn dính bẩn. Để lá lốt thật khô ráo thì mới cuốn thịt được nha. Trải lá lốt lên dĩa, múc một muỗng thịt bò lên lá, lấy tay gắp hai bên mép lá lại, cuốn tròn cho đến hết lá. Cuốn thịt như vậy đến khi hết nguyên liệu. Xiên từng cuốn bò vào cây xiên.
3.Nướng chả lá lốt có hai cách là áp chảo hoặc nướng than, ở đây mình làm cả hai cách cho bạn tham khảo nha. Nướng bò lá lốt bằng chảo: cho một ít dầu ăn vào chảo chống dính hoặc chảo gang, dùng khăn giấy thoa đều dầu, đặt từng xiên bò lá lốt vào và nướng áp chảo đến khi cuốn thịt bò chín vàng đều hai mặt. Nếu nướng bò cuốn lá lốt bẳng than thì nhóm lò than trước và cho các xiên bò lá lốt lên nướng đến khi bò chín thơm, có màu vàng nâu đẹp là được.
4.Làm nước chấm cho món bò cuốn lá lốt: Giã nhuyễn 5 tép tỏi, 3 trái ớt và 2 muỗng canh đường trong cối. Vắt 20ml nước cốt chanh vào, thêm 50ml nước lọc và 50ml mắm nêm. Khuấy đều nước chấm bằng muỗng đến khi các nguyên liệu hòa quyện với nhau là được.
5.Vậy là món bò nướng lá lốt đã hoàn thành, bạn có thể ăn kèm với bánh tráng cuốn cùng bún tươi và rau sống rất ngon, chấm thêm nước mắm nêm chua chua cay cay rất hấp dẫn. Đặc biệt khi ăn kèm với sốt phô mai Con bò cười béo béo càng hợp vị hơn. Cách làm bò lá lốt cũng không quá khó, chị em có thể tự làm ở nhà, vừa ngon vừa hợp vệ sinh hơn ngoài hàng nha. Nhanh tay lưu ngay công thức lại nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0040', N'Vịt kho sả', '0', N'https://image.cooky.vn/recipe/g2/13400/s640/recipe13400-635705788713071844.jpg', N'1.Lóc lấy thịt, cắt khúc vừa ăn. Dùng rượu trắng và gừng để tẩy mùi hôi của thịt. Sau đó rửa sạch.
2.Ướp thịt vịt với 50 ml nước mắm, 20 ml nước màu, 20g bột nêm, 60g đường, 5g tiêu và 1/2 lượng sả băm.
3.Đập dập, bóc vỏ, băm nhuyễn 2 tép tỏi, 1 củ hành tím. Đặt một chiếc nồi lên bếp, cho dầu ăn vào, mở lửa vừa. Khi dầu nóng, thả hành tỏi, sả băm vào phi thơm. Sau đó, cho thịt vịt vào chiên sơ các mặt.
4.Khi thịt vịt săn lại, đổ một ít nước sạch ngập mặt thịt, nấu thêm 40 phút rồi tắt bếp.
5.Bày thịt vịt kho sả ra ăn kèm với cơm. Có thể cho một ít ớt đỏ vào để dậy mùi.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0041', N'Gà nướng xá xíu', '0', N'https://image.cooky.vn/recipe/g2/17400/s640/recipe17400-636022953478391248.jpg', N'1.Thịt gà rửa sạch, để ráo nước, cắt thành miếng dài theo sớ thịt, bảng to khoảng 5 cm. Trong một thố lớn, trộn 50g gia vị xá xíu với 4 muỗng canh dầu hào, 4 muỗng canh mật ong, 4 muỗng canh sốt tương đen, 2 muỗng cà phê bột tỏi, 1 muỗng cà phê ngũ vị hương, 4 muỗng cà phê bột súp gà trộn đều và 1/2 muỗng cà phê tiêu.
2.Cho thịt gà vào thố gia vị, trộn đều, đậy kín thố, để trong tủ lạnh it nhất 24 giờ đồng hồ trong ngăn mát tủ lạnh cho thịt thấm gia vị.
3.Nướng trên lò barbeque, lò gas hoặc lò than. Để lò nóng ở nhiệt độ 350 độ F (khoảng 180 độ C), sắp thịt lên vĩ nướng, nướng khoảng 10 phút cho thịt vàng một mặt.
4.Trước khi trở qua mặt bên kia, dùng cọ thoa nước ướp thịt lên từng miếng thịt để khi nướng thịt không bị khô. Nướng thêm khoảng 10 phút nữa thì thịt chín.
5.Thịt gà nướng xá xíu dung chung với cơm hoặc bánh mì đều ngon.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0042', N'Mì Udon Súp Miso Và Thịt Heo Cay', '0', N'https://image.cooky.vn/recipe/g5/44796/s640/cooky-recipe-636819169030867598.jpeg', N'1.Trứng gà luộc lòng đào trong vòng 7 phút. Thịt ba chỉ thái lát dài, ướp với 1 muỗng canh nước tương và tương ớt Hàn Quốc. Áp chảo thịt ba chỉ đến khi xém cạnh.
2.Rửa sạch rau và nấm. Rau cắt khúc vừa ăn, nấm thái thành từng lát
3.Cho vào nồi 300ml nước, thêm bột canh dashi, tương miso và nước tương, đun đến khi nước dùng sôi liu riu, nêm nếm lại cho vừa miệng. Cho nấm, rau vào đun khoảng 3 phút sau đó thêm mì vào nấu.
4.Khi mì chín, múc mì, nấm và rau vào tô, thêm nước súp miso, xếp lên bên trên thịt ba chỉ và trứng lòng đào và thưởng thức ngay.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0043', N'Gỏi thịt bò chua cay', '0', N'https://image.cooky.vn/recipe/g2/12397/s640/recipe12397-635863051853842512.jpg', N'1.Thịt bò mua về rửa sạch, cắt ngang thớ, có thể chọn phần thăn bò. Đun nồi nước sôi cho thịt bò vào chần chín tái, hoặc có thể cho thịt bò vào chén, vắt chanh để thịt bò chín tái.
2.Cà rốt rửa sạch, cắt sợi. Dưa leo rửa sạch, gọt sơ vỏ, cắt sợi mỏng, trộn vào chén dưa leo 1/2 muông cà phê muối, để khoảng 5 phút sau đó dùng tay sạch vắt ráo nước. Hành tây bóc bỏ vỏ, cắt mỏng, ngâm hành vào thau nước đá lạnh để khử bớt mùi hăng của hành. Sả tước bỏ phần cứng, cắt khoanh tròn mỏng.
3.Mè trắng rang thơm, dùng chày giã thô. Đậu phộng cũng rang thơm, giã thô.
4.Tỏi, ớt trái giã nhuyễn với 3 muỗng cà phê đường trắng, pha vào chén tỏi ớt khoảng 2 muỗng canh nước mắm, vắt vào vài giọt chanh. Hỗn hợp nước mắm trộn hơi sền sệt, nêm chua, mặn vừa ý.
5.Cho thịt bò vào thau sạch, thêm dưa leo, cà rốt, hành tây, củ kiệu, thính gạo và chén nước mắm vào, dùng đũa đảo đều hoặc tay đeo bao tay nylon sạch, trộn đều.
6.Cho tiếp sả vào, nêm gia vị lại cho vừa ăn. Bên trên thêm đậu phộng và mè rang, khi dùng múc ra đĩa thêm tỏi phi và rau thơm cắt nhỏ lên bề mặt, dùng với cơm hoặc ăn kèm với bánh phồng tôm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0044', N'Dồi sụn nướng', '0', N'https://image.cooky.vn/recipe/g5/40370/s640/cooky-recipe-cover-r40370.jpg', N'1.Cách làm dồi sụn nướng: 300gr sụn heo (sụn cuống họng) mua về luộc chín sau đó cắt nhỏ. 100gr mỡ heo cũng cắt thành miếng nhỏ. Cho mỡ heo vào chung với sụn heo rồi băm nhuyễn. Chuẩn bị một chiếc tô lớn, trộn chung phần sụn và mỡ vừa băm cùng với 300gr thịt heo xay, 30gr hành tây cắt hạt lựu, 30gr rau húng quế cắt nhỏ, 20gr rau răm cắt nhỏ, 20gr hành lá cắt nhỏ, 30gr đậu phộng rang giã nhỏ, 3 muỗng canh đường, 3 muỗng canh nước mắm, 2 muỗng canh hạt nêm, 2 muỗng canh rượu mai quế lộ, 2 muỗng canh dầu điều, 1 muỗng cà phê tiêu sọ, trộn đều tất cả. Ướp nhân ít nhất 30 phút cho thấm gia vị.
2.Làm sạch bên trong lòng non, rửa qua rượu gừng cho khử bớt mùi hôi. Cột 1 đầu bộ lòng, chuẩn bị một chiếc phễu, nhét phần đầu nhọn của phễu vào miệng lòng rồi giữ chặt (nếu không có phễu, có thể sử dụng đầu của chiếc chai nhựa). Lần lượt nhồi nhân thịt sụn vào lòng heo cho đến khi hết. Sau khi nhồi xong dùng chỉ thực phẩm cột và chia lòng thành từng đoạn theo độ dài tùy ý.
3.Chuẩn bị một nồi nước ấm, cho dồi vào luộc từ 5-7 phút. Trong quá trình luộc, khi thấy dồi vừa chuyển màu đục thì lấy que xiên tre châm vào từng khúc dồi cho khí hơi bên trong xì thoát ra, làm dồi sụn không bị quá căng, dễ bị rách khi luộc hoặc khi nướng. Sau khi luộc xong, lấy dồi ra để nguội, sau đó cắt rời từng khúc dồi, lấy que xiên xiên vào từng khúc.
4.Cách làm dồi sụn nướng: Chuẩn bị một bếp than hồng, xếp dồi lên nướng đến khi nghe mùi thơm hấp dẫn, dồi chuyển sang màu nâu đỏ, hơi cháy xém thì lấy xuống.
5.Dồi sụn nướng vàng bóng, tỏa hương thơm phức, thật hấp dẫn. Cảm giác khi cắn một miếng dồi sụn nướng và cảm nhận được phần sụn giòn sần sật, nhân thịt ngọt bùi sẽ thích thú biết mấy. Món dồi sụn nướng thường ăn kèm rau húng quế, kẹp chung với ít đồ chua (dưa món), chấm cùng sốt cay cay, mọi hương vị như bùng nổ trong miệng khiến bạn muốn ăn mãi không dừng. Có cách làm dồi sụn nướng này rồi cuối tuần nhớ làm thử đãi gia đình nhé');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0045', N'Ếch xào sả ớt', '0', N'https://image.cooky.vn/recipe/g1/573/s640/recipe573-635533989666260313.jpg', N'1.Cách làm thịt ếch: Rửa sạch và lột da ếch, lột gân đen rồi rửa kỹ với nước muối pha loãng, rửa lại với nước sạch, để ráo và đem chặt thành miếng vừa ăn. Nếu đùi nào to thì cắt ra nhỏ cho vừa miệng. Rửa sạch sả và ớt tươi. Băm nhuyễn phần gốc của sả chung với ớt tươi.
2.Bật bếp, chờ cho chảo nóng thì cho 1 muỗng dầu ăn vào, tráng đều mặt chảo. Khi dầu nóng già (dầu sủi bọt tăm) thì cho tiếp tỏi, ớt, gừng, sả vào xào thơm. Cho ếch vào dùng đũa đảo nhanh tay, thấy thịt ếch săn lại thì cho chút bột nêm, nước mắm và thêm ít nước màu để món ếch xào sả ớt thêm đẹp mắt hấp dẫn.
3.Đậy nắp lại chờ chút nữa là thịt ếch chin (khoảng 5-7 phút), nêm nếm lại cho vừa ăn, phù hợp với khẩu vị gia đình để ăn với cơm được ngon hơn.
4.Món ếch xào sả ớt thơm lừng đã xong rồi, mời các bạn cùng thưởng thức. Món này ăn kèm cùng cơm nóng để giữ ấm trong những ngày se se lạnh thì còn gì tuyệt bằng. Hãy trổ tài nấu ăn của mình bằng cách làm ếch xào sả ớt ngon ""tuyệt chiêu"" này nhé, gia đình sẽ rất bất ngờ đó.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0046', N'Bò xào cay tứ xuyên', '0', N'https://image.cooky.vn/recipe/g4/34570/s640/cooky-recipe-cover-r34570.jpg', N'1.Cần tây, cà rốt, hành lá, gừng làm sạch. Cần tây thái sợi dài, cà rốt bào sợi. Gừng thái lát rồi thái sợi chỉ. Hành lá cắt khúc, tước đôi. Thịt bò rửa sạch, thái sợi dài. Ớt khô thái mỏng.
2.Bắc chảo chống dính lên bếp, cho dầu mè vào đun nóng trên lửa cao. Ngay lập tức cho thịt bò vào, xào cho đến khi thịt bò ra nước và săn lại. Bước này sẽ mất khoảng 2 – 3 phút. Lấy thịt bò ra khỏi chảo và để sang một bên.
3.Vặn lửa thấp, thêm dầu ăn vào chảo. Phi gừng cho thơm rồi cho sốt tương ớt vào. Đảo đều trong 1 phút cho đến khi dầu chuyển sang màu đỏ, điều chỉnh nhiệt khi cần để tránh làm dầu bị cháy. Sau đó cho cà rốt thái sợi vào.
4.Tiếp theo, thêm cần tây và thịt bò đã nấu chín. Bật lửa cao và dùng vá gỗ đảo đều trên chảo. Nhanh chóng cho rượu Thiệu Hưng, đường, nước tương, dầu mè, ớt khô và hành lá vào. Xào hỗn hợp trong vòng 1 phút cho đến khi các gia vị hòa quyện vào nhau. Nếm thử vừa miệng thì tắt bếp.
5.Bày thịt bò xào ra đĩa và thưởng thức cùng cơm trắng nhé. Thịt bò mềm mềm, cay cay kết hợp với cần tây, cà rốt thấm sốt đậm đà khiến bữa cơm cả nhà thêm phần thú vị, ấm cúng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0047', N'Canh thịt bò nấu thơm và cà chua', '0', N'https://image.cooky.vn/recipe/g4/31727/s640/cooky-recipe-636633239648951830.jpg', N'1.Đầu tiên chúng ta băm nhỏ hành tím. Cà chua cắt bỏ cuống, thái múi cau.
2.Thơm gọt sạch vỏ, cắt thành miếng nhỏ. Sau đó ướp với chút đường và dùng tay bóp lấy nước.
3.Thịt bò rửa sạch, thái lát mỏng theo thớ thịt nằm ngang. Ướp thịt bò với 1/2 muỗng canh hạt nêm, 1/2 muỗng cà phê muối, 1/2 muỗng canh nước mắm, 1 chút hành tím băm trong 15 phút.
4.Phi thơm 2 muỗng canh dầu ăn với 1 chút hành tím băm. Tiếp theo cho cà chua vào xào chung. Cho vào nồi 1 lít nước và nước thơm đã chắt vào nấu sôi.
5.Khi thấy canh sôi các bạn dùng muôi hớt sạch bọt để nước trong món canh thịt bò nấu dứa sẽ ngon hơn. Sau đó nêm thêm 1 chút muối và hạt nêm.
6.Tiếp đó, bạn cho thơm vào đun sôi khoảng 3 phút nữa đến khi các nguyên liệu vừa chín đều thì cho thịt bò cùng toàn bộ nước ướp vào, đảo nhẹ, nêm nếm lại gia vị cho vừa ăn. Cuối cùng cho hành lá vào rồi tắt bếp.
7.Múc canh thịt bò nấu thơm ra bát to, ớt thái lát lên trên và thưởng thức món canh thịt bò nấu dứa ngon tuyệt thôi nào!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0048', N'Vịt om sấu', '0', N'https://image.cooky.vn/recipe/g1/1209/s640/cooky-recipe-cover-r1209.jpg', N'1.Giã nhỏ gừng, trộn với muối và xát lên thịt vịt để làm sạch và khử mùi hôi của vịt. Chặt thịt vịt thành miếng nhỏ vừa ăn. Ướp thịt vịt với tiêu, nước mắm, tỏi băm, ớt băm và sả khoảng 10 phút. Cạo vỏ quả sấu, ngâm với nước lạnh cho sấu không bị thâm. Khoai sọ làm sạch, bỏ vỏ. Băm nhỏ tỏi và ớt.
2.Đun nóng dầu ăn trong chảo/nồi, cho thịt vịt đã ướp vào, xào khoảng 10 phút đến khi thịt săn lại. Bước này sẽ giúp cho thịt vịt khi nấu vịt om sấu sẽ thơm mềm và ngấm gia vị hơn. Tiếp theo cho quả sấu, khoai sọ cùng 1 lít nước vào nấu cùng. Nêm bột ngọt cho vừa ăn, nấu cho đến khi món ăn chín thì tắt bếp.
3.Cách nấu vịt om sấu khá dễ dàng đúng không nào? Món vịt om sấu này nên ăn ngay khi còn nóng là ngon và chuẩn nhất. Vì vậy, sau khi nấu vịt om sấu xong thì bạn nên múc ra ăn liền hoặc múc vào nồi nấu lẩu, ăn cùng bún và các loại rau tùy ý như rau muống, rau nhút... là vô cùng tuyệt vời.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0049', N'Lẩu gà hầm sả', '0', N'https://image.cooky.vn/recipe/g1/8781/s640/recipe8781-636010653298998633.jpg', N'1.Trước khi nấu lẩu gà hầm sả đem: Rửa sạch thịt gà, chặt gà thành những miếng nhỏ vừa ăn. Ướp gà với sả cắt khúc, đập dập, 1 muỗng canh sa tế, 1 muỗng cà phê nước mắm, 1/2 muỗng cà phê muối, 1 muỗng cà phê đường trắng, 1/2 muỗng cà phê hạt nêm trong tô, trộn đều cho tất cả ngấm gia vị.
2.Nhặt sạch rau mồng tơi, cải bẹ xanh, rửa sạch, cắt khúc to, cho ra đĩa. Ớt rửa sạch, cắt nhỏ.
3.Cách nấu lẩu gà hầm sả ớt đơn giản: Phi thơm tỏi băm với 2 muỗng canh dầu ăn. Cho thịt gà đã ướp vào, đảo đều đến khi thịt gà săn lại. Đổ 1.5 lít nước vào cùng, nấu sôi.
4.Khi nước lẩu gà sôi, hạ nhỏ lửa, tiếp tục nấu thêm khoảng 3 phút. Nêm nếm lại gia vị nếu nhạt.
5.Lẩu gà hầm sả ớt, nóng hổi, nước dùng đậm đà, cay nhẹ sẽ kích thích vị giác người thưởng thức. Ăn kèm với bún tươi, rau mồng tơi, cải bẹ xanh sẽ ngon lắm đây. Các bạn nhất định phải lưu lại cách nấu lẩu gà hầm sả ớt ngon lành này nhé, cuối tuần rảnh rỗi đúng là thích hợp nhất luôn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0050', N'Thịt ức gà ăn kiêng', '0', N'https://image.cooky.vn/recipe/g1/6022/s640/cooky-recipe-cover-r6022.jpg', N'1.Trong chén nhỏ trộn đều nước tương với tiêu, ớt bột và bột tỏi. Gà rửa sạch, dùng giấy lau khô. Dùng dao khứa vào đường lên thịt gà để gia vị dễ thấm. Ướp gà với tất cả các gia vị khoảng 15 phút.
2.Mở trước lò nướng ở 175 độ C. Đặt gà lên khay nướng có lót giấy kẽm, nướng gà khoảng 15 -20 phút là gà chín. Bày trí gà nướng ra đĩa, dùng nóng sẽ ngon.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0051', N'Thịt bò khô sấy tại nhà', '0', N'https://image.cooky.vn/recipe/g2/10774/s640/recipe10774-636106837004473215.jpg', N'1.Trộn đều các loại gia vị vào với nhau đến khi nhuyễn.
2.Thái thịt bò dọc thớ, thành miếng mỏng, to bản. Sau đó đổ hỗn hợp gia vị lên thịt bò, đeo găng tay bóp đều để thịt bò ngấm gia vị. Ướp thịt trong tủ lạnh ít nhất 4 tiếng, hoặc qua đêm.
3.Đặt chảo chống dính lên bếp, đun lửa lớn. Cho lần lượt các miếng thịt bò vào, cố gắng trải phẳng miếng thịt bò thì thành phẩm sẽ phẳng phiu hơn. Sau khi xào qua hai mặt thì thịt bò sẽ cứng và phẳng hơn, bạn có thể tiếp tục cho thêm lượt thịt tiếp theo vào và làm tương tự. Đảo thịt đến khi thịt săn và nước thịt cô đặc lại thì tắt bếp.
4.Rải đều thịt bò lên khay để chuẩn bị sấy. Ở công đoạn sấy, bạn chuẩn bị lò nướng ở nhiệt độ 220C. Sấy thịt từ 5-7 phút (thời gian này có thể thay đổi tuỳ thuộc vào nhu cầu của bạn muốn có thịt bò khô hay còn ướt). Lật các miếng thịt bò 1-2 lần để thịt được khô nhanh hơn.
5.Thịt bò khô làm theo công thức đơn giản này có thể bảo quản trong hộp hay túi kín ở tủ lạnh khoảng 2 tuần. Bạn có thể bảo quản lâu hơn trong ngăn đá tủ lạnh.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0052', N'Chân giò hầm măng khô', '0', N'https://image.cooky.vn/recipe/g5/45493/s640/cooky-recipe-cover-r45493.JPG', N'1.Các bạn ngâm 200gr măng khô với 1 lít nước ấm trong khoảng 30 phút cho măng nở mềm. Sau đó luộc chín măng trong khoảng 15 phút, đến khi măng mềm. Tiếp theo rửa sạch măng và xé nhỏ măng thành từng sợi.
2.Chân giò mua về rửa sạch, chặt thành từng khoanh tròn. Sau đó ướp 700gr chân giò với 15gr hành tím, 1 muỗng canh hạt nêm, 1/2 muỗng canh tiêu và 1 muỗng canh nước mắm. Để chân giò ngấm gia vị trong khoảng 30 phút.
3.Đun nóng 2 muỗng canh dầu ăn, phi thơm 15gr hành tím và cho chân giò đã ướp vào xào săn, thêm 500ml nước dừa tươi vào nấu đến khi sôi thì cho tiếp măng khô xé sợi vào. Nêm gia vị gồm hạt nêm 1 muỗng canh, muối 1 muỗng canh, nước mắm 1 muỗng canh và 200ml nước. Hầm lửa nhỏ trong khoảng 60 phút đến khi nước cạn và chân giò, măng đã chín mềm.
4.Chân giò hầm măng khô ăn nóng là ngon nhất, có thể ăn cùng cơm nóng hay bánh chưng bánh tét đều thích hợp. Khi ăn rắc thêm tiêu và hành lá cho thơm. Chỉ 3 bước đơn giản đã có ngay món ngon đãi cả nhà trong dịp Tết rồi đó.

');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0053', N'Thịt gà rang muối', '0', N'https://image.cooky.vn/recipe/g1/3635/s640/recipe3635-635700531229814313.jpg', N'1.Rang gạo nếp, đậu xanh, tiêu hạt, muối đến khi thấy mùi thơm, nếm thử gạo và đậu xanh có độ giòn, bùi là được.
2.Cho ra cối giã thật nhỏ, rây để thu lấy phần bột mịn. Hoặc dùng cối xay đồ khô của máy sinh tố để xay sẽ tiết kiệm được thời gian, công sức, mà hỗn hợp muối thu được sẽ rất mịn, đẹp.
3.Cắt vát phần đầu non của sả để riêng, khúc sau già hơn thì băm nhỏ, gừng cũng đập dập rồi băm nhỏ.
4.Ướp gà cùng với gừng sả, 1 muỗng cà phê dầu hào, 1/2 muỗng cà phê hạt nêm.
5.Làm nóng 2 muỗng cà phê dầu rồi cho phần sả đã thái vát lúc trước vào phi vàng, vớt ra cho ráo dầu.
6.Dùng lại chảo dầu vừa phi thơm sả để chiên thịt gà. Lật thịt gà chiên vàng đều 2 mặt.
7.Khi thịt gà chín, có màu vàng ươm thì vớt ra, xúc từng muỗng hỗn hợp muối rắc vào, xóc nhẹ cho muối bám đều.
8.Bày thịt gà ra đĩa, rắc sả phi lên trên rồi thưởng thức ngay khi còn nóng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0054', N'Thịt lợn xào chua', '0', N'https://image.cooky.vn/recipe/g1/838/s640/recipe838-635536435466197968.jpg', N'1.Thịt lợn thái miếng mỏng, ướp với muối, tiêu, bột chiên giòn, trộn đều lên để 10 phút cho ngấm.
2.Đặt nồi lên bếp, cho dầu ăn đun nóng, cho thịt vào chiên trong khoảng 3 phút. Đến khi thịt vừa chín vàng là được. Không chiên quá lâu, miếng thịt sẽ khô.
3.Lấy một cái chảo khác, cho chút xíu dầu ăn, đun nóng rồi phi tỏi băm cho thơm. Tiếp đến cho nước sốt cà chua vào, thêm chút nước lọc, đun sôi. Cho tiếp dấm trắng, muối tiêu, đường, khuấy đều. Nêm nếm cho vị chua mặn ngọt vừa ăn.
4.Cuối cùng cho thịt vừa chiên vào sốt, khuấy đều, đun lửa vừa trong vài phút cho thịt ngấm. Tiếp theo cho hành lá vào và tắt bếp. Bày ra đĩa thưởng thức cùng cơm nóng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0055', N'Bò sốt Teriyaki', '0', N'https://image.cooky.vn/recipe/g1/2178/s640/recipe2178-635761081189867924.jpg', N'1.Thịt bò rửa sạch, cắt miếng vuông nhỏ, ướp với tỏi cắt lát, 2 muỗng cà phê hạt nêm, 1/4 muỗng cà phê tiêu, 3 muỗng canh sốt teriyaki trong khoảng 15 phút.
2.Đun nóng chảo với lửa to. Cho thịt bò đã ướp và đảo đều tay. Khi thịt bò chín xém thì cho nước ướp thịt, thêm hành lá cắt nhỏ và 1 muỗng cà phê mật ong vào. Đun đến khi thịt chín thì tắt bếp.
3.Bày ra đĩa, dùng chung với cơm nóng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0056', N'Canh khoai mỡ nấu thịt viên', '0', N'https://image.cooky.vn/recipe/g1/1492/s640/recipe1492-635678150527029693.jpg', N'1.Khoai mỡ rửa sạch, gọt vỏ rồi rửa lại lần nữa. Cắt miếng vừa ăn, độ dày 1cm.
2.Ngò om và ngò gai rửa sạch, cắt nhỏ. Hành lá rửa sạch, băm nhuyễn.
3.Trộn thịt heo bằm với hành lá băm,1/2 muỗng cà phê muối, 1/4 muỗng cà phê hạt nêm. Để 5 phút cho thấm đều gia vị. Sau đó viên thịt thành những viên nhỏ vừa ăn.
4.Nấu sôi khoảng 1 lít nước. Thả các viên thịt băm vào.
5.Nước sôi thêm 2 phút thì cho khoai mỡ vào. Gia vị bột ngọt, phần muối và hạt nêm còn lại. Chờ cho khoai mỡ chín thì rắc ngò om và ngò rí, tắt bếp.
6.Múc canh thịt viên nấu khoai mỡ ra tô, ăn nóng với cơm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0057', N'Thịt bò cuộn kiểu Ý', '0', N'https://image.cooky.vn/recipe/g1/3747/s640/recipe3747-635749707854824528.jpg', N'1.Đầu tiên, cho 130g vụn bánh mì, cần tây cắt nhỏ, 2 loại phô mai và 2 muỗng canh dầu ôliu vào chén rồi trộn đều.
2.Thịt cắt thành 4 miếng, rửa sạch. Trải thịt bò ra thớt, sau đó rắc hỗn hợp vụn bánh vừa trộn lên mặt thịt bò.
3.Bắt đầu cuộn từ đầu nhỏ vào, chú ý hạn chế để nhân rơi ra ngoài. Sau khi cuộn xong, buộc lại thật chặt rồi rắc 1/2 muỗng cà phê muối và 1/2 muỗng cà phê tiêu lên trên.
4.Làm nóng chảo trên lửa vừa, thêm 2 muỗng canh dầu ôliu còn lại vào chảo. Khi dầu nóng, cho thịt bò vào, đảo đều đến khi thịt chuyển màu nâu đều các mặt rồi lấy thịt ra.
5.Thêm 250ml rượu vang trắng vào chảo, đảo mạnh để làm tan những phần nâu trên chảo ra.
6.Trong lúc đó, bắc một nồi khác lên bếp, cho 80ml sốt cà chua vào rồi đun nóng lên. Đồng thời, bạn làm nóng lò ở 180 độ.
7.Cho thịt bò vào sốt cà chua đã đun, đổ phần rượu vang vừa chuẩn bị lên trên. Dùng giấy bạc gói kín miệng nồi lại rồi cho vào lò, nướng trong 1 tiếng. Sau 1 tiếng, gỡ lớp giấy bạc ra rồi nướng tiếp trong 30 phút nữa.
8.Bạn chuẩn bị mì Ý để ăn kèm với món thịt bò cuộn này nữa nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0058', N'Bánh gà chiên xù', '0', N'https://image.cooky.vn/recipe/g2/11207/s640/recipe11207-635718020335134040.jpg', N'1.Rửa sạch, gọt vỏ rồi cắt nhuyễn cà rốt và gừng.
2.Thịt ức gà lọc lấy phần thịt nạc, rửa sạch, băm nhuyễn.
3.Tiếp theo, cho cà rốt và gừng đã băm vào trộn đều với thịt gà.
4.Cho hỗn hợp vào 1 tô lớn, thêm 1 lòng trắng trứng, 1/2 muỗng cà phê muối, 1/2 muỗng cà phê tiêu và 1 muỗng cà phê dầu ăn vào. Dùng đũa trộn đều tất cả các nguyên liệu với nhau.
5.Chuẩn bị 3 cái chén nhỏ: 1 chén đựng bột chiên xù, 1 chén đựng 1 bột bắp, 1 chén đựng trứng gà đánh tan. Viên thịt gà thành từng viên rồi lăn lần lượt qua bột bắp, trứng gà rồi đến bột chiên xù.
6.Chuẩn bị chảo cho dầu vào, đợi dầu nóng, thả gà viên vào chiên đến khi vàng. Vớt gà ra rồi để cho thật ráo dầu.
7.Chuẩn bị một chén tương ớt, tương cà và sốt mayonnaise dùng kèm nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0059', N'Thịt bò bít tết', '0', N'https://image.cooky.vn/recipe/g2/16166/s640/recipe16166-635829255850239383.jpg', N'1.Tỏi bóc vỏ, cắt thành các lát mỏng. Nếu tỏi có lõi xanh thì bỏ lõi đi. Đun nóng dầu ăn trong chảo ở nhiệt độ trung bình thấp rồi cho tỏi vào xào cho đến khi tỏi có màu vàng nâu. Sau đó cho tỏi ra khăn giấy còn dầu chiên tỏi thì để riêng ra một chén.
2.Cắt bỏ phần mỡ, gân thịt bò nếu có. Rắc muối và hạt tiêu vừa đủ lên miếng thịt bò.
3.Đun nóng chảo, đổ phần dầu đã chiên tỏi vào. Khi chảo nóng nhưng chưa bốc khói, lúc đó dầu đã sẵn sàng để cho thịt bò vào. Cho thịt bò vào, chiên thịt trong 1.5 phút. Sau đó, lật thịt và nấu thêm trong 1.5 phút. Nếu là thịt bò Kobe Mỹ thì chiên mỗi bên mặt thịt là 2 phút. Bóp đều nước chanh và rượu vang lên hai miếng thịt.
4.Có thể cắt luôn thịt bò trong chảo chiên còn nếu như sử dụng thịt bò Kobe Mỹ, có thể để nguội vài phú trước khi cắt.
5.Cho thịt bò bít tết ra đĩa và thưởng thức với tỏi chiên, rau mầm... hoặc tùy ý bạn!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0060', N'Chà bông thịt', '0', N'https://image.cooky.vn/recipe/g1/1660/s640/recipe1660-635690956046963889.jpg', N'1.Thịt heo cắt miếng to, dọc thớ. Luộc sơ thịt heo.
2.Cho thịt heo vào nồi kho cùng nước mắm, hạt nêm, 2 muỗng canh nước lọc. Kho cho đến khi cạn nước, gia vị thấm hết vào thịt.
3.Để thịt nguội bớt rồi xé sợi.
4.Cho thịt vào chảo, đảo cho đến khi thịt có màu hơi vàng.
5.Cho thịt vào máy xay sinh tố để đánh bông thành chà bông.
6.Đổ phần chà bông đã xay lại chảo, cho thêm dầu ăn. Đảo trên lửa nhỏ cho đến khi chà bông có độ vàng như ý thì tắt bếp.
7.Cho chà bông ra đĩa, để nguội rồi cất vào hũ kín, để dùng dần.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0061', N'Ếch om coca', '0', N'https://image.cooky.vn/recipe/g1/6783/s640/recipe6783-635756568303337458.jpg', N'1.Chuẩn bị tất cả các nguyên liệu. Ếch cắt miếng vừa ăn, đem ướp với 1 muỗng cà phê hạt nêm và 1 muỗng cà phê dầu hào cho ngấm vị.
2.Cho 1 muỗng canh dầu ăn vào chảo, cho tỏi băm vào phi thơm. Trút ếch đã ướp vào xào. Cho thêm gừng cắt lát và ớt trái đập dập.
3.Khi ếch đã bắt đầu chín bề mặt thì cho 1 lon coca vào chảo. Nước coca sôi, đảo đều cho nước coca sệt lại và bám đều lên bề mặt miếng thịt ếch. Nước coca sệt lại chuyển sang màu cánh gián rất đẹp và bám đều lên bề mặt thịt ếch, bắc ra khỏi bếp.
4.Múc ếch om coca ra đĩa, trang trí hành lá thêm hấp dẫn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0062', N'Ếch kho tộ', '0', N'https://image.cooky.vn/recipe/g1/940/s640/recipe940-635545810719857487.jpg', N'1.Thịt ếch rửa sạch, để ráo, chặt miếng vừa ăn. Cho ếch vào tô, ướp với nước mắm, tương ớt và đường trong 20 phút. Thỉnh thoảng dùng đũa đảo đều nhiều lần để thịt ếch ngấm đều gia vị.
2.Ớt khô ngâm nước ấm, ớt nở, vớt ra để ráo nước. Hành rửa sạch, cắt khúc, lấy đầu hành.
3.Đặt chảo lên bếp, cho dầu ăn vào, dầu sôi, cho tỏi băm vào phi thơm. Sau đó cho ếch vào, đảo sơ qua để thịt ếch săn lại. Rắc ớt khô lên rồi đảo đều.
4.Cho ếch vào thố, khi gần đến bữa ăn, bạn cho thố lên bếp đun sôi với lửa liu riu để nước sốt sệt lại. Sau cùng, thêm ít hành lá và rắc ít tiêu lên bề mặt. Món này nên dùng nóng sẽ rất đưa cơm. Chúc bạn ngon miệng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0063', N'Ếch kho xì dầu', '0', N'https://image.cooky.vn/recipe/g3/25372/s640/recipe-cover-r25372.jpg', N'1.Hành lá cắt nhỏ, để đầu hành lá 1 ít băm nhỏ, 1 ít cắt khúc. Hành tím băm nhỏ. Ớt hiểm đập dập rồi cho đùi ếch làm sạch vào ướp cùng hành lá, hành tím, ớt, 1/3 muỗng cà phê tiêu, 1/2 muỗng cà phê ớt bột, 1 muỗng cà phê hạt nêm trong khoảng 15 phút.
2.Chuẩn bị nước kho thịt ếch: khuấy đều hỗn hợp gồm 3 muỗng hắc xì dầu, 3 muỗng cà phê muỗng đường, 1 chén nước. Phi thơm hành tím với 1 muỗng canh dầu ăn, cho ếch vào xào săn.
3.Sau đó, cho ếch qua nồi, từ từ đổ hỗn hợp nước kho vào, đậy vung kín rồi kho lửa vừa đến khi nước sền sệt hoặc thấy thịt ếch mềm
4.Ếch kho xì dầu (nước tương đen) là món ăn đơn giản với nguyên liệu thịt ếch tươi làm sẵn, cùng ít gia vị tẩm ướp đêm kho chín tới trong vòng tích tắc, thích hợp cho các chị em bận rộn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0064', N'Thịt vịt rang riềng', '0', N'https://image.cooky.vn/recipe/g1/4715/s640/recipe4715-635745635134983806.jpg', N'1.Thịt vịt rửa sạch, xát với 1 muỗng canh muối, rửa lại với nước, chặt miếng vừa ăn, để ráo.
2.Củ riềng gọt vỏ, cho vào cối, giã nhuyễn, cho ra chén.
3.Ướp thịt vịt với củ riềng, 1 muỗng canh nước mắm, 1 muỗng canh nước màu, 1/2 muỗng cà phê tiêu, 1/2 muỗng cà phê bột ngọt, 1 muỗng canh rượu trắng, 1/2 muỗng cà phê ớt bột, 1 muỗng canh nước tương khoảng 10 phút.
4.Làm nóng 2 muỗng canh dầu ăn, cho hỗn hợp thịt vịt đã ướp vào, đảo đều nhỏ lửa khoảng 10 phút cho đến khi thịt vịt chín, riềng khô lại.
5.Tắt bếp, bày món ăn ra đĩa và trang trí tùy thích! Giờ thì thưởng thức cùng với cơm nào.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0065', N'Thịt vịt luộc mềm thơm', '0', N'https://image.cooky.vn/recipe/g4/35923/s640/cooky-recipe-cover-r35923.jpg', N'1.Thịt vịt mua về dùng muối hột và gừng đập dập để chà xát cả trong và ngoài con vịt rồi rửa sạch lại với nước. Gừng có tác dụng khử mùi hôi vịt hiệu quả và giúp vịt thơm hơn khi luộc. Sau đó dùng rượu trắng (có thể dùng giấm gạo) để rửa vịt rồi xả lại với nước, chắc chắn vịt sẽ không còn mùi hôi.
2.Cho thịt vịt vào nồi sâu lòng, đổ lượng nước đủ để ngập hết phần vịt, thêm vào 1 củ gừng đập dập, hoặc 1 củ hành tím nướng. Đun sôi khoảng 20-25 phút, khi thấy phần nước đã cạn hơn, dùng 1 chiếc đũa chọc vào phần thịt vịt nếu không chảy ra nước màu đỏ là vịt đã chín.
3.Vớt vịt ra để nguội rồi chặt thành từng miếng vừa ăn và thưởng thức. Về phần nước chấm đơn giản thì bạn có thể tận dụng lượng gừng tươi còn dư để làm nước mắm gừng có vị chua cay, mặn ngọt cho vừa khẩu vị nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0066', N'Thịt vịt hầm bia', '0', N'https://image.cooky.vn/recipe/g2/14396/s640/recipe-635579306849071165.jpg', N'1.Vịt rửa sạch, chặt thành miếng vừa ăn. Sau đó, cho thịt vịt vào nồi cùng 500ml nước, luộc sơ qua khoảng 5 phút. Hành lá cắt nhỏ.
2.Tiếp theo, cho thịt vịt vào nồi hầm. Thêm 300ml bia, hoa hồi, thanh quế, 1 muỗng canh nước tương, 1 muỗng canh đường trắng, 1 muỗng cà phê muối, 1 muỗng cà phê hạt nêm vào, đậy kín nắp.
3.Bắc nồi lên bếp, hầm lửa to, sau đó hạ nhỏ lửa dần dần. Tiếp tục hầm thêm khoảng 15 phút đến khi nước trong nồi sệt lại mới tắt bếp. Chú ý là khi vừa tắt bếp, không nên mở nắp nồi hầm, để khoảng 10-15 phút rồi mở nắp. Tránh trường hợp áp suất trong nồi hầm có thể gây nổ.
4.Múc ra tô, rắc hành lá lên cho món ăn hấp dẫn nè. Món này mà ăn với cơm đảm bảo sẽ hết sạch luôn đấy!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0067', N'Vịt chiên nước dừa', '0', N'https://image.cooky.vn/recipe/g2/14914/s640/recipe14914-635579598975028257.jpg', N'1.Thịt vịt rửa sạch với nước muối pha loãng, chặt thành miếng vừa ăn. Rau mùi rửa sạch.
2.Làm nóng 3 muỗng canh dầu ăn trong chảo, cho thịt vịt vào chiên vàng đều.
3.Đổ 100 ml nước dừa vào nấu cùng, thêm 1 muỗng cà phê bột ngọt, 1 muỗng cà phê đường trắng, 2 muỗng canh nước mắm cho vừa ăn.
4.Đợi đến khi nước dừa cạn sệt thì tắt bếp. Cho món ăn ra đĩa, trang trí thêm rau mùi và ăn cùng với cơm nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0068', N'Cháo thịt chim bồ câu', '0', N'https://image.cooky.vn/recipe/g1/5767/s640/cooky-recipe-cover-r5767.jpg', N'1.Ngâm chung đậu xanh không vỏ, gạo tẻ, gạo nếp, hạt sen khô với nước cho nở mềm. Bồ câu làm sạch, xát qua với gừng, rượu trắng cho bớt tanh, sạch. Lấy thịt bồ câu băm nhuyễn. Phần xương lấy ninh với 2 lít nước để nấu cháo nhé!
2.Làm nóng dầu ăn, cho bồ câu vào, đảo đều 4 phút. Nêm gia vị 1 muỗng canh nước mắm, 1/2 muỗng cà phê tiêu, 1 muỗng cà phê hạt nêm cho vừa ăn.
3.Cho gạo tẻ, gạo nếp, hạt sen khô, đậu xanh không vỏ vào nồi cùng nước, nấu sôi nhỏ lửa cho cháo chín mềm. Khi cháo gần được, cho 1/3 chỗ bồ câu đã xào vào, trộn đều rồi tắt bếp.
4.Múc cháo ra chén. Thêm hành lá, ngò rí cắt nhỏ và hành phi lên trên, dùng nóng. Chim bồ câu chứa nhiều chất dinh dưỡng, tốt cho sức khỏe của bé, người mới ốm dậy. Có rất nhiều cách chế biến như nấu cháo, hầm... Biến tất một chút cho bữa sáng để cả nhà thêm ấm bụng nào.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0069', N'Cánh gà nước mật ong tỏi', '0', N'https://image.cooky.vn/recipe/g1/3088/s640/recipe3088-635708276141340781.jpg', N'1.Ngâm cánh gà trong nước sạch 30 phút, sau đó vớt ra, thấm khô bằng giấy. Trộn cánh gà và với dầu hào, dầu ăn, nước tương, muối, tỏi băm, tiêu, rồi bọc tô thịt gà lại bằng màng bọc thực phẩm. Cho vào tủ lạnh ít nhất 4 giờ hoặc qua đêm.
2.Sau đó, cho cánh gà vào lò nướng, bến dưới giá đỡ có lót giấy bạc để nước thịt già không chị chảy vào lò nướng. Cho mật ong vào nước ấm hòa tan sau đó phết đều lên mặt cánh gà.
3.Bật lò nướng ở nhiệt độ 390 độ F trong 15 phút. Sau đó, lật cánh gà, dùng cọ quét nước mật ong lên một lần nữa rồi nướng trong 10 phút là được.
4.Giờ chỉ việc thưởng thức món cánh gà nướng mật ong, tỏi thôi!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0070', N'Miến gà trộn', '0', N'https://image.cooky.vn/recipe/g3/27604/s640/recipe-cover-r27604.JPG', N'1.100gr miến bạn trụng với nước sôi, thêm 1 muỗng canh dầu ăn vào cho sợi miến không bị dính vào nhau. Lưu ý bạn trụng miến khoảng 4-5s cho sợi miến vừa chín tới thôi nhé.
2.Phi 15gr hành tím và 15gr tỏi băm cho thơm rồi thêm 100ml nước tương, 15ml dầu mè, 20gr đường vào đảo đều đến khi hỗn hợp sôi rồi tắt bếp.
3.Cho giá và miến trụng vào tô, thêm thịt gà xé còn thừa từ những gà luộc ngày Tết vào, chan nước sốt mằn mặn, vắt thêm miếng chanh và ăn kèm với ớt là đã có tô miến gà thơm ngon tận dụng từ những món gà thừa.
4.Món này rất dễ ăn lại có cả rau nên không hề bị ngán, mỗi bát miến bạn múc thêm 1 bát nước dùng, cho thêm chút rau thơm vào thì đã có ngay tô miến gà tươm tất, đủ vị chẳng kém ngoài hàng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0071', N'Cá nục kho cà chua và dứa', '0', N'https://image.cooky.vn/recipe/g1/8759/s640/recipe8759-635636575031777459.jpg', N'- Cá nục rửa sạch, cắt bỏ ruột rồi cắt khúc vừa ăn, để ráo. Nên chọn những con cá nục còn tươi vì như vậy khi nấu sẽ ngon hơn. Cà chua rửa sạch, cắt thành khúc. Thơm cắt vỏ, bỏ mắt trái thơm, cắt thành miếng vừa ăn. Làm nóng dầu ăn trong chảo, cho cá nục vào, chiên vàng giòn. Thỉnh thoảng lật đều 2 mặt để cá chín đều, gắp cá ra, để ráo dầu. Tiếp tục dùng chảo đó, cho cà chua vào xào. Sau đó, cho cá nục đã chiên, thơm vào cùng. Nêm gia vị nước mắm, hạt nêm, đường trắng, tiêu vào, nấu thêm 10 phút. Cho món ăn ra đĩa, thêm ớt vào nếu muốn ăn cay nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0072', N'Cá basa kho tộ', '0', N'https://image.cooky.vn/recipe/g1/3030/s640/recipe3030-635643660376673456.jpg', N'- Rửa sạch các miếng cá basa, để ráo, ướp cá với ½ muỗng cà phê muối khoảng 15 phút. Hành lá cắt nhuyễn. Bắc chảo không dính lên bếp, cho một muỗng dầu ăn và 2 muỗng cà phê đường vào chảo. Đợi cho đến khi đường tan và chuyển màu cánh gián thì cho 1 muỗng tỏi và hành băm nhỏ vào phi thơm, tắt bếp. Cho cá vào chảo trên, thêm 1 muỗng nước mắm và 3 muỗng cà phê đường, bật bếp để lửa to cho sôi bùng lên thì giảm xuống ở mức lửa nhỏ nhất, thêm 2 muỗng nước lọc, thả ớt trái vào, đun đến khi nước sệt lại là được. Tắt bếp, rải hành lá vào cùng chút tiêu sẽ giúp cá khô tộ thơm ngon hơn nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0073', N'Cá hồi chiên sốt mật ong', '0', N'https://image.cooky.vn/recipe/g2/17725/s640/recipe17725-636057468560263309.jpg', N'- Rắc đều muối và tiêu lên bề mặt miếng cá hồi, để khoảng 10 phút cho thấm. Làm nóng dầu trong chảo chống dính, cho cá hồi vào chiên vàng đều hai mặt. Tiếp tục dùng dầu trong chảo, cho bơ, mật ong, nước tương, nước cốt chanh vào, khuấy đều rồi đun lửa nhỏ cho sệt lại. Cho cá hồi vào chảo trở lại, tiếp tục đun và rưới nước sốt lên cho thấm đều. Thực hiện khoảng 3 phút rồi tắt bếp. Cho cá hồi vào đĩa/chén cơm trắng, thêm nước sốt, rắc ngò rí và thưởng thức.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0074', N'Cơm chiên cá mặn', '0', N'https://image.cooky.vn/recipe/g5/40778/s640/recipe40778-cook-step5-636795446175679721.JPG', N'- Cách chế biến cá khô: Ngâm 100gr khô cá sặc vào nước ấm nóng ít nhất 2 tiếng, đến khi cá hơi mềm thì rửa sạch cá nhiều lần dưới vòi nước để cá sạch và bớt mặn. Sau đó, xé nhỏ thịt cá và bỏ phần xương. Đun nóng 2 muỗng canh dầu ăn. Cho 50gr hành tây tím, 10gr tỏi băm và 10gr hành tím băm vào phi thơm vàng. Sau đó, cho 10gr cá sặc đã xé nhỏ, thêm 1 muỗng canh đường vào. Đảo đều để cá thơm vàng. Cho 300gr cơm nguội vào chiên sơ, sau đó cho 2 quả trứng gà đã đánh tan vào. Khi cho trứng vào thì dùng muỗng băm nát, trộn đều sao cho trứng và cơm chiên cá mặn hòa quyện với nhau. Khi trứng hòa quyện và hạt cơm tơi ra, nêm gia vị vào cơm chiên cá mặn gồm 1 muỗng canh đường, 1/2 muỗng canh nước mắm và 10gr hành lá cắt nhỏ. Đảo đều thêm một lần nữa để cơm chiên cá mặn thấm gia vị rồi tắt bếp. Xúc cơm chiên cá mặn ra đĩa. Trang trí vài cọng ngò và thêm ít tiêu. Dùng cơm chiên cá mặn với tương ớt cay cay hay nước tương kèm vài lát ớt xắt để món ăn tròn vị hơn. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0075', N'Cá ngừ kho thơm', '0', N'https://image.cooky.vn/recipe/g4/39470/s640/recipe39470-cook-step4-636742642061085099.jpg', N'- Rửa sạch cá ngừ, để ráo nước. Ướp cá với 1 muỗng canh hạt nêm, 1 muỗng canh nước mắm, 1 muỗng cà phê tiêu sọ. Đun nóng 1 muỗng canh dầu ăn, cho cá vào chiên vàng 2 mặt. Bắc nồi lên bếp, cho 2 muỗng canh dầu, 2 muỗng canh đường, thắng đường cho có màu vàng cánh gián (Khi thắng đường nên thường xuyên lấy đũa khuấy cho đường tan). Tắt bếp khi đường chuyển qua màu vàng nâu, rồi cho 10gr tỏi lát, 10gr hành tím lát, 5 trái ớt vào xào cho thơm. Thêm 150gr thơm cắt lát và 100gr cà chua xắt hạt lựu vào xào cho mềm. Cho cá ngừ và 300ml nước dừa tươi vào nấu sôi. Nêm 2 muỗng canh hạt nêm, 2 muỗng canh nước mắm, 2 muỗng canh đường. Hạ lửa nhỏ liu riu rim cá cho thấm, rim cho tới khi nước kho keo lại, cá chuyển màu vàng nâu ngon mắt thì tắt bếp. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0076', N'Cá thu Nhật kho cà', '0', N'https://image.cooky.vn/recipe/g3/28364/s640/recipe-cover-r28364.JPG', N'- Cà chua, bỏ hột, cắt múi nhỏ.Thơm cắt nhỏ. Cá thu nhật làm sạch. Cắt mỗi con làm 3 khúc rồi dùng giấy sạch thấm khô cá. Cá sau khi để ráo, lấy từng khúc hành lá đã đập dập nhét vào bụng cá, để khi kho cá sẽ thơm hơn. Thêm vào cá 1/2 muỗng cà phê tỏi băm, ớt bột, ớt hiểm cắt lát, tiêu, nước mắm, đường, hạt nêm knorr, ướp cá khoảng 30 phút. Đun nóng 1/2 muỗng canh dầu ăn trong nồi rồi cho phần hành băm và tỏi băm còn lại vào đảo đều đến khi tỏi và hành vừa ngả sang màu vàng nhạt và có mùi thơm. Cho từng miếng cá vào dầu ăn để cá săn lại, sau khi cá săn lại mới trút phần nước ướp cá vào, đợi hỗn hợp sôi, cho 120ml nước dừa vào, đun sôi rồi cho cà chua và thơm vào. Nêm nếm lại gia vị cho vừa ăn rồi đậy nắp, để lửa nhỏ đến khi cá chín, thấm gia vị (khoảng 30-40 phút). Cho cá kho ra tô dùng nóng với cơm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0077', N'Cá chiên sốt chua ngọt', '0', N'https://image.cooky.vn/recipe/g5/47089/s640/recipe47089-cook-step3-636943116050054515.jpg', N'- Rửa sạch cá chẽm, phi lê cá thành những miếng chữ nhật dài. Dùng khăn giấy thấm khô thịt cá chẽm phi lê, sau đó cho ra khay, rải bột chiên giòn và xoa đều khắp mình cá cho bột áo đều. Bắc chảo lên bếp, chiên cá trong chảo ngập dầu đến khi chín vàng giòn thì vớt ra để ráo dầu. Làm sốt chua ngọt: Cho vào chảo 200gr đường nâu, 100ml nước cốt me, 30ml nước mắm và 30gr tương ớt, khuấy sốt đều đến khi sôi. Sau đó cho tiếp tục 10gr tỏi băm và 10gr ớt băm, đảo đều, nêm nếm vị xem đã vừa miệng chưa rồi tắt bếp. Bày cá chiên giòn ra đĩa cùng ít rau sống, rưới nước sốt mắm me vừa đun cho đều khắp mặt cá, rắc thêm ít ớt xung quanh cho đẹp mắt và bắt đầu thưởng thức. Món cá chiên sốt chua ngọt này có thể ăn cùng cơm nóng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0078', N'Cá chiên giòn chua ngọt', '0', N'https://image.cooky.vn/recipe/g5/48787/s640/cooky-recipe-cover-r48787.jpg', N'- Rửa sạch phi lê cá, để ráo. Sau đó, cắt lát vừa ăn, ướp muối và tiêu. Tiếp theo, đánh tan trứng vào một cái tô. Ướp cá với gia vị tiêu, xốt nêm knorr, hành tỏi băm nhuyễn. Sau đó, nhúng cá vào trứng xong thì vớt miếng cá đem lăn cá qua bột chiên xù, nhớ là lăn đều tay để bột dính đều khắp bề mặt miếng cá. Bắt bếp, cho một ít dầu vào trong chảo đợi dầu sôi, cho từng miếng cá vào trong dầu chiên vàng giòn 2 mặt cá. Sau khi chiên xong nên vớt miếng cá vào một cái dĩa có lót sẵn giấy thấm dầu để thấm bớt lượng dầu thừa trong cá. Tiếp theo là công đoạn làm nước sốt. Hòa tan đường, dấm, tương cà, muối, xốt đậm đặc Knorr, nước. Sau khi trộn hỗn hợp nước sốt xong thì bắc bếp, đợi dầu sôi, thêm hành tây, rau củ trộn vào chiên đều. Thêm nước sốt đậm đặc vào và đảo đều đến chín.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0079', N'Cá bầu nấu cá lóc', '0', N'https://image.cooky.vn/recipe/g1/5433/s640/recipe5433-prepare-step4-635981280992636651.jpg', N'- Hành lá cắt nhỏ, hành tím bóc vỏ, cắt mỏng. Bầu gọt vỏ, rửa sạch, cắt thành sợi to. Cá lóc làm sạch, để ráo. Sau đó, cho cá lóc vào nồi nước có hòa tan 1/2 muỗng cà phê muối và đầu trắng hành lá, nấu cho thịt cá vừa chín tới. Gắp cá ra, gỡ lấy thịt, bỏ xương. Phần thịt cá lóc ướp với hành tím, 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê tiêu, 1/2 muỗng cà phê bột ngọt khoảng 30 phút. Làm nóng nồi với dầu ăn. Đổ 500ml nước vào, nấu sôi. Khi nước sôi thì cho thịt cá lóc đã ướp, bầu vào, nấu sôi 1 phút. Nêm thêm gia vị nếu thấy nhạt.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0080', N'Cá lóc hấp bầu', '0', N'https://image.cooky.vn/recipe/g2/16747/s640/recipe16747-635951167273511510.jpg', N'- Cho tất cả nguyên liệu làm cá lóc hấp bầu ra đĩa. Làm sạch cá lóc, cạo sạch vảy, để nguyên con. Sau đó, dùng dao rọc 1 đường phần bụng theo chiều dài con cá. Lấy phần ruột ra, rửa sạch lại với nước. Rửa sạch bầu, để nguyên vỏ, cắt bỏ 2 phần đầu. Dựng trái bầu lên, dùng dao cắt 1 đường từ trên xuống, không cắt đứt rời. Cắt tiếp 1 đường sao cho khoảng cách từ đường thứ 1 và đường thứ 2 chừng 1-1.5cm tạo thành 1 ranh rỗng để có thể cho cá vào. Múc bỏ phần ruột ra, cắt thành răng cưa như hình để tạo hình cho cá lóc hấp bầu. Ngâm nước nấm mèo, miến cho mềm, cắt nhỏ, để riêng. Làm sạch và cắt nhỏ hành lá. Cho miến, nấm mèo, hành lá cắt nhỏ, 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê muối, 1/2 muỗng cà phê bột ngọt, 1/2 muỗng cà phê tiêu vào tô, trộn đều để nhân cá lóc hấp được thấm vị đậm đà. Nhồi hỗn hợp nấm mèo, miến vào bên trong con cá. Dùng kim chỉ may lại cho cố định. Đặt cá lóc vào bên trong trái bầu. Khi đó, đun sôi nồi chuẩn bị hấp cá. Cho bầu nhồi cá vào, hấp cách thủy khoảng 25-30 phút cho cá chín hẳn. Lấy món cá lóc hấp bầu ra đĩa, trang trí tùy thích.

');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0081', N'Cá hồi áp chảo', '0', N'https://image.cooky.vn/recipe/g4/32595/s640/cooky-recipe-cover-r32595.jpg', N'- Rửa sạch cá hồi, thái thành khứa vừa ăn. Thấm khô. ướp cá hồi với muối và tiêu. Chờ khoảng 15 phút cho cá hồi thấm vị.  Bắc chảo lên bếp, cho dầu ăn vào, đợi dầu sôi thì cho cá vào áp chảo. Khi thấy cá vàng 2 mặt thì tắt bếp. Xúc cá hồi áp chảo ra đĩa, rắc thêm ít tiêu, trang trí ngò, rau thơm lên miếng cá cho đẹp mắt. Lúc này, món cá hồi áp chảo đã sẵn sàng để thưởng thức.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0082', N'Cá kèo kho rau răm', '0', N'https://image.cooky.vn/recipe/g3/23321/s640/recipe23321-prepare-step5-636462797928456401.jpg', N'- Làm sạch cá kèo, cắt bỏ đầu và đuôi cá, móc bỏ ruột cá, rửa sạch nhớt và mùi tanh của cá kèo với muối và giấm nhiều lần. Để cá kèo ráo nước. Ướp cá kèo với 50gr rau răm thái nhỏ, 30gr tỏi băm, 30gr đầu hành trắng băm, 50gr đường, 50ml nước mắm, 20gr hạt nêm, 5gr muối, 3gr tiêu 30 phút cho cá kèo thấm gia vị. Làm nóng tộ đất, cho vào 2 muỗng canh dầu ăn và 30gr đường, khuấy đều cho đường tan và chuyển sang màu nâu vàng đẹp. Thêm 30gr tỏi băm, phi cho tỏi vàng thơm. Khi đường bắt đầu chuyển màu hơi vàng thì tắt lửa, tộ đất vẫn còn nóng sẽ khiến đường chuyển sang màu cánh gián rất nhanh. Nếu để lửa nóng sẽ rất khó canh, dễ làm đường bị cháy dẫn đến có vị khét. Sau khi phi tỏi xong thì xếp cá kèo đã ướp vào nồi đất, đổ nước ướp cá vào chung. Thêm 5 trái ớt đỏ lên mặt, đậy nắp để lửa vừa kho 5 phút cho cá chín. Sau đó mở nắp, rưới nước kho lên cá để những con cá cá kèo kho rau răm nằm ở trên mặt được thấm đều hương vị. Cá kèo kho rau răm liu riu 30 phút đến khi thịt cá săn lại, nước kho sền sệt là có thể dùng được rồi.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0083', N'Cá kèo kho cay', '0', N'https://image.cooky.vn/recipe/g3/28961/s640/recipe28961-cook-step4-636615692164051302.jpg', N'- Cá kèo cho vào rổ, trên cho muối, đeo bao tay vào và chà nhẹ muối với cá trên rổ cho đều, sau đó dùng kéo cắt miệng, mang, đuôi cá, không bỏ ruột cá (ruột cá có vị hơi đắng & rất béo), rửa lại với nước nhiều lần. Rồi cho vào thau nước 2 muỗng canh giấm ăn cho cá vào ngâm 5 phút, cá sẽ sạch bóng không còn nhớt (cá kèo là loại da trơn nên có nhiều nhớt). Rau răm rửa sạch để ráo, mỡ heo rửa sạch cắt nhỏ. Mỡ heo sau khi cắt nhỏ cho vào chảo đến khi mỡ ra nước và thịt mỡ vàng giòn. Ướp cá: lấy nồi sứ hoặc nồi đất để kho cá. Lót rau răm vào đáy nồi (chừa lại một ít rau răm) giúp tăng hương vị món ăn và tránh bị dính nồi, rồi xếp cá vào cho nước màu dừa, nước mắm, đường, hạt nêm, tiêu, ớt bột, ớt hiểm và 1 muỗng canh mỡ nước lúc nãy. Ướp cá 30 phút cho thấm. Ướp cá đủ thời gian thì cho lên bếp kho với lửa riu riu, cầm 2 quai nồi lắc lắc cá (không dùng đũa trở cá mà cá bị nát), thấy cá săn và cạn nước thì cho thêm nước sôi vào sâm sấp mặt cá. Kho một lúc thì nêm nếm lại gia vị một lần nữa cho vừa ăn, lấy muỗng múc nước cá rưới lên mình cá cho thấm đều (vẫn lửa riu riu). Kho cá đến khi cạn nước, tắt bếp, cho vào nồi cá tóp mỡ và rau răm cắt nhỏ.  Bạn hãy chuẩn bị 1 đĩa rau sống, ăn kèm với cơm trắng để cảm nhận hết độ ngon của món ăn này nhé.

');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0084', N'Cá nục kho cà chua ', '0', N'https://image.cooky.vn/recipe/g3/22161/s640/recipe22161-prepare-step7-636419484151109008.jpg', N'-Làm sạch 700gr cá nục, cắt làm đôi. Bỏ cuống 500gr cà chua, bỏ hạt, cắt hạt lựu. Tỏi và hành tím băm nhuyễn. Chuẩn bị một chiếc nồi đất, đầu tiên xếp đầu hành trắng vào nồi, rồi đến 1 lớp cá nục, rải đều lên trên cá nục 10gr ớt bột, 1/2 muỗng cà phê muối, 1 muỗng canh nước mắm và 5 trái ớt hiểm để cá nục kho cà không bị tanh.  Lớp thứ 2 cũng tương tự, xếp hết số cá nục và những gia vị cũng như số ớt hiểm còn lại lên trên. Rót 300ml nước dừa vào nồi, mở lửa kho cá đến khi nước dừa sôi lên thì hạ lửa kho liu riu 30 phút (không đậy nắp nồi để cá nục kho cà chua được ngon). Trong lúc chờ cá nục, mình sẽ làm nước sốt cà chua. Cho vào nồi 2 muỗng canh dầu ăn, bỏ hành tím và tỏi băm vào phi vàng thơm. Tiếp theo cho phần cà chua đã cắt hạt lựu vào, xào đều tay cho cà chua mềm nhừ. Lúc này thêm cà chua cô đặc (tomato paste) vào, nêm thêm 2 muỗng cà phê đường, 1 muỗng cà phê hạt nêm, khuấy đều cho gia vị hòa tan vào sốt cà chua. Nêm nếm lại cho cá nục kho cà chua vừa miệng.  Sau khi cá nục được kho 30 phút với nước dừa, sẽ thấy lượng nước dừa rút bớt còn khoảng 1/2 so với ban đầu. Bạn đổ sốt cà chua vừa nấu vào nồi, dùng đũa dàn đều nước sốt ra xung quanh để cá được tiếp xúc đều với sốt cà chua. Đậy nắp rồi kho lửa liu riu tiếp tục ít nhất 30 phút đến khi ăn thử thấy thịt cá thấm sốt cà, nước sốt cà sền sệt là được. Nếu bạn muốn kho cá nục rục xương và có thể ăn xương được thì kho trên bếp lâu hơn, thi thoảng châm thêm nước dừa hoặc sốt cà để tránh làm cá nục kho cà chua bị cháy.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0085', N'Cá bạc má kho cà chua', '0', N'https://image.cooky.vn/recipe/g4/33726/s640/cooky-recipe-cover-r33726.png', N'- Cá bạc má lựa con da óng ánh, mắt trong, mang đỏ, thịt cá chắc. Cá mua về làm sạch, để ráo. Đầu hành lá đập dập, ớt giã nhuyễn cho vào thố cá, thêm đường vào ướp khoảng 10 phút cho cứng cá. Sau đó cho nước mắm, muối, dầu ăn và tiêu vào, ướp 1 tiếng đồng hồ. Cà chua băm nhỏ. Đun nóng 1 muỗng canh dầu điều, cho cà chua vào đảo sơ, trút hành ớt hỗn hợp nước ướp vào xào khi chuyển mà hơi vàng cánh gián, xếp cá vào, đổ nước lạnh vào sao cho nước xâm xấp qua khỏi con cá 1 tí, kho lửa nhỏ tiếp tục trong 2 giờ, nếu cạn có thể châm thêm nước, nêm nếm nước mắm đường muối cho vừa ăn. Không cần trở cá, khi cá chín nước kho keo lại vừa ý thích là được. Khi cá bắt đầu kẹo lại, có thể cho nước dừa xiêm (hay nước mía vào). Nhớ gia giảm đường cho đừng ngọt quá nhé! Bày trí cá kho ra nồi đất cho đẹp mắt dùng với cơm nóng rất ngon. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0086', N'Cá hường chiên sả ớt', '0', N'https://image.cooky.vn/recipe/g3/20730/s640/recipe20730-prepare-step4-636367528944682349.jpg', N'- Cho các nguyên liệu gồm: 50gr sả băm, 20gr ớt băm, 1/2 muỗng canh muối, 1/2 muỗng canh đường, 1/3 muỗng canh tiêu, 1/2 muỗng canh bột nghệ vào chung với nhau. Thêm 1 muỗng canh dầu ăn vào rồi trộn đều cho tất cả hòa quyện. Cá hường làm sạch vảy, cắt bỏ vây và ruột rồi đem rửa sạch, để ráo nước. Khứa những đường xéo trên 2 bên thân cá. Lấy hỗn hợp sả ớt sát kỹ vào thân, những khe hở và ruột cá. Ướp 15 phút để cả thấm gia vị. Đun 150ml dầu ăn cho nóng già, hạ nhỏ lửa cho hết số cá vào chiên vàng 2 mặt. Gắp ra cho ra dĩa có lót giấy thấm dầu. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0087', N'Cá chim sốt gừng sả ', '0', N'https://image.cooky.vn/recipe/g2/13960/s640/recipe13960-635648664715262361.jpg', N'- Sả rửa sạch, tước bỏ bớt phần cứng và già, cắt nhỏ. Gừng rửa sạch, cạo vỏ, giã gừng, tỏi, ớt quả với 1 muỗng canh đường.  Cá móc bỏ ruột, rửa sạch, để ráo, dùng dao khứa vài đường trên thân cá, ướp vào cá 1/2 muỗng cà phê muối, để khoảng 15 phút. Phủ khắp thân cá một lớp bột năng, đun nóng dầu, cho cá vào rán hai mặt đến khi vàng đều. Cá sau khi rán vớt ra đĩa cho thấm bớt dầu ăn và đổ bớt dầu ra khỏi chảo. Cho sả vào rán đến khi vàng thì vớt sả ra đĩa để riêng, đổ bớt dầu ăn. Phi tỏi thơm, cho chén gừng tỏi ớt vào chảo, rưới vào 1 muỗng canh nước mắm, và 1 muỗng canh nước lạnh, đun sôi, cho tiếp cá vào đun cùng, để lửa lớn, lật đều hai mặt cá.  Đun khoảng 3 phút thì cho tiếp phần sả vào đun cùng, nêm nếm lại gia vị cho vừa ăn. Đun đến khi phần nước mắm hơi sánh đặc thì tắt bếp, thêm hành lá vào, múc ra đĩa dùng làm món mặn ăn với cơm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0088', N'Cá chim nướng muối ớt', '0', N'https://image.cooky.vn/recipe/g3/26607/s640/recipe-cover-r26607.jpg', N'- Cho ớt, muối và bột ngọt và chén, giã nát ớt. Cá chim làm sạch, bóp cùng muối ớt. Sau đó phết cùng sa tế bên ngoài thịt cá. Sả cắt khúc ngắn nhồi vào trong bụng cá, ướp khoảng 20-30 phút cho cá ngấm. Bọc cá trong giấy bạc, cho lên bếp than hồng nướng khoảng 5 phút. Sau đó dùng que chọc thủng lỗ cho nước cá tiết ra có thể chảy ra ngoài, nướng tiếp 5-10 phút cho cá chín tỏa hương thơm là được. Ăn kèm với các loại rau, dưa leo,..');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0089', N'Cá lăng nướng muối ơt', '0', N'https://image.cooky.vn/recipe/g3/26445/s640/recipe-cover-r26445.jpg', N'- Cá lăng rửa sạch, dùng dao khứa nhiều đường lên thân cá hoặc cắt cá thành những lát nhỏ mỏng hay dày tùy sở thích, rửa qua nước sôi và rượu để khử mùi tanh. Băm nhỏ hành tím, tỏi, rồi trộn chung với sả xay, tương ớt, dầu hào, nước mắm, mật ong, ngũ vị hương, tiêu, bột ngọt. Ướp cá với hỗn hợp gia vị vừa trộn trong 20-30 phút cho thịt cá ngấm đều gia vị. Làm nóng bếp than hồng, xếp cá lên vỉ nướng, thường xuyên trở cho cá chín đều và không bị khét nhé! Khi nướng có thể phết thêm dầu ăn và dầu điều tùy thích cho cá cho màu đẹp mắt. Món cá nướng có thể ăn cùng bún, rau sống hoặc cuốn bánh tráng nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0090', N'Lẩu cá lăng măng chua', '0', N'https://image.cooky.vn/recipe/g2/15434/s640/recipe15434-635747956182191877.jpg', N'- Gừng, sả bóc vỏ, băm nhỏ. Ớt, ngò gai, ngò om rửa sạch, để ráo nước. Cá lăng rửa sạch, cắt khúc dày 1.5 cm. Sau đó, bắc nồi nước lên bếp, cho gừng băm nhỏ vào nấu sôi. Khi nước sôi, cho cá lăng vào chần sơ qua. Măng chua cắt bỏ phần gốc già, tước nhỏ, vắt khô. Cà chua rửa sạch, cắt múi cau. Thơm gọt vỏ, bỏ mắt và cắt miếng. Phi thơm sả, tỏi băm với 2 muỗng canh dầu ăn. Cho cá lăng vào, đảo đều 1 phút. Cho cá lăng ra đĩa, để riêng. Tiếp tục dùng nồi đó, làm nóng 2 muỗng canh dầu ăn. Cho cà chua, thơm, 1 muỗng cà phê muối, 1 muỗng canh nước mắm, đảo đều. Đổ chai lẩu thái, 1 lít nước vào cùng, nấu sôi. Cuối cùng, cho cá lăng, măng chua, ngò om, ngò gai, ớt vào, nấu sôi thêm 5 phút là được. Tắt bếp, dùng với bún tươi nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0091', N'Canh cá basa nấu măng', '0', N'https://image.cooky.vn/recipe/g2/12959/s640/recipe12959-635756580443434781.jpg', N'- Cá ba sa làm sạch, rửa với nước, cắt khúc, cho ra đĩa. Măng chua rửa sạch với nước, để ráo cho bớt chua. Cà chua cắt múi cau. Ngò om, ngò gai rửa sạch, cắt nhỏ. Phi thơm tỏi băm với 2 muỗng canh dầu ăn trong chảo. Vớt tỏi băm ra, để riêng. Tiếp tục dùng chảo đó, làm nóng 2 muỗng canh dầu ăn. Cho cá ba sa vào, chiên sơ qua 2 mặt. Trong 1 nồi khác, xào chín cà chua với 2 muỗng canh dầu ăn. Đổ 500ml nước vào nồi cà chua, nấu sôi. Khi nước sôi, cho cá ba sa vào, nấu cùng. Cuối cùng, cho măng chua, tỏi băm đã phi thơm, 1 muỗng cà phê muối, 1/2 muỗng cà phê bột ngọt, 1 muỗng canh đường trắng vào, nấu 3 phút. Tắt bếp, múc canh ra tô, rắc ngò om, ngò gai lên trên và dùng với cơm nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0092', N'Canh chua cá bớp', '0', N'https://image.cooky.vn/recipe/g2/12550/s640/recipe12550-635835392929101836.jpg', N'- Cá bớp rửa sạch, để ráo nước. Me dầm với ít nước ấm lấy nước me, bỏ hạt. Măng chua rửa sạch, vắt ráo. Cà chua cắt múi cau, thơm cắt lát, đậu bắp cắt xéo, giá đỗ rửa sạch. Hành lá và ngò om cắt nhỏ. Cắt cá thành từng phần nhỏ, ướp cá với 1 muỗng canh nước mắm và 2 trái ớt đỏ cắt nhỏ. Phi thơm 1 muỗng canh dầu ăn với tỏi bằm, cho cà chua vào xào chín. Chờ cho cà chua mềm, ra nước màu đẹp thì châm vào nồi nước lạnh vừa đủ ăn. Nước sôi cho tất cả các nguyên liệu vào trừ giá đỗ và đậu bắp, vặn lửa nhỏ, để cá chín trong khoảng 5 phút. Sau đó cho tiếp đậu bắp và giá đỗ vào. Nêm nước cốt me đã lọc, 1/2 muỗng cà phê đường, 1 muỗng cà phê bột ngọt, tắt bếp. Rắc hành lá và ngò om cắt khúc lên trên mặt.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0093', N'Cá basa áp chảo sốt chanh dây', '0', N'https://image.cooky.vn/recipe/g2/19349/s640/recipe19349-prepare-step5-636259631255066538.JPG', N'- Cắt đôi chanh dây, nạo phần ruột rồi cho vào rây lọc lấy nước cốt. Đổ thêm 80-100ml nước ấm vào phần xác chanh dây rồi tiếp tục rây. Lọc lấy 150ml nước cốt, cho thêm vào 1 muỗng cà phê hạt để giúp sốt trông đẹp mắt hơn. Cách làm sốt chanh dây: Pha 1 muỗng cà phê bột bắp với 20ml nước. Đổ 150ml nước cốt chanh dây, 70gr đường trắng, 1/4 muỗng cà phê muối vào chảo, khuấy đều cho đường tan. Đun lửa vừa đến khi nước sốt sôi lên thì bạn cho bột bắp loãng vào, vừa đổ vừa vừa khuấy đều, thêm bơ lạt vào để khoảng 30 giây rồi nhắc xuống. Bột bắp sẽ tạo độ sánh cho nước sốt. Cá basa mua dạng phi lê sẵn, rửa sạch rồi thấm khô. Cắt cá ra thành những miếng vừa ăn rồi ướp với 1/2 muỗng cà phê muối, 1/2 muỗng cà phê tiêu cho đều 2 mặt. Lăn cá qua bột mì cho cá phủ một lớp bột mỏng. Cho dầu ăn vào chảo nóng, tráng đều dầu quanh mặt chảo, để lửa vừa rồi cho cá vào áp chảo. Nhớ để mặt có da xuống trước vì phần da cá basa hơi dày sẽ lâu chín hơn. Dùng sạn đè lên miếng cá để cá không bị cong khi chiên. Áp chảo đến khi phần da vàng giòn thì trở mặt, áp chảo nửa còn lại cho chín. Khi ăn rưới nước sốt lên cá và thưởng thức.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0094', N'Cá nục chiên mắm tỏi', '0', N'https://image.cooky.vn/recipe/g1/1558/s640/recipe1558-prepare-step7-635684280005974796.jpg', N'- Cá rửa sạch cắt khúc vừa ăn. Tỏi bóc vỏ, băm nhỏ. Cho dầu vào chảo, để lại khoảng 2 muỗng canh dầu. Cho cá vào chiên vàng đều hai mặt rồi vớt ra, để ráo dầu. Pha nước mắm, đường, ớt bột, hạt nêm với 2 muỗng canh nước lọc. Đánh tan. Cá chiên nguội bớt thì gỡ lấy phần thịt cá, bỏ xương. Làm nóng một nồi khác trên bếp với 2 muỗng canh dầu ăn còn lại, cho 1/3 tỏi băm vào phi thơm. Cho cá vào rồi cho nước mắm đã trộn vào nồi, dùng tay lắc nồi cho cá thấm đều nước mắm. Cho 2/3 tỏi còn lại vào, tiếp tục nấu lửa nhỏ, thỉnh thoảng lắc nồi đến khi nước mắm cạn thì tắt bếp. Cho cá chiên mắm tỏi ra đĩa, dùng nóng. Ăn kèm với xoài xanh bào sợi rất ngon.

');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0095', N'Chả cá rim mặn ngọt', '0', N'https://image.cooky.vn/recipe/g1/2593/s640/recipe2593-635741951531822816.jpg', N'- Cá mua về rửa sạch, để ráo, xay nhuyễn cá, trộn với 1/2 muỗng cà phê hành tím băm, 3 muỗng cà phê dầu ăn, 1 muỗng cà phê muối, 1/2 muỗng cà phê hạt nêm, 1/2 muỗng canh đường, dùng muỗng quết thật nhuyễn để cá được dai. Dùng màng thực phẩm bọc kín, cho vào tủ đông đá khoảng 30-45 phút. Sau đó lấy ra nặn thành những miếng chả cá nhỏ, đun nóng chảo, thả chả cá vào chiên vàng đều 2 mặt. Chả cá sau khi chiên, vớt ra đĩa cho thấm bớt dầu ăn. Đun nóng 1 muỗng cà phê dầu trong chảo nhỏ khác, phi 1/2 muỗng cà phê hành tím thơm, thêm 1 muỗng canh nước tương, 1 muỗng canh đường, 1 muỗng cà phê dầu hào, 1/2 muỗng cà phê muối và 2 muỗng canh nước lọc, đun sôi. Thì cho chả cá đã chiên vào chảo, tiếp tục đun sôi để hỗn hợp nước sốt bám đều quanh miếng chả cá, đậy kín nắp đun thêm từ 5 đến 10 phút, nêm nếm lại gia vị cho vừa ăn. Tắt bếp, rắc tiêu lên bề mặt, múc ra đĩa dùng làm món mặn ăn với cơm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0096', N'Cá diêu hồng hấp nước tương', '0', N'https://image.cooky.vn/recipe/g2/17496/s640/recipe17496-636033121513358977.jpg', N'- Cá diêu hồng để nguyên con, sơ chế và rửa sạch. Ớt chuông, thì là và hành lá thái sợi, ngâm vào nước lạnh để giữ màu sắc và độ dòn. Cắt nhỏ hành tím, ngò, gừng và hành tây. Làm nóng chảo, cho 30ml dầu ăn vào rồi lần lượt cho hành tím, hành tây, gừng, tiêu xanh, ngò rí vào chảo, xào nhanh với lửa lớn. Cho 200ml nước vào chảo, nêm 150g dầu hào, 150ml nước tương và 1 muỗng cà phê hạt nêm rồi tắt bếp. Rưới hỗn hợp nước sốt vừa hoàn thành lên cá diêu hồng rồi mang đi hấp trong 15 phút cho cá thấm gia vị rồi lấy ra. Cho hỗn hợp ớt chuông, thì là và hành lá lên trên cá rồi hấp tiếp trong 5 phút. Sau khi hấp xong, trang trí món ăn với hành ngò tươi cho đẹp mắt là có thể dùng ngay nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0097', N'Cá chẽm hấp sốt nước tương', '0', N'https://image.cooky.vn/recipe/g2/13875/s640/recipe13875-636124659531355809.jpg', N'- Hành lá rửa sạch, cắt khúc dài. Gừng gọt vỏ, 1/2 cắt sợi, 1/2 còn lại cắt lát mỏng. Ớt sừng cắt sợi. Cá chẽm làm sạch, để ráo, lau khô. Ướp cá chẽm với 1/2 muỗng cà phê muối, 1/2 muỗng cà phê tiêu. Bỏ vài miếng gừng đã cắt miếng vào bụng cá để khử mùi. Ướp cá trong 30 phút. Cá chẽm hấp nên chọn vừa con cho ngọt thịt nhé. Để vài miếng gừng lên đĩa hấp để da cá không bị dính khi hấp. Đặt cá lên và đem hấp trong 15 - 20 phút tùy theo cá to hay nhỏ. Làm sốt cá chẽm hấp: Hòa tan 3 muỗng canh nước lọc, 3 muỗng canh nước tương, 1 muỗng canh hắc xì dầu, 1 muỗng canh dầu hào, 2 muỗng canh đường trắng, 1 muỗng cà phê dầu mè, 1/2 muỗng cà phê tiêu trong chén, khuấy đều. Làm nóng chảo, đổ hỗn hợp đã pha vào, nấu sôi. Khi phần sốt sôi, cho hành lá, gừng cắt sợi, ớt sừng vào, khuấy đều, tắt bếp. Lấy cá hấp ra, chan đều phần nước sốt lên trên mình cá là xong.

');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0098', N'Phi lê cá hấp nước tương', '0', N'https://image.cooky.vn/recipe/g3/27050/s640/recipe-cover-r27050.jpg', N'- Phi lê cá mua về rửa sạch, để ráo rồi cắt làm tư. Tiếp đến cho cá ướp cùng với tiêu xay, rượu nấu ăn, 1 cọng hành lá và gừng thái nhỏ trong vòng 20 phút. Cho đĩa cá vào nồi cách thủy hấp chín. Chuẩn bị hành lá, ớt cắt nhuyễn rắc lên thân cá rồi rưới đều xì dầu. Tiếp đến, bắc chảo lên bếp để đun nóng dầu ăn rồi rưới đều lên mặt cá.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0099', N'Cá diêu hồng hấp xì dầu', '0', N'https://image.cooky.vn/recipe/g2/18322/s640/recipe18322-636117746383080256.jpg', N'- Cá làm sạch, cắt rời phần đầu, sau đó chia cá thành khoảng 10 phần, cắt từ sống lưng tới gần phần bụng thì chừa khoảng 1-2 cm (không được cắt rời lát cá ra, mình dùng kéo với dao mới cắt được đẹp) Ướp với hạt nêm, đường, xì dầu, tiêu khoảng 10 phút. Cho cá ướp ra dĩa, tạo hình cho đẹp, đổ nước ướp lên. Dùng xửng bắt nước sôi, hấp 10 phút là cá chín nha! Lấy cá ra và trang trí ít rau thơm, hành ngò, ớt cho đẹp. Dọn ăn cơm hoặc cuốn bánh tráng nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0100', N'Cá mè trắng hấp gừng hẹ', '0', N'https://image.cooky.vn/recipe/g3/28845/s640/recipe-cover-r28845.jpg', N'Cá bỏ ruột, làm sạch, lấy dao khứa lên hai mặt phần thân cá, rưới 1 muỗng cà phê rượu sake lên mỗi mặt cá để cá không tanh và tăng thên hương vị. Hẹ thái khúc dài khoảng 5cm, gừng thái sợi, ớt sừng thái sợi. Đặt cá lên dĩa cho vào nồi hấp, hấp khoảng 10 phút. Trong lúc chờ cá chín, làm nóng chảo, đun sôi dầu ăn. Khi cá đã chín, xếp cá lên đĩa, sau đó là gừng, hẹ, rắc thêm muối, rưới nước tương, dầu mè. Khi dầu ăn nóng, rưới lên cá là xong. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0101', N'Chả cá ngừ', '0', N'https://image.cooky.vn/recipe/g4/35470/s640/recipe35470-cook-step4-636682007154085323.JPG', N'Cá ngừ mua về rửa sạch, phi lê thịt cá, lọc bỏ xương và da. Cắt thịt thành từng miếng vuông vừa. Cho vào cối xay cùng 100gr mỡ heo cắt nhỏ, 2 muỗng canh nước mắm, 1 muỗng canh tiêu, 1 muỗng canh hạt nêm, 2 muỗng canh hành tím băm. Xay khoảng 1 phút sau đó để cá vào tủ đông 1 tiếng. Sau 1 tiếng để tủ đông, xay cá đến khi hỗn hợp mịn nhuyễn. Có thể dùng muỗng quết thêm để chả cá được dai hơn. Dùng màng bọc thực phẩm để tạo hình chả cá ngừ thành từng miếng tròn. Đun sôi nước, đặt miếng chả cá ngừ vào nồi hấp 5 phút. Sau đó đun nóng chảo dầu, chiên chả cá vàng đều hai mặt ở lửa nhỏ vừa nữa là hoàn tất.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0102', N'Cá chép om dưa chua', '0', N'https://image.cooky.vn/recipe/g3/24766/s640/recipe24766-prepare-step5-636479809768527879.jpg', N'Chuẩn bị nấu cá chép om dưa chua: Làm sạch vẩy cá chép, cắt vây, bỏ ruột và rửa sạch nhớt. Ướp cá chép với 1 muỗng canh hạt nêm, 1 muỗng canh tiêu xay và 1 muỗng canh nước mắm trong 10 phút để hương vị cá được đậm đà. Làm nóng 2 muỗng canh dầu ăn, cho 15gr tỏi băm vào phi vàng. Sau đó thêm 100gr thịt ba chỉ đã được cắt miếng nhỏ vào xào đều tay đến khi phần mỡ săn lại. Tiếp theo cho 2 quả cà chua cắt múi vào, xào đến khi cà chua chín và tiết ra màu đỏ đẹp. Thêm 150gr dưa cải chua, xào sơ trên chảo rồi nêm nếm với 20gr đường trắng, 20ml nước mắm, 15gr hạt nêm, 5gr muối, xào tiếp 5 phút cho cải chua và thịt ba chỉ thấm gia vị. Cách nấu cá chép om dưa chua: Lúc này thêm 500ml nước dùng gà, đun đến khi nước dùng sôi thì nêm nếm gia vị lại cho vừa ăn rồi cho cá chép vào om. Nấu chín một mặt rồi trở mặt tiếp theo để cá chép chín đều. Cuối cùng là 2 thành phần tạo nên đặc trưng cho món ăn cá chép om dưa chua đó là thì là và hành lá, cho vào rồi nhắc xuống dùng ngay khi cá còn nóng để hương vị món ăn được thơm ngon nhất nhé! Khi ăn đến đâu thì cho thì là và hành lá đến đó để vừa tái là ăn được.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0103', N'Cá hồi chiên sốt ngò thì là', '0', N'https://image.cooky.vn/recipe/g4/32679/s640/recipe32679-cook-step5-636651013006805083.jpg', N'Cá hồi rửa sạch, rút hết xương, lóc bỏ phần da rồi cắt thành những khối vuông nhỏ bằng viên xúc xắc. Ướp cá hồi với 1/2 muỗng cà phê muối và 1/2 muỗng cà phê tiêu xay 10 phút cho thấm. Chuẩn bị 3 chén đựng trứng gà đánh tan, bột mì và bột chiên xù. Lần lượt nhúng từng viên cá hồi vào bột mì, trứng gà và bột chiên xù để từng viên cá áo đều một lớp bột xù giòn tan. Đem cá đi chiên giòn ngập dầu rồi vớt ra dĩa có lót giấy thấm dầu.
Làm sốt chấm cá: cho vào cối xay 20gr thì là, 10gr ngò rí, 10gr cần tàu, 10gr tỏi tép cùng với 2 muỗng canh nước mắm Maggi, 2 muỗng canh đường trắng và 1 muỗng canh nước lọc. Xay nhuyễn các nguyên liệu rồi lấy hỗn hợp trộn với 100gr sốt mayonnaise, khuấy đều ta có nước sốt chấm béo ngậy cho món cá.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0104', N'Cá bống kho thịt ba chỉ', '0', N'https://image.cooky.vn/recipe/g3/26095/s640/recipe26095-prepare-step4-636537819013562972.jpg', N'Cá bống làm sạch, cho vào tộ đất. Ướp cá với 1 muỗng canh đầu hành lá băm, 1 muỗng canh hành tím băm, 1 muỗng canh đường, 1/2 muỗng canh hạt nêm, 1/3 muỗng canh muối, 1/3 muỗng canh tiêu, 2 muỗng canh nước mắm, 1/2 muỗng canh nước màu và 4-5 trái ớt đỏ. Trộn đều tất cả rồi ướp 15 phút cho cá thấm gia vị. Bắc nồi đất lên bếp, đảo sơ và nhẹ tay cho thịt cá săn lại thì thêm 70gr thịt ba chỉ và 250ml nước dừa. Kho đến khi nước sôi lên thì hớt bỏ bọt dơ. Hạ lửa nhỏ kho cá liu riu khoảng 30 phút. Lúc này nước kho sẽ keo lại, thịt cá bống và thịt ba chỉ săn, thấm gia vị. Trước khi nhắc xuống ăn rắc lên cá 1 ít hành lá và tiêu cho dậy mùi.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0105', N'Cá trê kho gừng', '0', N'https://image.cooky.vn/recipe/g3/25442/s640/recipe25442-prepare-step5-636512910830493067.jpg', N'Cá trê làm sạch, cắt khoanh vừa ăn (khoảng 2-3cm). Gừng cạo sạch vỏ, cắt lát mỏng. Ướp 500gr cá trê với với 50gr gừng cắt lát, 20gr hành tím băm, 3 muỗng canh đường, 2 muỗng canh hạt nêm, 4 muỗng canh nước mắm, 1 muỗng canh nước màu, 1/3 muỗng canh muối, 1/3 muỗng canh tiêu ít nhất 15 phút cho cá trê thấm gia vị. Cho 2 muỗng canh dầu ăn vào thố đất, chờ dầu nóng thì gắp từng miếng cá trê vào thố, đổ hết nước ướp cá vào, xào cho thịt cá săn lại. Sau đó thêm 1 chén nước sôi vào nồi, kho lửa nhỏ 30 phút, nhớ hớt bọt thường xuyên. Pha loãng 1 muỗng canh bột gaọ cùng với 2 muỗng canh nước lọc. Đổ hỗn hợp vừa pha vào nước cá kho, khuấy đều để tạo độ sệt cho nước cá kho, tạo độ bóng cho thịt cá. Sau đó thêm đầu hành trắng, ớt đỏ vào kho thêm 5 phút cho nồi cá kho thêm hấp dẫn. Cuối cùng trước khi nhắc xuống, cho thêm thật nhiều gừng thái sợi nếu bạn thích ăn nhiều gừng và muốn giải cảm nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0106', N'Bún cá ngừ', '0', N'https://image.cooky.vn/recipe/g4/35491/s640/recipe35491-cook-step4-636724350658144396.jpg', N'Rửa sạch cá ngừ, cắt khúc vừa ăn, để riêng phần đầu cá để nấu nước dùng. Ướp cá ngừ với một 1 muỗng cà phê muối, 1 muỗng cà phê bột ngọt và 1 muỗng cà phê tiêu. Nấu 1.5 lít nước dùng xương heo với hành tím và một chút muối trong 1 tiếng rồi cho đầu cá ngừ vào ninh thêm 30 phút nữa. Lọc xương heo và đầu cá để lấy nước dùng đem nấu bún cá ngừ nhé. 
Cách nấu bún cá ngừ: Rửa sạch cà chua, thái múi cau. Rửa sạch thơm, cắt miếng nhỏ vừa ăn. Cắt nhuyễn hành lá xanh, cắt khúc đầu hành trắng dài khoảng 5cm. Bắc chảo nóng với một chút dầu ăn, cho hành tím băm, sả đập dập và đầu hành vào phi thơm. Cho 200gr thơm và 200gr cà chua vào xào sơ qua khoảng 2 phút rồi cho vào nồi 1,5l nước dùng đã hầm. Khi nước dùng bún cá ngừ sôi thì nêm 2 muỗng canh nước mắm, 2 muỗng canh đường, nửa muỗng canh hạt nêm, nửa muỗng canh ớt khô. Sau đó cho cá ngừ vào luộc chín. Nước dùng bún cá ngừ sôi trở lại vớt phần cá đã nấu ra dĩa. Nhặt sạch rau sống, cắt thành sợi dài rồi trộn chung bắp chuối và giá để ăn kèm bún cá ngừ.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0107', N'Canh chua cá lóc nấu khế', '0', N'https://image.cooky.vn/recipe/g4/31966/s640/recipe31966-cook-step4-636651171127902808.jpg', N'Cá lóc làm sạch, cắt thành khúc ngắn vừa ăn. Ướp cá lóc với 1 muỗng canh nước mắm Maggi, 15gr hạt nêm Maggi, 15gr đường trắng, 3gr tiêu 15 phút cho thấm. Bắc chảo nóng cùng 1 ít dầu ăn, gắp từng khúc cá lóc vào chiên vàng 2 mặt. Bắc nồi lên bếp, cho vào một ít dầu ăn rồi thêm cà chua cắt múi cau vào xào chín mềm. Tiếp theo cho cá lóc đã chiên, nước ép khế và khế cắt lát vào đun sôi. Lúc này chế vào nồi 1.2 lít nước lọc rồi nấu sôi. Nêm nước canh với 2 muỗng canh nước mắm Maggi, 30gr hạt nêm Maggi, 30gr đường trắng cho vừa miệng. Cuối cùng cho cà chua, bắp chuối vào nấu sôi lần nữa thì tắt bếp.  Múc canh ra tô, rắc thêm ngò gai và hành lá lên trên cho món canh thêm hấp dẫn. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0108', N'Bao tử cá basa né sa tế', '0', N'https://image.cooky.vn/recipe/g5/47035/s640/recipe47035-cook-step4-636906890488115050.jpg', N'600gr bao tử cá mua về rửa sơ qua sau đó bóp với 1 muỗng canh muối và 50ml giấm gạo, ngâm 15 phút để khử mùi. Sau khi ngâm đem bao tử xả qua nước lạnh cho sạch, để ráo nước. Đun một nồi nước sôi, cho bao tử vào trụng sơ 5 giây cho săn lại rồi vớt ra tô nước đá lạnh ngâm cho bao tử trắng giòn. Sau khi ngâm 10 phút thì vớt ra để bao tử ráo nước. Ướp bao tử cá với 20gr tỏi băm, 20gr hành tím băm, 20gr sả băm, 150gr ớt sa tế, 50ml nước mắm, 50gr đường, 30gr tương ớt, 30gr tương cà, 3gr tiêu, để 15 phút cho bao tử thấm gia vị.
Bên canh bao tử cá, để có một món né hoàn chỉnh ta cần chuẩn bị thêm các loại rau ăn chung. Tùy vào sở thích có thể kết hợp với những loại rau nấm phù hợp với khẩu vị của gia đình, ở công thức này gợi ý 2 loại là hoa thiên lý và nấm bào ngư. Bên cạnh đó, chuẩn bị thêm 100gr hành tây cắt múi, 30gr đầu hành cắt khúc, 30gr tỏi bóc nguyên tép, 30gr ớt sừng thái lát. Cho tất cả ra dĩa và xếp ra bàn thôi nào. Khi ăn cho bơ thực vật lên chảo, tiếp theo thêm hành tây, đầu hành, tỏi tép và ớt sừng vào. Khi các nguyên liệu tỏa hương thơm thì cho thêm bao tử cá vào xào cho chín tới. Tiếp theo cho thêm rau và nấm, rưới nước sốt sa tế ướp bao tử lên trên rau rồi xào cho tất cả chín đều rồi thưởng thức thôi.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0109', N'Cá ngừ kho nước mía', '0', N'https://image.cooky.vn/recipe/g5/46432/s640/recipe46432-cook-step5-636885014992471728.JPG', N'Rửa sạch cá ngừ và cắt cá thành từng lát vừa ăn. Cho vào 500gr cá ngừ 1 muỗng canh muối hột và 50ml rượu trắng. Dùng tay chà xát cá với muối và rượu. Sau đó rửa sạch lại cá và để ráo nước. Nêm gia vị vào cá gồm 1 muỗng canh hành tím, 1 muỗng canh tỏi, 1 muỗng canh hạt nêm, 1/2 muỗng cà phê tiêu và 3 muỗng canh nước mắm. Trộn đều và để cá thấm gia vị trong khoảng 30 phút. Đun nóng 2 muỗng canh dầu ăn, cho 1 muỗng canh đường vào thắng màu caramel, sau đó cho 2 muỗng canh tỏi và 2 muỗng canh hành tím vào phi thơm. Tiếp theo cho cá vào áp chảo vàng 2 mặt để thịt cá săn lại. Sau khi cá được chiên vàng săn lại, đổ 400ml nước mía vào, thêm 2 trái ớt cắt nhỏ và đậy nắp. Lúc đầu kho cá ở lửa lớn để nước kho sôi bùng lên, giúp thịt cá săn lại. Sau đó kho lửa nhỏ liu riu để cá chín từ từ và thấm gia vị, đến khi nước sốt kho sánh lại thì tắt bếp.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0110', N'Cá bống kho tiêu', '0', N'https://image.cooky.vn/recipe/g1/533/s640/recipe533-prepare-step1-635683353910192195.jpg', N'Rửa sơ qua cá bống rồi cho vào xoong. Thêm vào 1 nắm muối hạt, đậy nắp xoong rồi lắc nhẹ để làm sạch nhớt. Dùng dao cạo sạch vẩy cá rồi cắt đầu và làm ruột sạch sẽ. Nếu là cá bống trứng thì phải làm ruột cẩn thận để trứng không bị nát. Ướp cá với hành tím băm, nước mắm, nước màu, hạt nêm, đường, tiêu, để khoảng 20 phút cho thấm gia vị. Rửa sạch hành lá, cắt nhỏ. Rửa sạch sừng, cắt nhuyễn. Để món cá bống kho tiêu được thấm gia vị, chắc thịt, trước hết nên dùng tộ hoặc xoong dày để nấu. Đun nóng dầu ăn, cho cá vào rim cho săn. Tiếp theo, chế thêm 1 chén nước, kho với lửa nhỏ cho nước sệt lại, rắc ớt lát và hành lá cắt khúc vào, tắt bếp cá bống kho.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0111', N'Cá hồi sốt cá chua', '0', N'https://image.cooky.vn/recipe/g1/1741/s640/recipe1741-635713410674980505.jpg', N'Cá hồi rửa sạch, lau khô nước, ướp với 1/4 muỗng cà phê tiêu. Tỏi bóc vỏ, băm nhỏ. Hành tây bóc vỏ, cắt lát. Hành lá rửa sạch, cắt nhỏ. Cà chua rửa sạch, bỏ hạt, cắt hạt lựu. Đun thật nóng 50 ml dầu ăn, cho cá vào chiên vàng sơ 2 mặt rồi cho ra đĩa. Vì da cá khá dày các bạn nên cắt đôi khứa cá để chiên phần da trước nhé, cá hồi sốt cà chua sẽ ngon hơn rất nhiều đó. Đổ bớt dầu trong chảo ra chén, cho tỏi băm và hành tây vào phi thơm. Sau đó, cho cà chua, 1/2 muỗng cà phê muối, 1 muỗng cà phê nước mắm, 1/2 muỗng canh đường trắng, 2 muỗng canh nước lọc vào, đảo đều tay là gần hoàn thành món cá hồi sốt cà chua này rồi đó. Khi cà chua chín mềm thì cho cá vào, đun lửa nhỏ cho đến khi cá chín thì nêm 2/3 muỗng cà phê bột ngọt, trở đều cá cho thấm gia vị rồi tắt bếp. Cho cá và cà ra đĩa, thêm hành lá và trang trí ớt trái là món cá hồi sốt cà chua đã hoàn thành.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0112', N'Cháo cá hồi bí đỏ', '0', N'https://image.cooky.vn/recipe/g2/17796/s640/recipe17796-prepare-step7-636066107457207975.jpg', N'Rửa sạch cá hồi phi lê với nước có pha 1 muỗng canh giấm để giảm mùi tanh, dùng khăn thấm khô nước, cắt cá làm đôi.  Gọt vỏ bí đỏ, cắt khúc nhỏ. Rửa sạch hành lá, cắt nhỏ. Cạo sạch vỏ gừng, băm nhỏ. Đun sôi khoảng 300ml nước với 1/3 muỗng cà phê muối. Cho phi lê cá hồi vào, luộc nhỏ lửa cho cá chín. Gắp cá ra, giữ lại phần nước luộc cá. Dùng muỗng vớt bỏ bớt bọt nổi trên mặt nước luộc cá hồi. Vo sạch gạo tẻ, cho gạo vào nồi nước luộc cá. Thêm nước lạnh vào sao cho phù hợp để cháo không quá đặc nấu đến khi cháo mềm, hạt gạo nhừ. Cho bí đỏ vào nồi hoặc xửng hấp, hấp chín trong vòng 13 phút. Vớt bí ra, dùng muỗng nghiền nhuyễn, tán qua rây cho thật mịn. Cho phần bí đỏ nghiền nhuyễn lại vào nồi cháo cá hồi, khuấy đều, nấu thêm 1 phút. 
Phần phi lê cá hồi dùng nĩa tơi ra thành những miếng nhỏ. Làm nóng 2 muỗng ăn dầu ăn Kiddy. Phi thơm đầu trắng hành lá, cho phi lê cá hồi, gừng vào, đảo đều 1 phút. Nêm vào nồi cháo cá hồi bí đỏ: 1 muỗng cà phê nước mắm, 1/3 muỗng cà phê đường trắng cho vừa ăn. Múc cháo cá hồi bí đỏ ra chén. Cho phần phi lê cá hồi đã xào lên trên. Rắc thêm hành lá để món ăn thêm hấp dẫn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0113', N'Cá thu rim gừng ớt', '0', N'https://image.cooky.vn/recipe/g1/5821/s640/recipe5821-prepare-step4-635757649748248916.jpg', N'Cá thu rửa sạch cắt khúc dày chừng 3-4 cm (cắt khúc như vậy cá sẽ ngấm gia vị hơn) ướp 1 muỗng cà phê hạt nêm. 1/2 củ gừng cắt lát, 1/2 còn lại thì đập dập, ớt cắt nhỏ. Cho dầu ăn vào chảo, chờ dầu ăn nóng thì cho cá vào chiên vàng giòn hai mặt. Cho 3 chén nước vào chảo, cho thêm gừng, ớt, 2 muỗng cà phê đường, 3 muỗng cà phê nước mắm, 1 muỗng cà phê hạt nêm, 1 muỗng cà phê tiêu vào rồi khuấy đều và đun cho hỗn hợp này sôi. Khi cá chín thì gắp từng khoanh cá vào hỗn hợp đun nhỏ lửa, cho đến khi nước gần cạn thì tắt bếp.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0114', N'Cá hồi nướng với sốt bơ chanh', '0', N'https://image.cooky.vn/recipe/g1/5999/s640/recipe5999-636395324889618533.jpg', N'Cắt 4 tờ giấy nhôm dài 35cm. Lót giấy bạc vào khây nướng. Thơm gọt vỏ, bỏ mắt, cắt lát dày khoảng 0.5cm, xếp ra mặt phẳng giấy bạc. Rắc lên 1/8 muỗng cà phê tiêu. Sau đó đặt miếng cá hồi phi lê lên trên thơm, rắc tiếp 1/8 muỗng cà phê tiêu. Trong một chảo nhỏ, làm tan 4 muỗng canh bơ trên lửa vừa. Thêm 80ml mật ong, 1 muỗng canh tỏi đập dập và 2 muỗng canh nước cốt chanh. Khuấy cho đến khi hỗn hợp quyện đều đồng nhất. Thêm một thìa muỗng canh ngò tây, trộn đều. Dội nước sốt vừa đun lên cá hồi rồi cẩn thận gói kín lại (Chia đều sốt cho các gói cá nhé! Làm nóng trước lò nướng ở 200 độ C. Đem nướng cá trong khoảng 10-15 phút là có thể dùng. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0115', N'Salad cá ngừ trộn sốt Kewpie', '0', N'https://image.cooky.vn/recipe/g2/18980/s640/recipe18980-636228397823123997.jpg', N'Chuẩn bị sơ chế các nguyên liệu cho món salad: Xà lách rửa sạch, cắt khúc vừa ăn. Cà chua bi rửa sạch, cắt đôi. Dưa leo gọt sơ vỏ, bỏ ruột, cắt khúc ngắn. Hành tây cắt khoanh tròn vào tô nước có sẵn vài viên đá, mục đích là làm giảm độ hăng và tăng độ giòn của hành tây. Cá ngừ hộp ngâm giấm lấy ra 1/3 hộp cho vào tô hay chén, dùng nĩa dầm nát cá ra. Sau khi đã hoàn thành công đoạn sơ chế, lấy một cái đĩa cho xà lách lên trên, tiếp đến là dưa leo. Tiếp đến nữa là cà chua bi cắt đôi. Sau một lớp nữa là cá ngừ dầm giấm đã được dầm nát. Rắc lên một ít hành tây cắt khoanh tròn, cuối cùng là chỉ còn cho nước sốt mè rang Kewpie lên nữa. Trộn đều khi thưởng thức nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0116', N'Lẩu cá khoai', '0', N'https://image.cooky.vn/recipe/g1/8500/s640/recipe8500-prepare-step4-635805018412621558.jpg', N'Nhặt cần nước, cần tây, hành lá, rửa sạch, cắt khúc rồi để ráo. Rửa ớt sạch rồi cho ra rổ. Làm sạch cá khoai, móc bỏ ruột, rửa lại với nước, để ráo rồi cho ra đĩa. Chặt khúc sườn non, rửa sạch, cho ra đĩa. Rửa sạch cà chua, bỏ cuống rồi cắt múi cau. Phi thơm hành tím băm với 2 muỗng canh dầu ăn, cho cà chua vào, xào khoảng 3 phút. Cho sườn non vào nồi cùng 500ml nước, nấu nhừ. Vớt sườn non ra, giữ lại phần nước. 
Cách nấu nước dùng lẩu cá khoai: Cho nước hầm sườn non vào cà chua, thêm cần tây, hành lá, ớt, 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê bột ngọt, 1 muỗng cà phê muối, 1 muỗng canh nước mắm vào. Khuấy đều và nấu khoảng 1-2 phút. Tắt bếp, bày nước dùng lẩu, cá khoai và cần nước cùng 1 chiếc bếp từ ra bàn. Khi ăn chỉ việc cho cần nước, cá khoai vào, nấu sôi lên là được. Chuẩn bị thêm 1 chén nước mắm ớt xắt để chấm cá nếu thích. Lẩu cá khoai có thể dùng kèm bún, cơm đều ngon cả');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0117', N'Cá nướng phô mai', '0', N'https://image.cooky.vn/recipe/g5/41112/s640/cooky-recipe-cover-r41112.jpg', N'Phi lê cá rửa sạch, thấm khô. Chuẩn bị 1 cái khay nướng, dùng một ít bơ hoặc dầu xoa đều rồi xếp cá lên trên. Rắc muối và tiêu lên cá. Trong một cái tô nhỏ, trộn đều bơ lạt, sốt mayonnasie, phô mai, mù tạt, nước cốt chanh, tương ớt. Rưới đều hỗn hợp lê cá và nướng cho đến khi lớp vỏ trên chuyển sang vàng, thời gian trong khoảng 12 phút (Cho khay nướng ở đầu lò). Sau đó, bạn trở mặt cá và chuyển khay nướng xuống giữa lò, để yên vài phút nữa mới lấy cá ra. Rắc một ít hành lá băm hoặc hẹ tây băm lên mặt cá nữa là chúng ta có thể thưởng thức được rồi.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0118', N'Cá hồi nướng nghệ', '0', N'https://image.cooky.vn/recipe/g1/2340/s640/recipe2340-prepare-step4-635736038489793106.jpg', N'Đầu tiên, cho 1/2 muỗng cà phê muối, 1/2 muỗng cà phê tiêu, 1 muỗng canh nước mắm, 2 muỗng cà phê bột nghệ, 1 muỗng cà phê hạt nêm vào chén, trộn đều. Cá hồi rửa sạch, cắt khúc, ướp với hỗn hợp đã trộn ở bước 1 khoảng 10 phút. Xếp cá hồi lên khay nướng có lót sẵn 1 lớp giấy nến. Nướng cá khoảng 20-25 phút ở nhiệt độ 180 độ C. Cá chín, cho ra đĩa, trang trí thêm tương ớt nếu thích và thưởng thức cùng với cơm trắng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0119', N'Cá hồi nướng kem phô mai', '0', N'https://image.cooky.vn/recipe/g5/46304/s640/cooky-recipe-cover-r46304.jpg', N'Bật trước lò nướng ở 400°F/200°C, lót giấy nến lên khay nướng. Cắt chanh thành lát mỏng và để riêng. Chia phi lê cá ra thành miếng. Rửa sạch phi lê cá hồi rồi thấm khô. Lót phi lê cá hồi lên giấy nến, mặt da hướng xuống dưới. Rắc muối và tiêu đều khắp cá. Cắt mỏng bơ ra rồi xếp lên phi lê cá. Mỗi miếng phi lê là khoảng 2 miếng bơ mỏng. Múc kem phô mai lên miếng bơ đã xếp, phân phối đều từng miếng phi lê cá. Lót chanh lên. Cho khay cá vào lò và nướng trong 15 phút là hoàn thành.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0120', N'Cá rô phi nướng sả ớt', '0', N'https://image.cooky.vn/recipe/g1/9998/s640/recipe9998-635996841579319135.jpg', N'Đánh bỏ vảy, bỏ ruột và mang, rửa sạch lại cá. Lấy muối xát lên mình cá cho cá không bị nhớt. Sau đó, rửa sạch lại cá và để ráo nước. Dùng dao khía vài đường trên hai bên mình cá. Sả, ớt rửa sạch, cắt nhỏ. Gừng cạo vỏ, cắt lát. Cho sả, ớt, gừng vào máy xay sinh tố, xay nhỏ rồi cho ra chén. Thêm 1 muỗng canh nước mắm, 1 muỗng cà phê bột canh, 1/2 muỗng cà phê tiêu vào, trộn đều. Lấy hỗn hợp sả ớt vừa trộn xát lên mình cá. Ướp cá ít nhất 10 phút cho cá ngấm gia vị. Cho cá vào giấy bạc. Thêm hỗn hợp sả ớt vào. Gấp mép giấy bạc bọc kín cá lại. Cho cá vào lò nướng, nướng ở 220 độ C trong khoảng 15 phút. Gỡ bỏ giấy bạc phía trên ra, nướng cá thêm khoảng 10 phút nữa cho cá vàng đều mặt là được. Lấy cá ra đĩa. Khi ăn có thể chấm cùng với nước mắm tỏi ớt.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0121', N'Cá hồi nướng sốt BBQ', '1', N'https://image.cooky.vn/recipe/g4/31735/s640/recipe31735-cook-step3-636633569506071194.jpg', N'Cá hồi cắt miếng lớn đều nhau, dùng khăn giấy thấm khô. Tỏi đập giập, bóc vỏ, băm nhỏ. Cho vỏ chanh, tỏi băm, tiêu, nước tương, đường, nước màu và dầu ăn khuấy cho đến khi tan hết đường. Ướp hỗn hợp gia vị trên vào cá hồi, lật qua lại, sau đó đậy nắp và để tủ lạnh trong 2 giờ hoặc qua đêm. Cho cá hồi vào lò nướng 1-2 phút, nhiệt độ lò khoảng 100 độ C. Lấy cá ra, quết nước sốt lên rồi đút lò 2-4 phút. thực hiện tương tự khoảng 3 lần. Cá chuyển sang màu vàng nâu, lấy cá ra, rắc hành lá cắt nhỏ và lát chanh lên trang trí. Vậy là thưởng thức được rồi!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0122', N'Cá diêu hồng hấp miến cuốn bánh tráng', '0', N'https://image.cooky.vn/recipe/g3/28394/s640/cooky-recipe-636553695328631996.png', N'Ngâm miến và mộc nhĩ (nấm mèo) khô cho mềm. Hành tím cắt lát để một bên. Khi miến mềm thì cắt đoạn vừa ăn, không nên cắt quá nhỏ. Nấm mèo thái sợi, cũng không bằm nhỏ, để khi ăn cùng bánh tráng bạn sẽ cảm nhận được độ giòn của nấm mèo. 
Rửa sạch cá và làm cá thật kỹ để tránh mùi tanh, trước đó bạn cũng có thể ướp sơ qua chút muối. Cho cá lên dĩa đựng để lát đem đi hấp, cho tiêu, nước mắm, hành tím cắt lát rồi lần lượt xếp các nguyên liệu như miến, nấm mèo xung quanh cá. Thêm ớt cắt lát lên trên cho thơm. Sau đó đem lên xửng hấp. Hấp trong vòng 10-20 phút là cá chín ngon rồi.  Chuẩn bị bánh tráng rau sống ăn kèm rồi chấm mắm thôi');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0123', N'Cá chẽm hấp kiểu Thái', '0', N'https://image.cooky.vn/recipe/g5/45251/s640/cooky-recipe-cover-r45251.jpg', N'Cá chẽm làm sạch, để tiết kiệm thời gian, bạn nên kêu người bán làm sẵn giúp mình, mua cá về rửa sạch là xong. Sau khi làm sạch cá, bạn khía vài đường lên thân để cá nhanh chín lúc hấp. Chuẩn bị nồi hấp rồi đem cá hấp chín kể từ lúc nước sôi (khoảng 11 phút). Trong lúc đợi cá chín, ta làm phần nước mắm chanh tỏi ớt: Cho đường, ớt, chanh trộn đều với nhau cho đến khi đường tan bớt, sau đó cho nước mắm cùng ngò rí băm vào, khuấy cho đường tan hoàn toàn. Khi cá đã chín, ta rưới phần nước mắm chanh tỏi ớt đều lên cá, đậy nắp lại và hấp thêm khoảng 1 phút nữa. Bạn có thể trang trí thêm chanh, hành hay ngò tùy thích.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0124', N'Cá hường hấp Quảng Đông', '0', N'https://image.cooky.vn/recipe/g2/16557/s640/recipe16557-635997659557551838.jpg', N'Làm sạch cá: đánh sạch vảy cá, sau đó xẻ bụng cá và lấy hết mang và nội tạng ra, bạn sẽ có khoang bụng cá trống rỗng. Dùng 1 lát gừng, và muối xoa đều lên mình cá. Cắt nhiều đường ngang thân cá ở cả hai bên cho dễ thấm gia vị. Trong tường hợp của mình, tôi cắt đôi con cá để cho vừa với đĩa. Thoa thân cá bằng một ít muối. Đặt cá vào đĩa. Nhồi vào bụng cá các loại gia vị như đầu hành băm, gừng băm, xúc xích và nấm đã thái nhỏ. Rải phần còn lại lên bên ngoài đĩa cá. Sắp xếp nồi hấp hoặc chảo có giá ở giữa để giữ đĩa cá trong khi hấp. 
Trong lúc đó, chuẩn bị cho phần nước sốt. Trong một cái tô nhỏ, trộn 6 muỗng canh nước tương, 1/2 chén nước, 3 muỗng canh giấm đen, 2.5 muỗng canh đường, 1/2 muỗng canh dầu mè và 1/4 muỗng cà phê tiêu cho đến khi bạn có được loại nước sốt này. 
Lấy con cá đã hấp chín trong nồi hấp ra. Bỏ đi phần nước cá. Đun nóng 2.5 muỗng canh dầu ăn trong một chảo nhỏ và cho hết dầu nóng vào đĩa cá. Dùng luôn chảo này đun nóng hỗn hợp nước sốt cho tới khi sôi. Sau đó từ từ đổ hỗn hợp nước sốt nóng này lên trên đỉa cá. Xong rồi thưởng thức thôi.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0125', N'Cá hấp đậu hũ sốt ớt cay', '0', N'https://image.cooky.vn/recipe/g5/42161/s640/recipe42161-cook-step3-636766690179259793.jpg', N'Cá rô phi làm sạch, rửa nhiều lần với muối, bỏ ruột, dùng mũi dao nhẹ nhàng lạng dọc từ đầu đến cuối đuôi, mũi dao áp sát xương sống. Dùng tay ấn mạnh phần sống lưng cá. Đậu hũ non cắt miếng vừa ăn, xếp vào dĩa. Cho chút muối vào, nhẹ nhàng đặt cá lên trên cho thật đẹp. Đun nóng nước trong nồi hấp cho sôi, cho cá vào hấp 13 phút trên lửa lớn. Khi cá chín thì lấy ra chắt bớt phần nước đọng trong dĩa. 
Đun nóng chảo trên lửa nhỏ với dầu, thả gừng, ớt vào chảo xào thơm 1 - 2 phút đến khi có màu đỏ đẹp như dầu ớt thì tắt bếp. Sau đó cho tỏi băm, đầu hành trắng vào xào thêm 10 giây, cho 160ml nước, 2 muỗng nước tương, 1 muỗng đường, 1/4 muỗng tiêu. Nấu cho sốt sôi thêm lần nữa thì tắt bếp. Cá chín lấy ra, rưới phần nước sốt này lên cá là chúng ta có thể thưởng thức rồi đó.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0126', N'Cá hồi hấp nấm', '0', N'https://image.cooky.vn/recipe/g1/3228/s640/recipe3228-636414139493594548.jpg', N'Nấm tươi rửa sạch thái lát rồi thái khúc. Bạn cắt một tấm giấy bạc to hình chữ nhật, cho các loại nấm đã sơ chế vào giữa tấm giấy nhôm rồi đặt cá hồi lên trên. Đặt lát bơ nhạt lên trên cá hồi tiếp đó rưới nước tương lên trên. Gấp giấy bạc lại, bọc kín các mép và góc cạnh. Cho lượng nước vào chảo hoặc nồi với mực nước cao khoảng 0,6cm. Cho túi cá hồi vào rồi đậy nắp đun sôi. Khi nước sôi hạ nhỏ lửa đun thêm khoảng 9-10 phút để cá hồi chín là được. Lấy cá hồi ra, bóc mở giấy nhôm và thêm một ít rau mùi thái nhỏ vào là xong.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0127', N'Cá chép hấp ngải cứu', '0', N'https://image.cooky.vn/recipe/g4/30367/s640/cooky-recipe-636617443148410743.jpg', N'Cá chép làm sạch, rửa qua nước chanh cho khử bớt mùi. Ướp 1/2 muỗng cà phê muối vào cá. Cà chua rửa sạch, cắt múi cau. Hành lá, thì là cắt phần đầu khoảng 3-5cm. Lá ngải cứu lấy 1/2 lượng xắt nhuyễn, lượng còn lại để nguyên. Trứng gà cho vào chung phần lá ngải cứu cắt nhuyễn cùng với 1 muỗng cà phê nước mắm, 1 muỗng cà phê bột nêm, 1 muỗng cà phê bột ngọt. Trộn đều tất cả lại. 
Cho phần hỗn hợp này vào trong cá. Lấy một cái tô có thể hấp được. Xếp lần lượt vào đó ngải cứu, 1/2 lượng cà chua rồi tới cá và đầu hành trắng. Lớp trên cùng là phần cà chua còn lại. Rắc trên cùng 1 muỗng cà phê bột ngọt, 1 muỗng cà phê bột nêm, 1 muỗng cà phê tiêu. Hấp cách thủy khoảng 30 phút là cá chín. Phần còn lại là dọn ra đĩa và dùng với cơm nóng. Nếu thích ăn đậm đà có thể chấm cùng với nước tương ớt dầm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0128', N'Cá chẽm hấp kiểu Hongkong', '0', N'https://image.cooky.vn/recipe/g5/45264/s640/recipe45264-cook-step4-636831487791450501.jpg', N'Hành lá rửa sạch, cắt đôi hành lá và phân ra đầu hành cùng lá hành. Để riêng đầu hành trên dĩa và tước nhỏ lá hành. Gừng làm sạch rồi thái lát mỏng. Cá chẽm (hoặc bất cứ loại cá nào bạn thích) làm sạch rồi để ráo. Xếp cá lên phần đầu hành trong dĩa, xếp gừng lên mặt cá. Bắc nồi hấp lên bếp và đun trong lửa lớn, cho cá vào hấp chín khoảng 12 phút rồi tắt lửa, để yên thêm khoảng 2 phút nữa rồi mới lấy cá ra ngoài. ắc phần lá hành đã tước nhỏ ở trên lên cá. Cho đường, nước, nước tương vào chảo nhỏ và đun sôi cho tan hoàn toàn. Bắc chảo lên bếp, đun sôi đầu ăn, sau đó hết sức cẩn thận rưới dầu ăn lên phần hành cho chín hành. Cuối cùng rưới phần hỗn hợp nước tương xung quanh cá là hoàn thành.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0129', N'Cá diêu hồng hấp bia', '0', N'https://image.cooky.vn/recipe/g1/4468/s640/recipe4468-636408297312121882.jpg', N'Nhặt sạch hành lá, thìa là rửa sạch cắt khúc dài khoảng 10cm. Tỏi, hành tím bóc vỏ đập dập, gừng rửa sạch cắt sợi. Cà chua gọt lấy vỏ làm hoa hồng để trang trí về sau, phần thịt cắt miếng cau. 
Cá diêu hồng sơ chế thật sạch, bóp với chút muối hột để khử tanh rồi để thật ráo nước. Ướp cá diêu hồng với 1/3 muỗng cà phê muối, 1 muỗng cà phê hạt nêm, 3/4 số hành tím, thìa là, tỏi, gừng và 1 muỗng canh dầu ăn. Trộn đều cho gia vị ngấm khắp thân cá rồi cho toàn bộ phần nguyên liệu vừa ướp vào đầy trong bụng cá để khi hấp giữ được mùi thơm. Dựng cá đứng thẳng bằng cách banh rộng bụng cá đã nhồi đầy rau vào. Cách này sẽ làm thịt cá chín rất nhanh và đều do nhận nhiệt trên toàn thân cá. Còn nếu không các bạn cứ để cá nằm trên đĩa cho vào hấp cũng rất đẹp nhé. Cho bia vào nồi, cho cả đĩa cá vào trong nồi hấp, đậy nấp đun sôi khoảng 15-20 phút là cá chín. Bày trí cá hấp bia ra đĩa, chấm với nước mắm chua ngọt là ngon hết sẩy. Có thể dùng với cơm hoặc cuốn bún, bánh tráng với rau sống cũng rất ngon. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0130', N'Cá basa phi lê áp chảo', '0', N'https://image.cooky.vn/recipe/g4/36058/s640/cooky-recipe-636687372199179959.jpg', N' Rửa sạch cá, cắt khúc vừa ăn. Cho 3 muỗng nước mắm, 1 muỗng tiêu xay và 2 muỗng mật ong, tỏi băm nhuyễn cho vào. Dùng đũa trộn đều và ướp 5-10 phút để cá thấm gia vị, khi ăn sẽ vừa miệng và đậm đà hơn. Cho 2 muỗng cà phê dầu ăn vào chảo cùng tỏi băm cho vàng thơm. Cho cá vào, hạ nhiệt độ bếp xuống. Chờ 3 phút cho mặt cá vàng đều, trở mặt còn lại. Cẩn thận cá bị cháy sẽ không ngon đâu nhé! Kiểm tra xem 2 mặt cá đã vàng đều thì tắt bếp.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0131', N'Cá phi lê chiên xù', '0', N'https://image.cooky.vn/recipe/g2/13861/s640/recipe13861-636431422431046005.jpg', N'Cho trứng vào chén đánh tan cùng với sữa tươi. Cá rửa sạch, thấm khô. Thái cá từng miếng nhỏ dài. Cho cá vào âu cùng với các gia vị phí trên, mang bao tay trộn đều. Cho miếng cá vào chén bột mì áo đều, sau đó nhúng cá vào chén trứng. Cuối cùng lăn vào chén bột chiên xù. Đặt chảo dầu lên bếp, chờ dầu nóng (đừng để quá nóng), thì cho từng ít cá vào chiên với lửa vừa. Khi miếng cá vàng giòn thì gắp ra dĩa có lót giấy thấm dầu.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0132', N'Da cá hồi chiên sốt trứng muối', '0', N'https://image.cooky.vn/recipe/g4/36692/s640/recipe36692-cook-step3-636694291477493205.jpg', N'Lấy lòng đỏ trứng vịt muối hấp chín. Sau đó dùng muỗng nghiền nhuyễn. Nếu ngại trứng muối bị tanh thì bạn có thể rửa lòng đỏ trứng quả rượu trắng trước khi đem hấp nhé! Đun chảy 1 muỗng canh bơ, cho lòng trứng trứng muối đã nghiền vào, thêm 1.5 muỗng canh nước dầu của sa tế tôm, đảo đều. Sau đó cho da cá hồi chiên giòn vào đảo cho da cá áo đều sốt trứng muối là được.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0133', N'Chả cá khoai tây', '0', N'https://image.cooky.vn/recipe/g4/34213/s640/cooky-recipe-cover-r34213.jpg', N'Khoai tây gọt vỏ, rửa sạch, thái nhỏ rồi hấp chín. Phi lê cá cũng rửa sạch và hấp chín. Sau đó bạn cho tất cả các nguyên liệu (trừng bột chiên xù và dầu ăn) vào máy xay thực phẩm, xay nhuyễn hỗn hợp. Để chả cá dai ngon hơn nữa, bạn có thể xay xong rồi quết bằng tay nhiều lần. Sau đó nặn thành từng viên vừa ăn, độ lớn như thế nào là tùy theo sở thích của bạn nhé. Lăn qua lớp bột chiên xù. Bắc chảo dầu lên bếp, cho chả cá vào chiên giòn. 
Cho chả cá ra ngoài, để cho ráo dầu. Món chả cá này cho bé chấm với sốt mayonnaise là tuyệt vời đó nha. Ngoài ra, bạn có thể chấm thêm tương ớt, tương cà hay nước tương tùy theo sở thích nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0134', N'Cá cơm rán giòn', '0', N'https://image.cooky.vn/recipe/g2/14101/s640/recipe14101-prepare-step5-635743968320104201.jpg', N'Cá cơm rửa sạch, xóc đều với 2 muỗng canh bột năng. Hành lá rửa sạch, cắt nhỏ. Làm nóng dầu ăn trong chảo, cho cá cơm vào, chiên vàng giòn. Vớt cá ra, để ráo dầu. Tiếp tục dùng chảo đó, cho 1 muỗng canh nước mắm, 1 muỗng cà phê mật ong, 1 muỗng cà phê ớt bột, 1 muỗng cà phê muối, 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê tiêu, 1 muỗng cà phê tỏi băm vào, đảo đều 30 giây. Cuối cùng, cho cá cơm đã chiên, hành lá vào, đảo đều thêm 2 phút là được. Cho món ăn ra đĩa và dùng với cơm');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0135', N'Cá chẽm chiên nước mắm', '0', N'https://image.cooky.vn/recipe/g2/12928/s640/recipe12928-635742936570748945.jpg', N'Cá chẽm làm sạch, bỏ ruột, dùng dao khứa 3-4 đường lên thân cá. Tỏi bóc vỏ, ớt rửa sạch, cắt nhỏ cả 2, cho ra đĩa. Làm nóng dầu ăn trong chảo, cho cá chẽm vào, chiên vàng giòn 2 mặt. Gắp cá ra đĩa, để riêng. Tẻ bớt dầu ăn, để lại khoảng 2 muỗng canh. Cho ớt, tỏi, 1 muỗng canh đường trắng, 1 muỗng canh nước cốt chanh, 2 muỗng canh nước mắm, 1/2 muỗng cà phê tiêu, 1/2 muỗng cà phê muối, 1/3 chén nước vào chảo, khuấy đều khoảng 1 phút. Cho cá ra đĩa, chan hỗn hợp nước mắm lên cá và dùng với cơm nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0136', N'Cá bạc má muối chiên sả ớt', '0', N'https://image.cooky.vn/recipe/g4/30609/s640/cooky-recipe-636614744446909256.jpg', N'Cá bạc má mua về rửa sạch, cắt bỏ mang, chừa lại đầu nhé, lúc chiên giòn ăn đầu rất ngon. Khứa xéo sống lưng cá ở cả 2 mặt. Sả băm nhuyễn cùng với 1 trái ớt tươi. Cắt khúc 1 ít sả, đập dặp để nhát vào bụng cá mục đích sau khi chiên phần bụng cá sẽ thơm hơn. Tỏi băm nhuyễn để riêng. Cho muối, 2 trái ớt tươi, 1/3 bột ngọt vào cối giã nhuyễn, cho muối ám đều màu ớt đỏ nha. Thoa muối đã giã đều lên 2 mặt cá, nhớ cho một ít muối đã giã vào bụng cá. Nhét phần tỏi khúc đập dậu vào bụng cá. Thoa thêm một ít sả băm đều xung quanh thân cái. Ướp cá trong 5-7 phút. Cho dầu vào chảo, làm nóng dầu với lửa lớn. Cho cá vào chảo, chiên trong 1 phút đầu với lửa lớn, lúc sau cho lửa nhỏ lại để chín bên trong cá, như vậy cá sẽ không bị cứng lớp ngoài khi vàng đều. Áp dụng cho cả 2 mặt cá, trở cá để cá chín vàng 2 mặt là được, cho cá ra dĩa. Dùng lại dầu còn lại trong chảo chiên cá. Cho tỏi băm và sả vào, phi thơm, khi sả hơi ngà vàng cùng với tỏi, vớt ngay ra ngoài, bỏ dầu nhé, cho sả chiên lên mặt cá và hoàn thành xong món ăn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0137', N'Chả cá thác lác cuộn trứng', '0', N'https://image.cooky.vn/recipe/g1/671/s640/recipe671-635519951386512969.jpg', N'Đậu đũa cắt bỏ 2 đầu và rừa sạch với nước. Sau đó để ráo nước. Cho cá thác lác vào 1 cái bát lớn, cho vào 1/2 muỗng cà phê tiêu, 1/4 muỗng cà phê nước mắm, 1 muỗng cà phê hành lá và 1/2 muỗng cà phê hành tím băm vào. Quết thật kĩ hỗn hợp cá để cá sau khi chế biến sẽ dai. Hành lá rửa sạch, cắt nhuyễn ra. Để ra bát riêng. Trứng gà cho ra bát, đánh đều, nêm vào 1 muỗng cà phê hạt nêm, 1/4 muỗng cà phê bột ngọt và 1/2 muỗng cà phê tiêu. Đặt chảo lên bếp, cho vào chảo 1 muỗng cà phê dầu ăn, khi dầu sôi thì cho trứng đã đánh tan vào, tráng trứng thật mỏng. Sau đó cho trứng ra dĩa. Trải màng bọc thực phẩm ra 1 khay lớn, rồi cho trứng đã tráng ra rồi lấy chả cá thác lác đã quết kĩ, quết 1 lớp lên trứng rồi đặt đậu que lên chả cá thác lác. Rồi dùng màng bọc thực phẩm cuộn trứng và chả cá thật chặt lại với nhau. Sau khi cuộn xong, gỡ bỏ màng bọc thực phẩm. Cho tiếp 3 muỗng cà phê dầu ăn vào chảo chiên trứng lúc nãy, cho dầu sôi lên thì cho trứng vào chiên với lửa nhỏ để chả cá thác lác chín bên trong và trứng thì không bị cháy. Chiên khoảng 7 phút là được.
Sau khi chiên trứng cuộn xong, để khi trứng nguội thì cắt ra từng khoanh ăn kèm với cơm. Rau sống xếp ra dĩa chấm cùng trứng với nước mắm chua ngọt.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0138', N'Cá hồi cuộn cơm chiên rong biển', '0', N'https://image.cooky.vn/recipe/g5/45555/s640/recipe45555-cook-step8-636840243155008149.JPG', N'250gr Tôm sú bỏ đầu, rửa sạch, dùng xiên que xiên thẳng vào từ đuôi tôm để định hình tôm thẳng. Hấp chín tôm trong 5 phút. Sau đó lột vỏ tôm và tháo xiên que. 
Trộn cơm: 200gr Cơm dẻo với 1/2 muỗng cà phê muối, 1 muỗng cà phê đường, 1 muỗng cà phê nước tương, 1 muỗng cà phê nước cốt chanh cùng 5gr rong biển khô, 5gr mè trắng rang, 5gr tỏi phi và 5gr thì là. Trộn đều hỗn hợp. 
Cá hồi mua 2 miếng lớn khoảng 400gr, tiến hành lọc bỏ phần da của cá hồi, rửa cá với nước muối pha loãng, sả sạch, để ráo sau đó đem cắt lát hình chữ nhật. Trải miếng cá hồi ra, phết 1 lớp cơm mỏng và chừa một phần đầu miếng cá để tạo hình đẹp mắt hơn, đặt 1 con tôm lên, chừa đuôi ra ngoài, cuộn tròn lại. Cố định cuốn cá bằng tăm và bọc cá với miếng rong biển cho đẹp mắt. Lăn phần đầu cuốn cá qua mè để tạo sự đẹp mắt và ngon miệng hơn cho món ăn. Phủ toàn bộ cuốn cá với lớp bột tẩm khô chiên giòn, bước này sẽ giúp cá khi chiên được vàng giòn hơn. Làm nóng chảo với 200ml Dầu ăn cao cấp từ cá - Ranee, sau đó cho cuộn cá hồi vào chiên với lửa lớn, trong quá trình chiên đảo mặt để cá được vàng đều. Tổng thời gian chiên khoảng 5 - 8 phút.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0139', N'Cá trắm chiên giòn sốt tiêu', '0', N'https://image.cooky.vn/recipe/g2/14033/s640/recipe14033-prepare-step5-636414186440473005.jpg', N'Cá rửa sạch cắt lát dày khoảng 1,5cm - 2cm. Cho cá vào thố, thêm rượu nầu ăn, nước tương, gừng, hành là và một ít muối trộn đều và ướp trong 15 phút. Trong lúc ướp cá bạn làm phần sốt tiêu. Cho đường, dấm, nước tương, rượu nấu ăn và một ít muối vào bát nhỏ. Cho 500ml nước vào nồi, thêm hoa hồi, quê vào đun sôi. Thêm hạt tiêu và nước tương vừa pha vào đun sôi trở lại rồi tắt bếp. Cho nước sốt tiêu ra bát để nguội. Đun nóng dầu ăn trong chảo, cho cá đã ướp gia vị vào chiên cho đến khi vàng giòn thì vớt ra đĩa. Nhúng cá đã chiên vào nước sốt tiêu và để một lúc cho cá ngấm gia vị là xong. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0140', N'Bánh canh cá lóc', '0', N'https://image.cooky.vn/recipe/g2/10434/s640/recipe10434-prepare-step4-635767137599284043.jpg', N'Làm sạch cá lóc (bạn có thể mua cá lóc đã được làm sạch ngoài chợ), lóc cá riêng phần thịt và xương. 
Rửa sạch và cắt nhỏ hành lá, hành boa rô. Cắt chả cá thác lác thành từng lát mỏng. Rửa sạch thịt cá và xương. Rửa sạch, cắt lát gừng. Đặt một chiếc nồi lên bếp, cho 1.2 lít nước sạch, xương cá cùng gừng vào, mở lửa vừa và nấu nước dùng. Nấu đến khi nước bắt đầu sôi, thả thịt cá vào và nêm 15gr muối, 50gr hạt nêm, 30gr đường và 50ml nước mắm. Để lửa nhỏ, nấu thêm khoảng 20 phút rồi tắt bếp. Vớt thịt cá lóc ra, cắt thành từng miếng vừa ăn. Đặt một chiếc nồi nhỏ cùng một ít nước sạch lên bếp, mở lửa lớn. Khi nước sôi, thả bánh canh vào trụng đến khi sợi bánh trong thì vớt ra. Xếp bánh canh, cá lóc, chả cá ra tô, chan nước dùng lên. Rắc thêm một ít hành lá, hành boa rô và tiêu lên để tô bánh canh cá lóc tăng thêm hương vị.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0141', N'Mực dồn thịt rim kẹo', '0', N'https://image.cooky.vn/recipe/g4/30061/s640/cooky-recipe-636605491606089500.jpeg', N'Chuẩn bị làm mực nhồi thịt: Đem mực và thịt rửa sạch với 1 muỗng muối, để ráo. Thịt xắt nhỏ, băm nhuyễn. Mực ống cắt đầu, mình để riêng sau đó băm nhỏ đầu mực. Đầu hành rửa sạch đất, bóc vỏ, băm nhuyễn.Cho thịt băm, đầu mực, hành vào tô. Thêm vào 1 muỗng cà phê muối, 1 muỗng canh đường, 1 muỗng cà phê bột nêm, 1/2 muỗng cà phê bột ngọt, 1 muỗng cà phê tiêu xay vào trộn đều cùng với thịt và mực. Để phần nhân này thấm gia vị trong 5 phút.Cách làm mực nhồi thịt: Sau khi phần nhân thấm vị xong, dùng muỗng cà phê nhỏ nhồi nhân vào trong con mực. Nhồi phần nhân vừa đủ, tránh để bị rách con mực. Dùng que tăm ghim lại.Mực nhồi thịt rim: Bắc chảo lên bếp, cho vào 4 muỗng canh dầu. Đợi dầu nóng thả mực vào chiên vàng đều hai mặt. Trong lúc đợi da mực vàng lên ta chuẩn bị nước sốt: Cho vào chén 2 muỗng canh nước mắm, 2 muỗng canh đường, 2 muỗng cà phê tiêu xay, 2 muỗng canh nước khuấy lên cho đến khi hỗn hợp nước sốt tan đều. Sau khi mực vàng cho chén nước sốt vào, vặn lửa nhỏ, rim cho đến khi nước sốt keo lại.
Khi thấy mực nhồi thịt ngả màu vàng nâu, bắc chảo xuống cho mực ra đĩa, rưới nước sốt lên. Có thể trang trí thêm cho đĩa mực nhồi thịt một cọng ngò xanh nữa cho đẹp mắt. Dùng ngay với cơm nóng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0142', N'Mực xào cần tây', '0', N'https://image.cooky.vn/recipe/g1/4429/s640/recipe4429-635628044402216948.jpg', N'
Chuẩn bị làm mực xào cần tây: Rửa sạch cần tây, cắt khúc vừa ăn. Rửa sạch, cắt dưa leo thành lát dày. Rửa cà chua, bóc vỏ hành tây rồi bổ múi cau.Cách làm mực xào: Rửa mực với nước muối cho bớt nhớt, làm sạch, cắt lát vừa ăn. Cho vào nồi luộc sơ với ít gừng rồi vớt ra đĩa để ráo nước. Làm nóng chảo rồi cho 1 muỗng cà phê dầu vào, chờ dầu nóng thì cho 1/2 hành tây vào xào. Khi hành tây hơi chín thì đổ mực vào xào cùng. Nêm mực xào với 1 muỗng cà phê hạt nêm, ớt sa tế. Khi mực xào vừa hơi săn thịt thì cho ra tô.
Cách làm mực xào cần tây: Tiếp tục cho 2 muỗng cà phê dầu, cho phần hành tây còn lại, dưa leo vào xào với 1/2 muỗng cà phê hạt nêm, muối, đường. Đảo đều tay đến khi hành tây hơi chín thì cho mực xào vào chung. Sau cùng cho cà chua, cần tây và gừng cắt sợi vào xào chín. Nêm lại gia vị cho vừa ăn rồi tắt bếp.
Cho mực xào cần tây ra đĩa, rắc thêm ít tiêu để dậy mùi. Mực xào cần tây thơm ngọt, thanh dịu vị rau củ, ăn bắt cơm vô cùng. Bạn có thể chuẩn bị thêm 1 chén nước tương ớt xắt chấm mực xào để món xào thêm đậm đà nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0143', N'Mực nướng  sa tế', '0', N'https://image.cooky.vn/recipe/g4/38705/s640/cooky-recipe-cover-r38705.jpg', N'Làm sạch mực tươi, rửa với 100ml rượu trắng và 5gr gừng băm nhuyễn, chà bên trong và bên ngoài để khử mùi tanh của mực, sau đó rửa lại với nước sạch. Chuẩn bị sẵn những que tre để xiên mực, ngâm xiên vào nước lạnh ít nhất 30 phút để que xiên có độ ẩm, khi nướng trên bếp than những phần không tiếp xúc với lửa nóng sẽ không bị cháy. Xiên mực vào từng que tre.Cách ướp mực nướng sa tế gồm 10gr sả băm, 10gr tỏi băm, 10gr hành tím băm, 2 muỗng canh dầu hào, 2 muỗng canh ớt sa tế, 2 muỗng canh đường thốt nốt, 1 muỗng canh hạt nêm, 1 muỗng canh nước lọc, khuấy đều cho sốt ướp hòa quyện. Rưới sốt ướp lên mực, ướp mưc ít nhất 30 phút trong tủ lạnh.Chuẩn bị sẵn bếp than cháy hồng, cho xiên mực lên nướng nhanh mỗi mặt 5 phút. Phết sốt ướp lên mỗi mặt mực trong lức nướng để tạo màu vàng đẹp và độ bóng bảy ngon miệng cho con mực.Mực nướng sa tế được nướng vàng trên bếp than, từng con mực đều có mùi thơm cực kì cuốn hút, nghe thôi đã thấy thèm và muốn ăn ngay rồi. Mực ướp sa tế với thịt mực tươi dai dai sần sật, gia vị thấm vào từng thớ thịt đậm đà, chút the the cay cay của ớt sa tế, mùi thơm tỏi sả hòa quyện chắc chắn sẽ làm say đắm người ăn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0144', N'Mựa chiên nước mắm', '0', N'https://image.cooky.vn/recipe/g1/516/s640/recipe516-635500236377133680.jpg', N'Làm sạch mực, moi hết ruột và lá mực ra bỏ. Để ráo nước sau đó mang đi chiên sơ trước khi làm mực chiên nước mắm. Cho mực vào chảo ngập dầu, chiên giòn. Mực chín vàng vớt ra.Pha hỗn hợp nước mắm gồm: 20ml nước mắm, 2 muỗng cà phê đường, 1 muỗng cà phê bột ngọt để mực chiên mắm được đậm đà.Trút bớt dầu trong chảo ra, chỉ để lại một ít. Cho tỏi và phi thơm, tiếp đến cho mực vào chảo đảo đều, rưới chén nước mắm vào trộn đều, chiên thêm khoảng 2 - 3 phút cho thấm gia vị là xong món mực chiên nước mắm.Như vậy là chúng ta đã chế biến xong món mực chiên nước mắm, bày mực chiên mắm ra đĩa thôi. Để cho món mực chiên nước mắm thêm thơm ngon độc đáo hơn thì các bạn hãy chuẩn bị thêm chút rau mùi trang trí lên đĩa mực chiên nước mắm và 1 đĩa tương ớt để chấm cùng với mực. Những con mực vàng ươm hấp dẫn, ngấm đều nước mắm cùng với các gia vị đậm đà, rất thích hợp làm món ngon mỗi ngày trong bữa cơm của gia đình.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0145', N'Mì hải sản sốt chua cay', '0', N'https://image.cooky.vn/recipe/g5/44483/s640/cooky-recipe-cover-r44483.JPG', N'
Sốt chua cay: Nấu sôi 80ml nước cốt tắc và 100gr đường trắng. Sau đó cho vào nồi 30ml nước mắm, 100gr tương ớt và 30gr tương cà. Dùng muỗng khuấy đều để các nguyên liệu hòa quyện với nhau. Tắt bếp và để nguội.
Sơ chế nguyên liệu: Nấu sôi nồi nước, cho 2 gói mì cay Hàn Quốc vào nấu chín 4 phút và cho giá vào trụng sơ. Chuẩn bị 1 một nồi nước sôi khác, cho vào nồi 5gr gừng, tiếp theo cho 200gr mực, 200gr tôm và 500gr nghêu vào luộc chín 2 phút.
Cho lần lượt mì gói, tôm, mực, nghêu và giá, rau thơm vào tô. Rưới nước sốt chua cay vào. Thêm hành phi và dùng đũa trộn đều để các nguyên liệu thấm sốt.Vậy là món mì hải sản sốt chua cay đã hoàn thành rồi đấy. Rất nhanh và đơn giản phải không nào. Sợi mì dai mềm, ăn kèm tôm mực ngon ngọt và thấm đẫm nước sốt chua cay rất hấp dẫn, có thêm rau giá và hành phi nên món ăn càng dễ ăn và không bị ngán.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0146', N'Hủ tiếu mực', '0', N'https://image.cooky.vn/recipe/g4/36783/s640/cooky-recipe-cover-r36783.jpg', N'Nấu nước dùng hủ tiếu mực: Rửa sạch xương heo với nước muối. Ngâm tôm khô vào nước cho mềm, rửa sạch. Nướng sơ khô mực, hành tây và hành cho thơm. Đổ 1.5 lít nước vào nồi lớn, cho vào 500gr xương heo, 20gr tôm khô, 20gr khô mực, 1 củ hành tây, 4 củ hành tím, nêm 3gr muối. Hầm nước dùng 1 tiếng.Đun nóng 1 muỗng canh dầu ăn, cho thịt băm vào xào chín, nêm 1/2 muỗng cà phê muối và 1/2 muỗng cà phê tiêu. Chuẩn bị một nồi nước khác, đun sôi và cho mực cắt khoanh vào chần chín.
Sau khi hầm xương được 1 tiếng, vớt bỏ phần hành tây, hành tím. Nêm gia vị nước dùng gồm 1/2 muỗng canh muối, 1 muỗng canh đường phèn, 2 muỗng canh nước mắm. Nước dùng hủ tiếu mực sôi lần nữa thì tắt bếp.Bày trí hủ tiếu mực: Chần sơ sợi hủ tiếu cho vào từng tô, thêm thịt băm, mực, nước dùng, vài lát ớt trái và rắc tỏi phi, hành tím phi, ăn kèm rau cần tàu, hẹ và giá đỗ. Tô hủ tiếu mực nóng hổi thơm lừng sẽ mang đến những bữa ăn ngon miệng và hấp dẫn cho gia đình bạn. Cách nấu hủ tiếu mực rất đơn giản nên bạn đừng ngần ngại vào bếp mà hãy làm ngay món ngon này nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0147', N'Cơm Chiên Mực Trứng Muối', '0', N'https://image.cooky.vn/recipe/g5/46698/s640/cooky-recipe-cover-r46698.jpg', N'6 lòng đỏ trứng muối cho ra dĩa, phết lên một lớp dầu mè mỏng rồi cho vào lò nướng chín khoảng 7 phút ở 170 độ C. Sau khi nướng để trứng muối hơi nguội bớt thì lấy 4 lòng đỏ đem cắt thành những miếng nhỏ, 2 lòng đỏ còn lại đem tán nhuyễn.
2 con mực tươi khoảng 400gr mua về làm sạch ruột, lột bỏ lớp da màu tím bên ngoài rồi cắt thành những khoanh tròn.Đến công đoạn chiên cơm: chuẩn bị sẵn 500gr cơm nguội, cho trứng muối đã tán nhuyễn, 2 quả trứng gà vào bóp đều. Bắc một chiếc chảo nóng, cho vào 2 muỗng canh dầu ăn sau đó cho 15gr tỏi thái lát vào phi thơm. Tiếp theo cho cơm nguội đã bóp với trứng vào rang đều tay cho đến khi cơm khô tơi ra.Dàn phần cơm rang qua 1/2 chảo, phần chảo còn lại thêm vào 1 muỗng canh dầu ăn, cho mực tươi vào chảo, thêm 20gr ớt sa tế khô, 15ml nước tương, 30gr dầu hào vào rồi xào cho đến khi mực săn lại và thấm gia vị. Tiếp theo trộn đều phần cơm rang và mực xào lại với nhau, đảo xóc đều tay cho đến khi cơm khô ráo, hạt cơm giòn tơi là được. Cuối cùng thêm vào phần trứng muối cắt nhỏ cùng 30gr hành lá cắt nhỏ, đảo lên lần nữa rồi tắt bếp.
Những miếng trứng muối bùi bùi mặn nhẹ hòa với mực tươi giòn sật mang vị ngọt tự nhiên, cơm chiên nóng hổi, giòn tơi hương vị vừa miệng không cần phải thêm nước tương như cơm chiên thông thường nữa. Để làm nổi bật hương vị hơn bạn có thể cho thêm một chút tương ớt cay the là đúng kiểu một bữa cơm chiên cứu đói hoàn hảo mà không kém phần ""sang chảnh"" rồi. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0148', N'Chả Mực', '0', N'https://image.cooky.vn/recipe/g5/49751/s640/cooky-recipe-cover-r49751.jpg', N'
Rửa sạch 1kg mực lá với 30gr gừng và 100ml rượu trắng để khử mùi tanh. Sau đó để ráo, thấm khô mực. Phần râu mực cắt thành hạt lựu.Cho mực nguyên con vào cối giã nhuyễn bằng chày. Khi mực đã nhuyễn cho vào 15gr tỏi băm, 15gr hành tím băm, 1 muỗng canh nước mắm, 1 muỗng cà phê tiêu rồi tiếp tục giã nguyễn.Cho mực đã giã ra tô trộn cùng râu mực cắt hạt lựu. Sau đó cho mực vào ngăn đông tủ lạnh 30 phút. Sau đó dùng bao tay ni lông xoa chút dầu ăn rồi nặn chả tròn bẹt theo lượng đều nhau.Đun dầu sôi lăn tăn trong chảo sâu lòng, thả chả mực vào chiên. Khi chín tới, chả sẽ tự nổi lên trên mặt dầu, mặt trên chả còn trắng nhưng mặt dưới đã vàng, chỉ việc lật chả sang mặt kia cho vàng đều hai mặt là đượcChỉ vài bước với cách làm chả mực đơn giản này, cả nhà bạn sẽ có món ăn ngon và hấp dẫn để thưởng thức. Chả mực khi chín có màu vàng ruộm hấp dẫn, khi ăn thấy mực giòn sần sật, hòa quyện cùng gia vị thơm lừng. Đã có công thức rồi, bạn còn chờ gì nữa mà không vào bếp ngay để trổ tài nấu nướng của mình nào!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0149', N'Mực  Hấp Hành Gừng', '0', N'https://image.cooky.vn/recipe/g2/13524/s640/recipe13524-636196470659184378.jpg', N'
Rửa sạch hành lá, cần tàu, cắt khúc dài, phần gốc hành chẻ đôi. Nạo sạch vỏ 50gr gừng, cắt lát rồi cắt sợi nhỏ 30gr. Bóc vỏ hành tây, cắt lát nhỏ. Gọt cỏ cà rốt, thái sợi to.Cách hấp mực trứng: Cho các loại rau củ vào dĩa lòng sâu, thêm mực trứng, ướp với 1/2 muỗng cà phê muối, 1/2 muỗng cà phê tiêu lên trên. Cho thêm hành lá và cần tàu, đem dĩa mực cho vào xửng hấp, hấp 15 phút là chín.Cách pha nước mắm gừng ăn kèm mực trứng hấp: Giã 20gr gừng còn lại với ớt cho nhuyễn. Pha 3 muỗng canh nước mắm với 2 muỗng canh đường trắng. Cho hỗn hợp gừng, ớt vào nước mắm đường, nặn thêm chanh và khuấy đều cho hỗn hợp tan hoàn toàn. Nêm nếm lại cho vừa khẩu vị của gia đình.
Bày trí mực trứng hấp ra đĩa. Xếp thêm vài lát chanh ớt cắt lát lên trên dĩa mực. Rưới nước mắm gừng lên và thưởng thức thôi nào.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0150', N'Mực Chiên Xù', '0', N'https://image.cooky.vn/recipe/g1/9690/s640/recipe9690-635645997666249937.jpg', N'
Rửa sạch mực với nước và ít muối để loại bỏ chất nhớt. Dùng nước sôi, xối lên bề mặt của mực, lột bỏ phần da, sau đó, cắt thành từng khoanh nhỏ, thấm khô.
Ướp mực với muối, tiêu, nước tương và rượu trắng khoảng 10 phút. Cho bột mì, bột chiên xù ra 2 đĩa khác nhau. Đập trứng ra chén, khuấy đều.Cách làm mực chiên xù: Nhúng mực lần lượt qua bột mì, trứng gà rồi đến bột chiên xù. Làm nóng dầu ăn trong chảo, cho mực vào, chiên vàng giòn.
Lót giấy thấm dầu lên đĩa và cho mực chiên xù vào. Chuẩn bị thêm tương ớt và tương cà để chấm kèm với mực chiên xù. Ăn mực chiên trong các bữa cơm hoặc dùng mực chiên xù như các món ngon đãi tiệc, món ăn vặt đều được.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0151', N'Bún riêu cua đồng', '0', N'https://image.cooky.vn/recipe/g2/19394/s640/recipe19394-636263144069761726.jpg', N'
Cho vào chảo 1 muỗng canh dầu ăn, đợi dầu nóng cho thêm hành tím cắt lát vào phi cho thơm. Cho gạch cua và 1 muỗng canh mắm tôm vào chảo, dùng muỗng khuấy đều.Nấu đến khi gạch cua sôi, múc một nửa ra chén. Giữ phần còn lại nguyên trong chảo, cho thêm cà chua cắt múi cau, đậu hũ chiên cắt vuông và 1 muỗng cà phê dầu màu điều vào. Xào đều đến khi cà chua vừa chín tới, nước xào ra màu cam đẹp thì nhắc xuống.Mua cua đồng về cho vào thau đá lạnh để cua ngừng hoạt động. Tách bỏ mai cua rồi rửa sạch, cho vào máy xay nát (Nếu không muốn mất thời gian bạn cũng có thể mua cua đồng xay sẵn, bán rất nhiều ở chợ hoặc siêu thị). Cho cua xay vào rây, đổ nước lạnh qua rây, lọc lấy thịt cua và bỏ phần vỏ cứng. Với 500gr cua xay bạn dùng 1 lít nước lạnh, cứ đổ nước và gạn từ từ đến khi chỉ còn vỏ cứng trong rây thì bỏ đi. Thêm vào nước cua 2 quả trứng gà đánh tan rồi bật bếp đun ở lửa nhỏ.
Chờ đến khi nồi nước sôi lên, riêu cua sẽ nổi lên mặt. Lúc này bạn dùng rây hoặc vá có lỗ vớt riêu lên để ráo nước rồi cho vào chén hoặc dĩa, nhớ nén riêu cua chặt tay để khi cắt ra, riêu cua tạo thành từng miếng nhìn đẹp mắt hơn. Múc gạch cua ra dàn đều lên miếng riêu (phần gạch cua bạn xào khi nãy), riêu của chúng ta sẽ có màu đẹp hơn và tô bún riêu cua đồng sẽ hấp dẫn hơn nhiều đấy.
Cho tôm khô ngâm mềm vào nồi nước vừa vớt riêu cua ra và nấu, có tôm khô nước dùng sẽ ngọt và mùi thơm đặc trưng hơn. Pha hỗn hợp gồm 3 muỗng canh giấm, 2 muỗng canh hạt nêm và 1 muỗng canh mắm tôm rồi đổ vào nồi nước dùng, khuấy đều. Cho đậu hũ và cà chua xào vào nồi nước dùng khi đang sôi, thêm huyết rồi đợi đến khi nước sôi lại thì nhắc xuống. Nêm nếm nồi bún riêu cua đồng lại tùy theo khẩu vị của gia đình.Khi ăn bún riêu cua đồng, bạn trụng bún, để ráo rồi gắp ra tô. Gắp thêm riêu cua, chả lụa cây, vài miếng huyết cùng đậu hũ, chan nước dùng nóng vào, rắc thêm miếng hành lá cắt nhỏ là chúng ta đã có tô bún riêu ngon, thơm lừng không kém gì ngoài hàng rồi. Bạn có thể nấu bún riêu cua đồng cho bữa sáng của cả nhà hay làm món ngon ăn tối để đổi chút khẩu vị vào những ngày ngán cơm. Cùng trổ tài với cách nấu bún riêu cua đồng chiêu đãi gia đình nhé các bạn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0152', N'Chả cua thịt nướng', '0', N'https://image.cooky.vn/recipe/g1/2869/s640/recipe2869-635743971721534175.jpg', N'Miến, nấm mèo ngâm nước ấm 30 phút cho nở mềm. Miến cắt khúc, nấm mèo lặt bỏ gốc, cắt sợi nhuyễn. Hành tây lột vỏ cắt nhuyễn.Chuẩn bị một tô lớn: cho thịt heo bằm, thịt cua, hành tây, miến, nấm mèo, 1/2 muỗng cà phê muối, 1/2 muỗng cà phê hạt nêm, 1/2 muỗng cà phê đường, 1 muỗng cà phê dầu mè.Chừa lại 2 lòng đỏ, phần trứng còn lại cho vào tô chả trộn đều, nêm 1/2 muỗng cà phê tiêu cho thơm. Múc hỗn hợp vào từng khuôn cupcake.Cho vào lò nướng 180 độ C trong vòng 20 phút. Dùng tăm xăm thử để kiểm tra xem chả đã chín chưa. Dùng cọ phết lòng đỏ trứng còn lại lên bề mặt chả. Tiếp tục nướng trong khoảng 5 phút thì được.
Cách này rất tiện lợi vì chả rất mau chín, sau khi nướng có thể chia ra mỗi người từng phần nhỏ rất dễ dàng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0153', N'Súp cua thập cẩm', '0', N'https://image.cooky.vn/recipe/g2/19494/s640/recipe19494-636274205695226444.jpg', N'Nấu nước dùng món súp cua thập cẩm: Bắc một nồi nước sôi, cho xương ống đã rửa sạch vào trụng để loại bỏ mùi hôi và giúp cho nước dùng được thơm ngon hơn. Chờ đến khi nước sôi lại thì vớt xương ra, cho vào nồi cùng với 2.5 lít nước lạnh. Đun lửa lớn đến khi nước sôi, vớt hết bọt cho nước dùng trong rồi hạ nhỏ lửa, đun liu riu khoảng 30 phút để lấy nước ngọt từ xương.
Luộc chín ức gà, xé nhỏ. Ngâm nấm tuyết và nấm đông trong nước ấm cho nở. Sau đó, cắt bỏ phần gốc vàng nấm tuyết rồi cắt nhỏ. Thái sợi nấm đông cô.
Cách nấu súp cua: Sau khi đã hầm xương xong, bạn gắp xương ra, cho lần lượt gà xé sợi và hạt bắp Mỹ vào.Tiếp theo cho nấm đông cô, thịt cua đã luộc vào khuấy đều. Khi nước súp cua sôi lên, bạn nêm nếm với 1/2 muỗng canh muối và 1 muỗng canh hạt nêm (nêm tùy khẩu vị). Lúc này bạn mới cho nấm tuyết cắt nhỏ vào vì nấm tuyết rất nhanh chín, nấu nhanh để vẫn giữ được độ giòn sừng sực cho nấm. Súp cua thập cẩm ngon là nhờ có nấm tuyết đặc trưng này đó.
Pha 120gr bột năng với 80ml nước lọc, đổ từ từ bột năng vào nồi súp cua, vừa đổ vừa khuấy đều để tạo độ sánh cho súp cua thập cẩm. Đun liu riu trên bếp 2 phút cho bột năng chín. Sau đó bạn đổ 2 quả trứng gà đánh tan vào, nhớ đổ nhẹ tay và khuấy đều thành vòng để tạo vân trứng giúp món súp cua nhìn đẹp mắt hơn.Múc súp cua thập cẩm ra tô, cho thêm trứng bắc thảo và trứng cút nếu thích. Rắc tiêu, hành ngò và một ít hành phi, nêm thêm 1 ít dầu mè và nước tương tùy khẩu vị, vậy là bạn đã có một chén súp cua chất lượng không thua kém gì nhà hàng rồi. Cách nấu súp cua theo cách này vừa ngon vừa bổ dưỡng, đảm bảo sẽ làm hài lòng khẩu vị của cả nhà nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0154', N'Canh cua rau muống khoai sọ', '0', N'https://image.cooky.vn/recipe/g1/2269/s640/recipe-635579141114068067.jpg', N'
Khoai sọ rửa sạch, thái miếng vuông vừa ăn. Rau muống nhặt non, rửa sạch rồi ngắt làm đôi. Cua rửa sạch bùn đất, tách mai, bỏ yếm. Khều gạch cua ra bát. Cho cua vào cối cùng chút muối, giã nhuyễn, lọc lấy nước, bỏ bã.Đổ luôn gạch cua vào nồi nước lọc cua, bắc lên bếp, thêm 1 lít nước lọc, lấy đũa khuấy đều tới khi thấy thịt cua bắt đầu kết tủa thì dừng tay. Nồi nước cua sôi, thịt cua đóng thành váng thì vớt riêng ra bát.
Cho khoai sọ vào nồi nước cua, nêm 1.5 muỗng canh hạt nêm, 1/3 muỗng cà phê muối. Đun nhỏ lửa cho tới khoai nhừ thì cho rau muống vào. Rau chín thì đổ bát thịt cua vào, thêm 1 muỗng cà phê bột ngọt, khuấy đều rồi tắt bếp.Múc canh ra tô và dùng nóng với cơm. Canh cua rau muống khoai sọ với vị thanh đạm, đơn giản. Đây là món canh dân dã, khá quen thuôc với miền quê. Cua đồng mát ngọt giàu dinh dưỡng. Khoai sọ bui bùi cùng rau muống giòn hấp dẫn');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0155', N'Bánh đa cua', '0', N'https://image.cooky.vn/recipe/g1/475/s640/recipe475-635498389597297723.jpg', N'Làm sạch và rửa sạch những con cua đồng. Phần mai cua lấy gạch, để riêng ra chén. Cho phần còn lại của cua đồng vào máy xay sinh tố (hoặc máy xay thực phẩm) cùng 1/2 chén nước, bật máy xay nhuyễn. Tiếp theo dùng rây, lọc nước xay cua đồng.Ngâm các sợi bánh đa khô vào nước đợi cho nở mềm, sau đó vớt bánh đa đã nở ra để ráo và xếp vào tô. Nhặt sạch rau muống và cần nước, rồi đem chúng rửa sạch, cắt khúc, luộc qua hoặc trụng chín để rau được dịu đi nhé!
Phi thơm hành tím băm với dầu ăn, cho gạch cua vào xào khoảng 5 phút. Sau đó đổ phần gạch cua xào vào nồi 2 lít nước, nấu sôi.Nêm hạt nêm, đường và muối vào nước dùng. Tắt bếp, chan nước cua vào tô bánh đa, ăn kèm với rau muống, cần nước và mắm tôm. Thế là món bánh đa cua đã hoàn tất và sẵn sàng phục vụ cho bữa ăn chất lượng của gia đình bạn rồi nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0156', N'Bánh canh cua bột gạo', '0', N'https://image.cooky.vn/recipe/g6/50093/s640/cooky-recipe-cover-r50093.jpg', N'
200gr thịt cua mua loại luộc sẵn, đem về trụng sơ qua nước sôi rồi vớt ra để ráo nước. Cho thịt cua vào tô, ướp với 1 muỗng canh hạt nêm và 10gr hành lá cắt nhỏ rồi trộn đều. Bắc chảo nóng, thêm vào 2 muỗng canh dầu màu điều rồi cho thịt cua vào xào 5 phút để thịt lên màu đẹp.Bắc lên bếp một chiếc nồi lớn, đun nóng 2 muỗng canh dầu ăn sau đó thêm 15gr hành tím thái lát vào phi thơm. Tiếp theo cho 600gr giò heo vào xào lên cho săn và giò heo dậy mùi thơm. Đổ vào nồi 1.2 lít nước hầm xương heo, thêm 30gr củ hành tím nướng và 10gr gốc ngò rí để nước dùng có mùi thơm. Mở lửa lớn đun sôi rồi hớt bọt, sau đó hạ lửa nhỏ, hầm giò heo 45 phút cho thật mềm.Chuẩn bị 150gr huyết heo luộc chín và 150gr chả cua luộc chín, đem cả hai đi cắt thành miếng vừa ăn. Sau khi hầm chân giò 45 phút, bạn cho vào nồi 300gr tôm tươi đã bóc vỏ cùng với huyết heo, chả cua, thịt cua xào và 20gr đầu hành lá rồi khuấy đều, đun sôi.Nêm nếm bánh canh với 1 muỗng canh đường phèn, 1 muỗng canh hạt nêm, 1 muỗng canh nước mắm. Nếm thử thấy hương vị ngọt nhẹ nhàng thơm dậy mùi cua. Cuối cùng cho 500gr sợi bánh canh bột gạo vào nồi, nấu thêm 2 phút nữa là được. Bột áo sợi bánh canh sẽ làm cho nước bánh canh cua sệt lại hấp dẫn hơn rất nhiều.Nếu ăn gia đình bạn có thể múc bánh canh vào một chiếc nồi vừa phải rồi đặt trên bàn ăn để cả gia đình có thể dùng chung với nhau như khi ăn lẩu. Bánh canh cua bột gạo nấu theo cách Cooky hướng dẫn rất đơn giản đúng không? Bạn có thể chuẩn bị một nồi bánh canh cua tại gia để cả gia đình cùng nhau ăn sáng rất là hợp lý đó.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0157', N'Hủ tiếu cua Mỹ Tho', '0', N'https://image.cooky.vn/recipe/g6/52651/s640/cooky-recipe-cover-r52651.jpg', N'Phần nước sốt: Chuẩn bị 6 muỗng canh tương cà, 1 muỗng canh tương ớt, 2 muỗng canh dầu hào, 2 muỗng nước tương tất cả cho vào tô lớn khuấy đều. Bắc chảo cho ít dầu cho nóng, cho hỗn hợp nước sốt vào, thêm 500 ml nước dùng để lửa nhỏ khuấy đến khi sôi. Nêm 2 muỗng canh hạt nêm, 2 muỗng canh đường, 1 muỗng cà phê muối. Cho nước bột bắp pha loãng vào cho hỗn hợp sệt lại. Tắt bếp, thêm 2 muỗng canh tỏi phi vàng cho thơm.Tim và gan heo rửa sạch với chút muối, sau đó bỏ vào nồi luộc, cho thêm vài lát gừng để khử mùi hôi. Tôm sú rửa sạch bỏ đầu luộc chín. Thịt càng cua rửa sạch với chút muối, luộc chín. Thịt xay xào qua cho chín. Thịt xá xíu xắt lát. Bắc nồi nước sôi, trụng hủ tiếu cho mềm, trụng thêm giá, hẹ. Tất cả cho vào tô, cho phần topping lên trên, rắc thêm rau cần cho thơm.Chan phần nước sốt vào, cho thêm tiêu vào để tăng thêm hương vị. Trộn đều tất cả lên, có thể cho thêm hỗn hợp sốt cho vừa miệng. Dùng kèm với chén nước hầm xương, rắc ít hành lá và tiêu, thêm dĩa rau xà lách, giá, rau cần...');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0158', N'Mì ý sốt cua', '0', N'https://image.cooky.vn/recipe/g6/53271/s640/51eb167d-94bf-4f37-9ad2-ecbb8c4b0d60.jpeg', N'
Phần sốt cà chua: Đầu tiên, cắt cà chua bỏ hạt, thái hạt lựu. Cho 1 muỗng canh dầu o-liu vào chảo phi thơm 1 muỗng canh tỏi băm. Cho phần cà chua cắt hạt lựu vào, nêm thêm 1/2 muỗng cà phê muối, 1 muỗng cà phê tiêu. Xào cho chín nhừ.
Cho hỗn hợp cà chua vào máy xay, xay nhuyễn. Lược qua ray, lấy phần hỗn hợp mịn, bỏ phần bả. Tiếp theo, cho 3 muỗng canh tương cà chua vào và khuấy đều.Luộc mì: Cho 1 muỗng cà phê muối vào nồi nước đang sôi, thả 200gr mì Ý vào luộc trong vòng 8 phút. Vớt ra, thêm vào 1 muỗng canh dầu o-liu và trộn đều.Sốt cua:Phi thơm 2 muỗng canh tỏi băm với dầu o-liu. Trút 2 muỗng canh gạch cua vào xào nhanh, sau đó cho thêm 200ml nước luộc cua vào cho sôi. Cho phần sốt cà chua vào khuấy đều tay. Thêm 200ml kem whipping vào khuấy đều hỗn hợp cho tới khi sốt hơi sệt lại. Cho vào 1 muỗng canh phô mai rắc vào và tắt bếp.Trút phần mì Ý đã luộc vào và trộn đều cho phần sốt thấm đều từng sợi mì. Trình bày mì ra dĩa, cho phần thịt cua đã xào săn với dầu o-liu lên trên. Thêm 1 muỗng Ricotta lên chóp mì. Trang trí thêm mai cua, rắc thêm vào lá ngò tây.
Vậy là đã hoàn tất món Mì Ý Cua chuẩn vị nhà hàng rồi. Chúc các bạn thành công!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0159', N'Cua biển rang me', '0', N'https://image.cooky.vn/recipe/g2/14057/s640/recipe14057-636192358681814071.jpg', N'Cua mua về rửa sạch, dùng dao có mũi nhọn đâm vào dưới yếm cua để cua ngừng hoạt động. Dùng kéo tách mai, rồi cắt thân cua ra làm 4. Ướp gia vị: 1 muỗng cà phê hạt nêm, 1 muỗng cà phê tiêu, 1 muỗng cà phê bột ngọt, 1/2 muỗng cà phê muối, 10gr hành tím băm, 10gr tỏi băm.
Cua sau khi ướp, để khoảng 5 phút cho thấm gia vị. Nhúng cua vào bột chiên giòn rồi bỏ vào chảo dầu nóng chiên, vớt ra cho vào dĩa lót giấy thấm dầu.
Phi hành tím, tỏi, sả, gừng băm cho thơm rồi thêm 200ml nước sôi, me vào nấu chung. Vớt hột và xác me. Nêm 5 muỗng canh đường, 1 muỗng cà phê muối, 1 muỗng cà phê bột ngọt, 1 muỗng cà phê nước mắm, nấu sôi và cho thêm ớt băm tùy khẩu vị. Hòa tan 15gr bột bắp với nước rồi cho vào chung với sốt me, khuấy đều để tạo độ sệt cho sốt.Cho cua vào, đảo đều cho sốt phủ vào cua. Để cho sốt sôi lại thì tắt bếp. Gắp cua ra dĩa, trang trí kèm với rau răm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0160', N'Cua Rang Ớt Kiểu Singapore', '0', N'https://image.cooky.vn/recipe/g1/5888/s640/recipe5888-635693540853221114.jpg', N'
Rửa sạch cua, sau đó bóc mai ra rồi cắt cua thành bốn phần.Cho bột bắp vào chén, thêm nước vừa đủ hòa tan bột bắp. Hành lá và ngò rí rửa sạch, cắt nhỏ.Cho nồi lên bếp, thêm 2 muỗng cà phê dầu, đổ gừng băm, tỏi băm, ớt băm vào xào thơm. Sau đó cho chén bột bắp hòa tan vào.Cho thêm sốt cà chua, ớt bột vào đun sôi trong 5 phút cho nước sốt cay hơi sệt sệt. Nêm nếm với đường, muối và tiêu vào cùng.
Lấy một cái chảo, cho 1 muỗng dầu ăn vào, đổ cua đã rửa sạch lên chảo rang vàng với hành lá. Nêm nếm thêm với nước mắm.Sau khi cua chín săn lại cho phần nước sốt cay vào chảo đảo nhanh cùng trứng với cua sao cho cua thấm đều sốt.
Ăn cùng bánh bao chiên, bánh mì, cơm hay mì đều ngon cả đấy!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0161', N'Tôm rim tỏi', '0', N'https://image.cooky.vn/recipe/g2/17005/s640/recipe17005-635987659563597275.jpg', N'
Để làm tôm rim tỏi trước tiên cần làm sạch tôm tươi, cắt bỏ râu, đuôi tôm. Sau đó, ướp tôm tươi với 10gr bột nêm, 25gr đường trắng, 1/2 muỗng cà phê bột ngọt, 1/2 muỗng cà phê muối khoảng 15 phút cho ngấm gia vị.
Bóc vỏ và băm nhỏ tỏi. Rửa sạch ớt, cắt nhỏ rồi cho cả 2 vào chén.
Cách làm tôm rim tỏi: Phi thơm tỏi, ớt với 15ml dầu ăn trong chảo. Cho tôm tươi vào, đảo đều 1 phút. Cho tiếp 25ml nước mắm vào, rim nhỏ lửa khoảng 15 phút cho thịt tôm rim ngấm đều gia vị. Tắt bếp, đảo đều.Cho tôm rim tỏi ra dĩa, ăn cùng cơm trắng rất tuyệt vời. Với cách làm tôm rim tỏi đơn giản sẽ có được thịt tôm rim mềm, ngấm vị mặn mặn, cay nhẹ, rất lôi cuốn. Đặc biệt, với món tôm rim tỏi này rất thích hợp cho những bữa cơm ngày mưa, giúp cả nhà ăn ngon miệng và ăn nhiều cơm hơn nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0162', N'Tôm chiên sốt trứng muối', '0', N'https://image.cooky.vn/recipe/g2/17792/s640/recipe17792-636063352961149959.jpg', N'
Rửa sạch tôm tươi, bóc vỏ, giữ lại đuôi cho đẹp mắt. Dùng dao tách lấy chỉ đen. Sau đó cho tôm vào tô, ướp 1/2 muỗng cà phê muối, 1 muỗng cà phê đường, 1/4 muỗng cà phê tiêu. Trộn đều để khoảng 10 phút cho tôm thấm gia vị.
Tách lấy lòng đỏ trứng muối, đem hấp chín. Sau đó dùng nĩa dằm nhuyễn trứng vịt muối.
Đập 1 quả trứng gà vào chén, đánh tan. Bột chiên giòn cũng cho vào chén riêng. Nhúng lần lượt tôm vừa ướp vào chén trứng gà đánh tan rồi lăn qua bột chiên giòn. Làm tương tự đến hết tôm.Bắc chảo lên bếp cho dầu vào đợi nóng thì thả tôm vừa lăn vào chiên vàng giòn đều 2 mặt. Sau đó vớt tôm ra giấy thấm bớt dầu.Cách làm tôm chiên trứng muối: Dùng 1 cái chảo khác, cho 20gr bơ vào đợi bơ tan chảy thì cho ớt cắt nhỏ vào. Tiếp theo cho trứng muối đã nghiền nhuyễn ở trên vào cùng. Xào trứng muối tan đều thì cho thêm 20ml nước lọc vào xào đều. Cuối cùng là cho tôm chiên giòn vào sốt trứng muối. Đảo đều cho tôm trứng muối quyện vào nhau, trứng muối áo đều vào tôm, tắt bếp.Cho tôm chiên sốt trứng muối ra đĩa, làm món mặn ăn với cơm thật tuyệt đấy. Đặc biệt, để tăng thêm hương vị cho món tôm chiên trứng muối thì bạn có thể chuẩn bị thêm các loại nước chấm ngon như: nước sốt me, nước sốt chua cay mặn ngọt, ...');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0163', N'Tôm cuốn khoai tây', '0', N'https://image.cooky.vn/recipe/g4/35509/s640/cooky-recipe-cover-r35509.jpg', N'Bóc vỏ 300gr tôm tươi, bỏ đầu, giữ lại đuôi tôm, để tôm cuộn khoai tây chiên lên thì đuôi tôm sẽ xòe ra trông đẹp mắt hơn. Xẻ phần lưng để lấy chỉ tôm, khía phần trong của tôm để khi chiên tôm không bị cong lại. Ướp tôm với một ít muối và tiêu.
Chọn củ khoai tây lớn, rửa sạch rồi gọt vỏ, bổ làm đôi. Dùng dao bào lấy những lát khoai tay tròn mỏng và to. Tiếp đến bào từ viền ngoài của lát khoai tây hướng vào phía trong để tạo thành sợi dài. Ngâm ngay sợi khoai tây vào tô nước muối để sợi khoai mềm và không bị thâm.Luộc phần khoai thừa còn lại với một chút muối trong khoảng 20 -25 phút đến khi khoai nhừ. Khoai chín để nguội một xíu rồi nghiền khoai thành hỗn hợp mịn. Trộn khoảng 250gr khoai nghiền với 50gr bột bắp và nhào kỹ bằng tay thành cục bột to mịn.Cách làm tôm cuộn khoai tây: Vo bột khoai tây thành những cục tròn nhỏ khoảng 20gr rồi dàn mỏng ra và cuốn tôm đã ướp vào giữa, dùng tay miết để khoai nghiền ôm sát tôm, chỉ chừa lại phần đuôi để khi chiên xòe ra đẹp. Sợi khoai tây sau khi ngâm nước muối lấy ra để ráo, thấm khô và lấy khoảng 50gr bột bắp rắc đều lên từ từ để sợi khoai được áo bột và có độ kết dính. Sau đó dùng từng sợi khoai cuốn vào phần tôm vừa bọc bằng khoai nghiền.Tôm cuộn khoai tây chiên: Bắc chảo nóng và đổ vào khoảng 500ml dầu để chiên tôm, khi chiên để lửa vừa để phần tôm bên trong được chín đều. Chiên đến khi vỏ khoai tây bên ngoài vàng đều và tôm bắt đầu nổi lên trên dầu thì vớt tôm ra.Tôm cuộn khoai tây chiên là một món ăn thu hút chúng ta bởi vẻ đẹp bên ngoài lẫn hình thức bên trong. Cắn thử một miếng tôm cuộn khoai tây chiên giòn rụm bên ngoài, mềm ngọt bên trong, thật tuyệt vời. Tôm chiên khoai tây thực sự là một món ăn khoái khẩu cho cả trẻ em và người lớn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0164', N'Há Cảo Nhân Tôm Thịt', '0', N'https://image.cooky.vn/recipe/g1/1952/s640/recipe1952-635706473346794340.jpg', N'Cách làm há cảo nhân tôm thịt: Bóc vỏ tôm, bỏ đầu, lấy chỉ đen rồi băm nhỏ. Củ năng gọt vỏ, rửa sạch rồi băm nhỏ. Cho củ năng, tôm, thịt heo vào tô, ướp cùng 1 muỗng canh hạt nêm và 1/2 muỗng cà phê đường, trộn đều.Cách làm vỏ há cảo: Lấy một tô to, lau khô. Cho 100gr bột năng và 100gr bột gạo vào, trộn đều. Cho 160ml nước sôi vào bột, khuấy đều, rồi nhào cho đến khi bột dẻo và mịn. Vậy là phần vỏ há cảo nhân tôm thịt cơ bản là xong rồi đó.Cách làm há cảo: Ngắt một phần bột làm há cảo ra, cán mỏng, dùng khuôn cắt bánh (hoặc dùng ly) cắt bột há cảo thành những hình tròn. Xúc một muỗng cà phê nhân tôm thịt cho vào giữa miếng bột há cảo. Gấp đôi miếng bột, gói bánh lại. Tiếp tục cán bột và gói cho hết nhân.Xếp há cảo nhân tôm thịt lên xửng. Đun sôi, há cảo tôm thịt hấp khoảng 10 phút là chín.Gắp há cảo nhân tôm thịt hấp chín ra đĩa, trang trí thêm vài cọng ngò hay rau răm để tăng hương vị nè. Há cảo nhân tôm thịt nên được ăn nóng, chấm với nước tương ngọt ngọt, cay cay là tuyệt vời nhất luôn đó. Thử tài nấu nướng với cách làm há cảo tôm thịt thơm ngon, cực hấp dẫn này ngay nào. Giúp bạn dễ dàng thành công ngay lần đầu đấy.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0165', N'Tôm Sống Sốt Thái', '0', N'https://image.cooky.vn/recipe/g3/29996/s640/cooky-recipe-cover-r29996.JPG', N'
Làm sốt Thái: Cho hành tím, tỏi, sả, gừng thái lát vào cối, sau đó cho thêm 6 quả ớt sừng, 4 muỗng canh đường. Giã nhuyễn tất cả cho đến khi thành một hỗn hợp đặc sánh. Cho hỗn hợp ra dĩa, thêm 4 muỗng canh nước mắm, 4 muỗng canh tương ớt, vắt 4 quả chanh lấy nước cốt, 2 muỗng canh ớt bột, trộn đều.Rửa sạch tôm, chia đôi phần đầu tôm và thân tôm. Đầu tôm trộn với 2 muỗng canh bột bắp, cho vào chảo dầu chiên vàng, sau đó vớt ra để ráo dầu. Thân tôm rửa sạch, bóc vỏ, rút bỏ chỉ đen, chẻ lưng, xếp ra dĩa để sẵn.Vắt nước cốt 1 quả chanh, cho 1/4 muỗng cà phê mù tạt vào trộn đều. Ngâm tôm 1 phút để nước chanh và mù tạt làm tái tôm và thịt tôm không bị tanh, sau 1 phút gắp tôm ra để riêng.Xếp tôm sống sốt Thái ra dĩa, chan nước sốt Thái lên tôm. Phần đầu tôm không bỏ đi mà đem chiên với bột bắp giòn giòn, vừa béo vừa bùi rất thú vị. Cho thêm vài lá rau thơm xắt nhuyễn và thưởng thức gỏi tôm sống kiểu Thái ngay thôi. Khi ăn tôm sốt Thái, bạn ăn sống trực tiếp và có thể ăn kèm xoài xanh bào nhuyễn. Nếu thích vị sốt Thái cay nồng hơn nữa, bạn có thể chấm thêm với mù tạt.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0166', N'Đậu hũ trứng hấp tôm', '0', N'https://image.cooky.vn/recipe/g5/40734/s640/cooky-recipe-cover-r40734.jpg', N'Đậu hũ cắt khoanh vừa ăn. Ở đây, 2 thanh đậu hũ cắt thành 8 khoanh tròn. Cà rốt cũng gọt vỏ, thái thành 8 khoanh tròn mỏng, nên lựa củ cà rốt có chu vi to hơn khoanh đậu hũ một chút. Kế đến đặt đậu hũ lên trên miếng cà rốt, khoét một lỗ tròn ở giữa miếng đậu hũ làm nơi để nhân tôm. Phần đậu hũ đã khoét không bỏ đi mà giữ lại để trộn vào nhân luôn.Tôm rửa sạch, bóc vỏ, bỏ đầu, rút chỉ đen, giữ lại phần đuôi tôm để bày thành phẩm cho đẹp mắt. Trộn 200gr tôm băm nhuyễn với 10gr đậu hũ còn thừa, ướp gia vị với 1 muỗng cà phê hành tím băm, 1 muỗng cà phê hạt nêm, 1 muỗng cà phê đường, 1 muỗng cà phê nước tương, 1 muỗng canh hành lá và 1 muỗng cà phê tiêu.Phần nhân tôm sau khi ướp gia vị cho vào giữa miếng đậu hũ, đặt đuôi tôm xòe ra để trang trí, sau đó rắc bột ớt lên trên cùng cho món ăn thêm màu bắt mắt.Cho đậu hũ vào nồi hấp và hấp trong 10 phút. Trong thời gian chờ hấp chúng ta sẽ làm nước sốt. Bắc chảo nóng, cho hành tím vào phi thơm, sau đó cho vào 50ml nước tương, 1 muỗng canh dầu hào, 1 muỗng canh tương ớt, 1 muỗng cà phê đường và 1 muỗng cà phê tiêu. Khuấy đều đến khi sôi rồi cho vào 50ml nước bột năng đến khi sốt sệt lại thì cho vào 1 muỗng cà phê mè rang rồi tắt bếp.Đậu hũ hấp chín bày ra đĩa, rưới phần sốt xung quanh để thêm phần hấp dẫn. Đậu hũ trứng hấp tôm dùng nóng sẽ rất ngon, có thể ăn với cơm hoặc cho bé ăn vã cũng đủ cung cấp dinh dưỡng rồi. Món này vừa đơn giản lại vừa đẹp mắt, bạn hãy thử thực hành xem sao nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0167', N'Mì Ý Tôm Sốt Kem Phô Mai', '0', N'https://image.cooky.vn/recipe/g2/18964/s640/recipe18964-636232691114308764.jpg', N'Trước khi làm mì Ý sốt kem phô mai đem: Bóc vỏ tôm tươi, bỏ chỉ lưng rồi đem ướp tôm với muối tiêu, để khoảng 5 phút cho thịt tôm thấm vị. Bào sợi phô mai cheddar. Bóc vỏ tỏi, băm nhỏ.Luộc sợi mì Ý đúng cách: Nấu nước sôi, thêm ít muối, cho mì Ý vào luộc. Để kiểm tra độ chín vừa đủ của mì thì bạn dùng đũa hoặc đồ gắp mì lên, nhìn thấy mì rủ xuống thành hai đường song song nhau là được nhé! Vớt sợi mì Ý đã luộc chín ra.

Cách làm mì Ý sốt kem phô mai ngon chuẩn: Đun tan chảy bơ trên chảo, thêm tỏi băm vào phi thơm rồi cho tôm vào xào. Khi tôm xào chín cong lại thì thêm sữa tươi và kem whipping. Nấu sốt kem sôi thì cho 2 loại phô mai parmesan và cheddar vào, nấu chảy phô mai. Nêm nếm sốt kem phô mai với 1 ít muối tiêu cho vừa ăn. Cuối cùng cho mì Ý vào đảo đều. Thấy sợi mì Ý sốt kem phô mai bám sốt thì tắt bếp.Cho mì Ý sốt kem phô mai ra dĩa, trang trí với lá parsley băm nhuyễn, rắc thêm một ít tiêu và phô mai bột. Từng sợi mì Ý sốt kem dai ngon phủ đầy sốt kem béo ngậy và những con tôm chắc thịt sẽ là món ăn hấp dẫn cho những tín đồ thích béo và mê mì Ý nhé! Có cách làm mì Ý sốt kem phô mai này rồi, bữa ""hẹn hò"" chắc chắn thành công luôn đó.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0168', N'Gỏi xoài tôm khô chua ngọt', '0', N'https://image.cooky.vn/recipe/g1/8848/s640/recipe8848-636222574436635759.jpg', N'
Tôm khô rửa sạch rồi ngâm với nước ấm cho nở, vớt ra để ráo nước. Xoài xanh và cà rốt gọt vỏ, bào sợi. Ớt sừng tách bỏ hạt, cắt sợi. Rau húng quế và húng lủi rửa sạch, cắt nhỏ. Hành tây cắt mỏng, ngâm trong nước đá cho bớt hăng.Pha nước mắm trộn theo định lượng: 2 muỗng canh nước mắm, 2.5 muỗng canh đường, 1 muỗng cà phê bột ngọt. Khuấy đều cho tan đường và bột ngọt (có thể bắc lên bếp nấu cho nhanh). Sau khi có nước mắm đặc, bạn cho thêm vào 1/2 muỗng canh tỏi băm, cắt vào 2 trái ớt rồi khuấy đều là có được nước mắm trộn gỏi đặc biệt thơm ngon rồi.Cho tất cả các nguyên liệu phần gỏi đã chuẩn bị ở bước 1 vào tô, thêm nước mắm rồi trộn đều. Nặn vào gỏi nước cốt của 2 trái tắc, món gỏi xoài sẽ mang mùi thơm đặc biệt và kích thích vị giác hơn. Tiếp theo bạn cho đậu phộng rang đập giập, hành phi rồi bày ra dĩa là có thể thưởng thức rồi.Món gỏi được trộn từ xoài xanh chua chua điểm xuyết những con tôm khô dai dai đậm đà chính là món ăn chống ngấy hữu hiệu cho những bữa tiệc nhiều dầu mỡ thịt cá. Làm đồ nhắm cho chồng nhăm nhi với bia, làm món ăn chơi hoặc là ăn kèm với cơm đều là lựa chọn thích hợp dành cho món Gỏi xoài tôm khô chua ngọt này.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0169', N'Cơm Chiên Tôm Cay', '0', N'https://image.cooky.vn/recipe/g3/28248/s640/recipe-cover-r28248.jpg', N'Nấu nước sốt cay gồm 30ml nước tương, 50ml nước lọc, 40gr đường, 30gr tương cà, 30gr tương ớt, 50gr tương ớt Hàn Quốc, 5gr ớt bột Hàn Quốc, 5gr tỏi băm vào rồi khuấy đều cho sốt hoà quyện.Tiếp theo cho 200gr tôm đã bóc vỏ vào chảo, trở đều cho tôm thấm sốt. Rim thêm 5 phút cho tôm chín thì tắt bếp.
Trên một chiếc chảo khác cho vào 2 muỗng canh dầu ăn, làm nóng dầu rồi cho 20gr hành tây cắt hạt lựu, 10gr tỏi thái lát, 10gr ớt đỏ cắt nhỏ vào phi cho dậy mùi. Khi hành tây chuyển trong bạn cho 400gr cơm nguội, 50gr kim chi cắt nhỏ và 20gr hành lá vào chảo. Rang đều cơm và các nguyên liệu trong chảo cho nóng lên và tơi ra.Khi cơm đã tơi đều chúng ta dồn cơm về chính giữa, chừa một khoảng trống bên ngoài chảo. Đánh tan đều 2 quả trứng gà, đổ vào khoảng trống đã chừa xung quanh cơm. Gắp tôm đã rim lên trên cơm và thưởng thức thôi.Vậy là chỉ với vài bước đơn giản là bạn đã có được một món cơm chiên lạ miệng và cực kì hấp dẫn rồi.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0170', N'Gỏi Măng Trộn Tôm Thịt', '0', N'https://image.cooky.vn/recipe/g6/50591/s640/cooky-recipe-cover-r50591.jpg', N'Với phần măng ngâm, các bạn mua về, xả nhiều lần với nước, sau đó đem luộc măng với 1 ít muối trong 10 phút (1 dạng chần măng cho chín), sau đó đem đi rửa sạch lại thêm 2 lần nước nữa, rồi vắt ráo nước.Phần tôm và phần thịt luộc với 1 ít muối để đậm đà. Có thể luộc chung với nhau nếu các bạn muốn tiết kiệm thời gian. Sau đó, tôm lột sạch vỏ, lấy chỉ lưng, chừa đuôi, thịt thì cắt thành những lát nhỏ vừa ăn, mình chuộng kiểu cắt thanh dài và thành khối vuông để trông đẹp mắt hơn.Cắt nhỏ húng lũi, rau răm theo kiểu thái rối, phần hành lá cắt khúc (có thể bỏ qua nếu các bạn không chịu được mùi hành sống) để chuẩn bị cho phần trộn gỏi. Phần nước mắm trộn gỏi mình làm theo công thức 2:2 - tức là khuấy tan 2 muỗng canh nước mắm với 2 muỗng canh đường đến khi tan, sau đó cho thêm tỏi, ớt băm vào là hoàn thành rồi.Rưới nước mắm, rắc các loại rau đã chuẩn bị ở trên vào trộn đều cùng với 1 muỗng canh nước cốt chanh là đã có món gỏi măng trộn vừa lạ vừa quen rồi.Sự kết hợp hơi cũ từ tôm, thịt với sự kết hợp mới từ măng ngâm đã tạo nên 1 món gỏi măng trộn tôm thịt vô cùng lạ miệng và hấp dẫn. Nhớ ăn kèm cùng bánh phồng nha. Thanh, ngọt, tươi...là những cung bậc cảm xúc khi bạn thưởng thức món này đó. Làm ngay thôi!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0171', N'Nghêu hấp Thái', '0', N'https://image.cooky.vn/recipe/g3/20471/s640/recipe20471-636349628329727776.jpg', N'
Để làm nghêu hấp thái trước hết đem ngâm nghêu tươi sống với nước lạnh, thêm vài lát ớt, ngâm nghêu khoảng 30 phút để nghêu nhả bớt cát rồi rửa sạch. Cho nghêu vào nồi cùng với 50ml nước rồi đậy nắp, đun to lửa. Nghêu hấp 5 phút, khi thấy nghêu tách vỏ thì tắt bếp, gắp nghêu ra để riêng.Cách làm nghêu hấp Thái: Đem lọc sạch cặn và cát của nước hấp nghêu nếu có, sau đó cho thêm 600ml nước, 15gr riềng cắt lát đập dập, 30gr sả cắt khúc đập dập, 10gr ớt và 5gr lá chanh. Bật bếp đun sôi. Tiếp theo cho các loại gia vị: 70gr đường, 30gr nước mắm, 100gr nước cốt me, 100gr tương ớt và 50gr ớt sa tế. Khuấy đều rồi nấu thêm 5 phút thì tắt bếp. Ngoài ra, vị cay và độ chua của nghêu hấp Thái sẽ tùy thuộc vào sở thích của bạn, bạn có thể tự điều chỉnh cho phù hợp với bản thân mình.Vắt thêm 30ml nước cốt chanh vào nồi nghêu hấp Thái rồi khuấy đều là hoàn tất. Khi dùng nghêu hấp Thái: Gắp một con nghêu, dùng vỏ nghêu + thịt nghêu múc lấy nước súp chua ngọt cay nồng và dùng nóng.Cách làm nghêu hấp Thái với hương vị chua chua, cay thơm của sả, của lá chanh ngon khó cưỡng, mang hương vị đặc trưng của ẩm thực xứ sở Chùa Vàng. Nồi nghêu hấp Thái nóng hổi, tỏa hương thơm phức, rất thích hợp dùng cùng cơm hoặc bún trong những ngày trời mưa hoặc thời tiết trở lạnh. Ngoài ra, nghêu hấp Thái còn có thể là mồi nhậu ngon cho các đấng mày râu nữa nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0172', N'Gỏi nghêu bắp chuối', '0', N'https://image.cooky.vn/recipe/g5/42385/s640/cooky-recipe-cover-r42385.jpg', N'
500gr nghêu mua về rửa sạch với nước muối pha loãng cho sạch cát. Luộc nghêu với vài lát sả và gừng cho thơm rồi tách lấy phần thịt nghêu. Bắp chuối rửa sạch bên ngoài, dùng dao bào mỏng theo chiều ngang, ngâm bắp chuối trong nước muối, vắt thêm một trái chanh để hoa chuối không bị đen. Ngâm 10 phút rồi rửa sạch vớt ra để ráo nước. Cà rốt gọt vỏ, thái sợi. Rau răm thái sợi.Làm nước mắm trộn gỏi: Bắc chảo nóng, cho 50ml nước mắm và 50gr đường vào đun đến khi sôi. Tắt bếp rồi để nguội. Trộn vào phần nước mắm đã pha 1 muỗng cà phê tỏi băm, 1 muỗng cà phê ớt băm và vắt nước cốt chanh là có được nước mắm trộn gỏi chua ngọt hấp dẫn rồi.Cho vào tô lớn phần thịt nghêu, bắp chuối bào, cà rốt thái sợi và rau răm rồi rưới phần nước mắm vào trộn đều. Độ chua ngọt của gỏi bạn có thể gia giảm tùy khẩu vị gia đình bạn.
Gỏi nghêu bắp chuối ăn kèm bánh phồng tôm hay bánh tráng cũng đều rất ngon, khi ăn bạn rắc chút đậu phộng hay hành phi cho thơm nhé. Đây thực sự là một món khai vị tuyệt vời, mang đầy đủ hương vị chua - cay - ngọt dân dã. Gắp miếng gỏi lẫn đầy thịt nghêu, cắn một miếng là đủ thấy thèm rồi. Thử làm ngay món gỏi hấp dẫn này cho bữa ăn của gia đình nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0173', N'Canh nghêu nấu khế', '0', N'https://image.cooky.vn/recipe/g3/28410/s640/recipe-cover-r28410.JPG', N'Cà chua và khế bạn mua về rửa thật sạch. Sau đó cắt khúc 150gr khế, 160gr cà chua thành hình múi cau.
Phi thơm 15gr hành tím, 15gr tỏi, 10gr sả, 80gr cà trong 1 muỗng canh dầu ăn, phi đến khi cà chua ra màu thì cho 600ml nước lọc vào. Đợi gần sôi thì thả 500gr nghêu đã rửa sạch vào nhé.
Khi nghêu đã bắt đầu gần chín bạn tiếp tục cho 80gr cà chua còn lại vào, cùng 150gr khế, 1 muỗng cà phê muối, 1 muỗng cà phê bột nêm, 1 muỗng cà phê đường vào nấu khoảng 10 phút rồi tắt bếp là xong.Múc canh nghêu còn nóng ra thố, nhanh tay thêm rau thì là khi canh còn nóng, thêm vào vài lát ớt là có thể thưởng thức. Canh nghêu với vị chua của khế, ngọt tự nhiên của nghêu, mùi thơm của rau thì là chắc chắn sẽ giúp bạn có bữa ăn ngon miệng với gia đình mình, ăn với cơm hoặc với bún đều ngon.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0174', N'Nghêu xào cay', '0', N'https://image.cooky.vn/recipe/g4/34331/s640/cooky-recipe-cover-r34331.jpg', N'Sơ chế nghêu: Nghêu mua về rửa sạch, ngâm nước ớt 3-4 tiếng. Nấu sôi nước cùng sả cắt khúc 2 cây, ớt sừng 3 trái, cho 1kg nghêu vào luộc sơ đến khi nghêu vừa hé miệng thì vớt ra để ráo. Không luộc lâu vì khi xào nghêu sẽ teo nhỏ thêm.Hỗn hợp ớt xay: Cho vào cối xay gồm 5 trái ớt sừng, 5gr ớt bột, 10gr sa tế, 15gr tỏi, 20gr bơ. Bật nút xay đến khi hỗn hợp mịn nhuyễn.Sốt cay: Đun nóng chảo với 2 muỗng canh dầu ăn, cho hỗn hợp ớt xay vào xào đến khi thơm, thêm gia vị gồm 20gr tương ớt, 20gr tương cà, 20gr nước tương, 2 gr muối và 15gr đường. Khi sốt cay sôi thì cho nghêu vào xào đến khi sốt bám đều nghêu thì tắt bếp.Cách làm món nghêu xào cay rất đơn giản nhưng mùi vị cay nồng vô cùng hấp dẫn, từng con nghêu được thấm đẫm gia vị cay cay mặn mặn ngọt ngọt, khi ăn nhớ chấm thêm nước sốt khi xào tiết ra, không cần chấm thêm một gia vị nào nữa cả.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0175', N'Chả giò nghêu khoai môn', '0', N'https://image.cooky.vn/recipe/g5/45657/s640/cooky-recipe-636868719356679612.jpg', N'Đem 1kg nghêu rửa sơ qua nước lạnh sau đó đem ngâm với nước muối loãng, thêm vài quả ớt cắt cùng vài đồ dùng inox của gia đình. Ngâm như vậy ít nhất 20 phút để nghêu nhả bớt cát bên trong. Sau đó đem rửa sạch, để ráo nước.
Khoai môn và cà rốt mỗi loại đem bào vỏ, rửa sạch, sau đó bào thành những sợi dài nhỏ, mỗi loại lấy 100gr.Cho nghêu vào nồi, thêm 100ml nước rồi đun sôi. Đến khi thấy nghêu mở nắp thì gắp ngay ra ngoài, tránh để lâu trong nước sôi sẽ làm thịt nghêu bị teo mất đi sự ngon miệng. Nước luộc nghêu lọc qua lưới để bỏ phần cát còn sót rồi giữ lại để làm nước chấm chả giò. Đợi nghêu nguội bớt thì bóc lấy thịt nghêu và bỏ vỏ.Trộn nhân chả giò gồm thịt nghêu, cà rốt, khoai môn, 100gr giò sống, 100gr thịt băm, 15gr hành tím thái lát, 15gr hành lá thái nhỏ, 1 muỗng canh nước mắm, 1 muỗng canh đường, 1/2 muỗng canh tiêu.Chuẩn bị khoảng 25 tờ bánh tráng bía. Cho 1 lượng nhân vừa đủ vào trong bánh tráng rồi gói 2 bên mép lại, sau đó cuộn tròn cuốn chả. Làm lần lượt như vậy cho đến hết số nhân và bánh tráng. Khi múc nhân vào, nhớ cân bằng lượng nghêu vào từng cuốn chả để thưởng thức trọn vẹn hương vị nhé!Làm nóng dầu ăn, hạ lửa vừa cho nhiệt độ ổn định, cho chả giò vào chiên lần 1 hơi vàng nhẹ các mặt rồi gắp ra để nguội. Sau đó làm nóng dầu lần 2, để lửa lớn, cho chả giò vào chiên vàng giòn rồi gắp ra để ráo dầu. Vậy là hoàn tất phần chả giò nghêu rồi đấy.Pha nước mắm chấm chả giò: sử dụng nước luộc nghêu đã giữ lại lúc nãy cho vào chén 3 muỗng canh, thêm 3 muỗng canh đường rồi khuấy cho tan đường. Tiếp theo cho 2 muỗng canh nước cốt chanh và 2 muỗng canh nước mắm vào khuấy đều, nêm nếm lại hương vị cho vừa miệng. 15gr tỏi và 15gr ớt băm nhuyễn, cho tỏi ớt vào chén nước mắm. Cuối cùng cho vào 2 muỗng canh mỡ hành (làm từ 15gr hành lá thái nhuyễn và 2 muỗng canh dầu ăn đun sôi), khuấy đều là hoàn tất.Những cuốn chả giò giòn tan với phần nhân dai dai bùi bùi thơm ngọt tự nhiên, chấm cùng nước mắm tỏi ớt chua cay nhẹ làm nổi bật lên hương vị cuộn chả thêm rất nhiều. Nếu còn đang băn khoăn không biết làm món gì để đổi mới thực đơn tiệc cuối tuần này thì hãy tham khảo món Chả giò nghêu khoai môn thú vị này bạn nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0176', N'Cơm nghêu và thịt bằm xào cay', '0', N'https://image.cooky.vn/recipe/g5/48235/s640/cooky-recipe-637001730307379646.gif', N'Để nghêu nhả hết cát, các bạn ngâm nghêu với muối và ớt trong khoảng 30 phút trở lên rồi rửa sạch lại với nước. Bắc nước sôi lên, cho muối vào nước luộc và luộc nghêu. Khi nghêu mở nắp thì vớt nghêu ra để thịt nghêu được căng, không bị teo. Sau đó tách vỏ lấy phần thịt nghêu, giữ lại khoảng 1 cup nước (khoảng 250ml) nghêu luộc.Sau khi tách lấy thịt, ướp nghêu với hành tím, tỏi, sả băm, phần gia vị ướp gồm có sa tế tôm và cho xốt nêm thịt heo Knorr vào sau đó trộn đều. Ướp nghêu trong vòng 15 phút.Phi thơm tỏi, hành tím và sả băm, đến khi hỗn hợp vàng đều và dậy mùi thì các bạn cho phần thịt nghêu đã ướp vào, cho thêm sa tế vào, đảo đều cho thấm gia vị.Sau khi ướp nghêu các bạn ướp thịt với hành tím, tỏi và sả băm, xốt nêm Knorr và 1 lượng gấp 2.5 lần sa tế tôm trong bước ướp nghêu. Bắc chảo lên xào tương tự như xào nghêu, tuy nhiên ở đây, mình cho thêm ớt băm nhuyễn để phần cơm đậm mùi hơn.Phần thịt và phần nghêu kkhi nếm sẽ nhạt vì mình làm thêm sauce nhé các bạn. Phi thơm sả, hành, tỏi, rồi cho 2 muỗng canh xốt nêm thịt heo Knorr và 1.5 muỗng canh đường, cùng 1 cup nước nghêu vào, khuấy đến khi sôi lên và sệt lại.Cơm các bạn nấu chín như bình thường, sau đó cho ra tô, cho thịt bằm xào cay và nghêu xào cay lên mặt, sau đó rưới sauce lên là có thể chén ngay được rồi đấy nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0177', N'Cà ri nghêu', '0', N'https://image.cooky.vn/recipe/g2/18209/s640/recipe18209-636107448419797215.jpg', N'Tỏi, gừng băm cho ra chén để riêng. Trên một cái nồi (hoặc chảo sâu lòng) cho bơ vào đun chảy. Cho tỏi, gừng băm và đầu hành lá vào phi thơm. Sau đó, thêm hành tây cắt mỏng, ớt sừng cắt lát và 1/2 bột cà ri vào, đảo đều đến khi hành tây vừa trong thì cho nghêu vào xào.Khi nghêu vừa mở hé nắp thì đổ 100ml nước sôi. Nêm gia vị 1 muỗng cà phê nước mắm, 2 muỗng cà phê đường trắng, 1/2 bột cà ri còn lại và nước cốt dừa vào, đảo đều cho nghêu hé hết nắp, tắt bếp ngay.
Thành phẩm: Dùng chung với bánh mì, cơm nóng hoặc bún đều rất ngon. Trước khi ăn rắc thêm hành lá, ngò rí cắt nhỏ để món ăn thêm đẹp mắt.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0178', N'Canh chua rau nhút nấu nghêu', '0', N'https://image.cooky.vn/recipe/g1/2220/s640/recipe2220-635937460182428164.jpg', N'Nghêu rửa sạch, ngâm trong nước có thêm ớt cắt nhỏ để loại bỏ cặn, đất. Vớt ra để ráo. Rau nhút nhặt, rửa sạch, ngắt thành từng đoạn. Cà chua rửa sạch, cắt múi cau. Hanh ngò cắt nhỏ. Ớt trái cắt lát.Phi thơm tỏi băm với 1 muỗng canh dầu ăn, cho cà chua vào, xào khoảng 2 phút.Đổ 400ml nước và thêm 30ml cho nước cốt me. Nêm 1/2 muỗng cà phê muối, 1 muỗng cà phê hạt nêm, 1 muỗng canh đường trắng.Nước sôi, cho nghêu vào đợi sôi lại thì cho rau nhút vào, nấu sôi là được. Nêm 1 muỗng cà phê nước mắm cho vừa khẩu vị.Tắt bếp, múc canh ra tô, rắc ngò hành và ớt trái trang trí lên trên và ăn cùng với cơm nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0179', N'Cháo thịt nghêu', '0', N'https://image.cooky.vn/recipe/g1/1528/s640/recipe1528-635681738559802982.jpg', N'Gạo nếp vo sạch rồi ngâm nước qua đêm. Sau đó đổ ra rổ cho ráo nước.Nghêu ngâm vào nước lạnh khoảng 15 phút cho ra bớt sạn. Cho nghêu vào nồi luộc chín cùng với muối. Đến khi nghêu mở miệng thì tắt bếp.Vớt nghêu ra rổ, gỡ lấy phần thịt nghêu, ướp với nước mắm, 1/2 tiêu, 1 muỗng canh dầu ăn, để cho nghêu thấm gia vị. Nước luộc nghêu chắt lấy phần nước trong, lọc bỏ phần sạn ở đáy nồi.Nấu sôi nước nghêu, đổ gạo nếp vào, bật lửa lớn. Nước sôi thì để lửa nhỏ liu riu đến khi gạo nếp chín nhừ thành cháo. Thỉnh thoảng khuấy đều để tránh cháo bám vào đáy nồi bị cháy. Nêm hạt nêm, bột ngọt.Hành tím bóc vỏ, cắt lát mỏng. Cho 2 muỗng canh dầu ăn lên chảo, phi thơm hành tím. Trút hành ra chén. Cho thịt nghêu vào chảo đó, xào săn. Hành lá, rau răm rửa sạch, cắt nhỏ.Cháo chín múc ra chén, rắc hành lá, rau răm, hành phi, thêm thịt nghêu, rắc tiêu. Dùng nóng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0180', N'Mỳ Ý vị nghêu', '0', N'https://image.cooky.vn/recipe/g1/883/s640/recipe883-635539061008853750.jpg', N'Nghêu ngâm cho nhả hết cát. Rửa sạch vỏ qua nhiều lần nước. Rau mùi rửa sạch, cắt nhuyễn.Nấu nước sôi, cho mì vào trụng. Lấy tay bấm vào một cộng mì bất kỳ, nếu thấy mì mềm, vớt mì ra và cho vào ngay nước lạnh. Ngâm khoảng 2 phút vớt ra để trên rổ cho ráo nước.Cho dầu olive và bơ vào chảo rồi đun nóng ở lửa vừa. Khi dầu đã nóng và bơ tan chảy hết, bạn cho tỏi băm vào rồi phi trong khoảng 1’. Sau đó, thêm rượu trắng vào chảo.Cho nghêu vào chảo rồi nấu trong khoảng 5’. Đến khi nghêu há miệng như trong hình là được. Chú ý gắp bỏ những con nghêu không mở miệng ra nhé!Nêm nếm muối, bột ngọt vào. Rắc mùi tây vào cùng với nghêu. Nếu không thích mùi tây thì bạn có thể thay bằng húng quế cũng được.Nếu thích hương vị đậm, bạn có thể thêm một ít rượu vang nữa vào cùng rồi xóc đều lên cho nghêu ngấm.Cuối cùng, bạn gắp mì ra đĩa, cho nghêu lên trên, rồi chan phần nước sốt nghêu vào cùng là xong rồi.Món spaghetti nghêu ăn theo công thức này đảm bảo sẽ rất thơm và hấp dẫn cho xem!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0181', N'Gỏi Xoài Hàu', '0', N'https://image.cooky.vn/recipe/g5/49819/s640/cooky-recipe-cover-r49819.jpg', N'Xoài xanh lấy 3 trái rửa sạch và gọt vỏ, rồi bào thành các sợi dài. Khi bào xoài bạn cầm chắc tay để sợi xoài không bị đứt vụn. Tiếp đó, để làm sốt mắm ớt ngon bạn cho 10 trái ớt bỏ cuống, 20gr tỏi, 1/2 muỗng cà phê muối vào cối giã nhuyễn rồi cho thêm 1 muỗng cà phê nước cốt chanh, 2 muỗng cà phê đường nâu, 1 muỗng cà phê nước mắm dùng muỗng hòa tan. 100gr rau cần tàu nhặt rửa sạch để ráo, rồi thái nhỏ.Cho xoài đã thái sợi cùng 15 con hàu sống, thêm 20gr hành tím đã bóc vỏ, rau cần tàu, 1 muỗng cà phê ớt sa tế tôm và sốt mắm ớt vào chung một tô lớn nhẹ nhàng trộn đều tay. Chỉ nên trộn gỏi trước khi ăn khoảng 10-15 phút để gỏi không bị ra nước và xoài không bị nát.Món gỏi xoài hàu chua cay đã hoàn tất rồi, rất nhanh gọn phải không ạ? Đối với những bạn hảo hay không hảo vị chua cay có khi sẽ mê cách kết hợp hài hòa ở món gỏi xoài hàu này. Món gỏi xoài hàu rất thích hợp để dùng làm món khai vị trong các bữa tiệc, hoặc muốn thay đổi khẩu vị trong bữa ăn gia đình hằng ngày.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0182', N'Hàu nướng phô mai', '0', N'https://image.cooky.vn/recipe/g4/39389/s640/cooky-recipe-cover-r39389.JPG', N'Cách làm sốt phô mai nướng hàu: Hấp cách thủy 120gr phô mai cùng 120ml sữa tươi, 50gr sữa đặc, 50gr sốt mayonnaise. Dùng muỗng khuấy và trộn đều các nguyên liệu đến khi hỗn hợp min mượt.
Cho vào hỗn hợp phô mai 10ml nước cốt chanh. Trộn đều đến khi hỗn hợp phô mai nướng hàu hòa quyện với nhau.Cách làm hàu nướng phô mai: Rửa sơ nguyên liệu làm hàu nướng qua dưới vòi nước cho sạch cát. Đem hàu nướng trên bếp than, đổ sốt phô mai lên trên các miếng hàu nướng và tiếp tục nướng khoảng trong khoảng vài phút, đến khi thịt hàu nướng phô mai vừa chín là được.Cách làm hàu nướng phô mai rất nhanh, chỉ chưa đầy 30 phút. Món hàu nướng phô mai nên ăn khi còn nóng, lúc phô mai còn tan chảy sẽ ngon nhất. Từng con hàu nướng phô mai đơn giản với lớp phô mai béo ngậy, màu vàng óng ánh hấp dẫn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0183', N'Súp hàu trứng Bắc Thảo', '0', N'https://image.cooky.vn/recipe/g5/49941/s640/cooky-recipe-cover-r49941.jpg', N'Nấu nước dùng cho món súp hàu: Bạn bắc một nồi nước sôi, cho 400gr xương ống đã rửa sạch vào trụng để giúp nước dùng được thơm ngon hơn. Chờ đến khi nước sôi thì vớt xương ra, cho vào nồi cùng với 1L nước lọc. Đun lửa lớn đến khi nước sôi, bạn vớt hết bọt rồi hạ nhỏ lửa, nấu khoảng 30 phút lấy nước ngọt từ xương.Tiếp đó, bạn chuẩn bị các nguyên liệu: 100gr cà rốt cắt hạt lựu, 100gr nấm bào ngư xé sợi, 100gr đậu Hà Lan, 300gr hàu đã làm sạch, 20 quả trứng cút bóc vỏ. Rồi cho các nguyên liệu vừa chuẩn bị vào nồi nước dùng cùng 2 muỗng cà phê hạt nêm và 1 muỗng cà phê đường, sau đó dùng vá nhẹ nhàng khuấy đều.Pha loãng 100gr bột năng cùng 100ml nước, đổ từ từ bột năng vào nồi súp hàu nhẹ nhàng khuấy đều cho đến khi súp sệt lại. Nấu trên bếp 2 phút ở lửa vừa cho bột năng chín. Sau đó, bạn nhẹ tay vừa khuấy đều thành vòng vừa cho 1 quả trứng gà đánh tan vào, để tạo vân trứng giúp món súp hàu nhìn đẹp mắt hơn.Múc súp hàu ra tô, cho trứng bắc thảo và trứng cút lên mặt súp. Rắc tiêu, hành ngò và nêm thêm 1 ít nước tương tùy khẩu vị, vậy là bạn đã có một chén súp hàu trứng bắc thảo chất lượng không thua kém gì ngoài hàng quán rồi. Cách làm súp hàu trứng bắc thảo theo cách của bếp Cooky vừa ngon vừa bổ dưỡng, chắc chắn cả gia đình sẽ thích thú cho xem.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0184', N'Cháo Hàu Nấm Bào Ngư', '0', N'https://image.cooky.vn/recipe/g2/16598/s640/recipe16598-635919084211699949.jpg', N'Bạn mua hàu đã tách ruột, hàu lớn hay nhỏ đều được nhé. Cho hàu vào thau nước, rửa sơ nhầm để loại bỏ các mảnh vỏ còn sót lẫn trong thit hàu. Vớt hàu ra rổ cho ráo nước.Hành ngò cắt nhuyễn, tách riêng đầu trắng và lá xanh. Gừng cắt sợi dài mỏng.Nấm bào ngư, ngâm với nước muối. Sau đó xé sợi vừa ăn.Gạo vo sơ, cho vào nồi cùng 700ml nước nấu với lửa vừa hoặc nhỏ, cho gạo mềm, nếu thấy nước đặc thì châm thêm nước vào nồi.
Cho 1 muỗng cà phê dầu ăn vào chảo, xào đầu trắng hành cho thơm. Sau đó cho nấm vào chảo, đảo khoảng 1 phút.Tiếp tục cho hàu vào chảo nấm, đảo nhẹ tay đều chảo, nêm gia vị, muối, bột ngọt, đường cho đậm đà nha. Lúc này hàu sẽ ra nước nhiều, bạn yên tâm không sao cả. Đảo khoản 3 phút thấy hàu săn lại thì tắt bếp.Quay lại nồi cháo lúc này đang sôi, bạn trút phần hàu đã xào vào nồi cháo. Dùng vá đảo cho hàu hòa vào cháo đều.
Nêm gia vị lần nữa vào nồi cháo theo khẩu vị mặn nhạt nhà bạn. Cho gừng, và hành lá vào, tắt bếp. Vậy là xong, rắc riêu xay lên mặt, bạn ăn nóng và kèm giá sẽ ngon hơn nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0185', N'Hàu nướng mỡ hành', '0', N'https://image.cooky.vn/recipe/g3/22889/s640/recipe22889-636440211013247759.jpg', N'Ngâm hàu sữa trong nước khoảng 30-45 phút, dùng bàn chải để chải sạch hết phần chất bẩn bám trên vỏ. Rửa lại với nước sạch và để ráo. Cho hàu vào nồi hấp cách thủy hoặc lò vi sóng, quay khoảng 2 phút là hàu sẽ tự động há miệng ra. Phần nước hàu, bạn có thể chắt riêng để nấu canh hay cháo.Rửa sạch mỡ heo, xắt hạt lựu và để riêng. Bóc vỏ, rửa hành tím, xắt lát mỏng. Cắt rễ, lặt và rửa sạch hành lá, rau răm. Xắt nhỏ hành lá. Rang đậu phộng, nghiền nhỏ.Bật bếp, chờ cho chảo nóng già thì bạn cho mỡ heo đã xắt hạt lựu vào thắng. Khi mỡ vàng đều thì vớt ra chén, để riêng. Cho hành tím đã xắt mỏng vào chảo mỡ phi thơm. Khi hành dậy mùi thơm và chín vàng thì vớt ra để riêng. Lúc này, bạn cho nhỏ lửa xuống, cho hết phần hành lá đã xắt nhỏ và chút hạt nêm vào cùng, đảo đều rồi tắt bếp.Xếp hàu đã tách vỏ lên khay rồi cho vào lò nướng. Điều chỉnh nhiệt độ khoảng 200 độ C trong khoảng 10 phút. Cho hàu nướng ra đĩa, rắc tóp mỡ, hành phi, đậu phộng rồi rưới mỡ hành lên trên cùng. Dọn thêm muối tiêu chanh, nước mắm ngọt pha ớt và rau răm để ăn kèm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0186', N'Cháo Hàu nấu tiêu xanh', '0', N'https://image.cooky.vn/recipe/g2/19937/s640/cooky-recipe-636299697349205704.JPG', N'Gạo vo sạch, vớt ra rổ cho ráo nước và đem phơi nắng cho hạt gạo khô. Hàu rửa qua vài lần nước lạnh và nước muối để hàu sạch và hết nhớt.Gừng cắt lát, đem nướng cùng 5 nhánh tiêu và 1 trái ớt. Sau khi nướng lấy 1 lát gừng, 1 nhánh tiêu và 1 trái ớt giã nhuyễn.Bắt chảo và phi tỏi cho thơm, khi tỏi đã vàng cho hàu vào xào. Khi hàu săn lại thì cho gừng, tiêu xanh, ớt đã giã nhuyễn vào xào trong 2 phút.Làm nóng chảo, cho vào dầu ăn và 1 thìa cà phê bơ. Khi bơ chảy hết thì cho gạo đã phơi khô vào rang đến khi gạo vàng và dậy mùi thơm.Bắc nồi nước và cho vào 3 thìa cà phê muối, gừng, tiêu xanh đã nướng. Khi nước sôi thì cho gạo đã rang vào nấu đến khi hạt gạo nỡ ra thì cho hàu vào và tiến hành nêm nếm gia vị. Cắt thêm chút hành lá để cháo thơm và có màu đẹp hơn.Sau khi cho hàu vào thì nấu thêm 15 phút thì tắt bếp. Múc cháo hàu ra tô, cắt thêm chút rau răm và húng lủi để tăng thêm mùi thơm cho món cháo.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0187', N'Lẩu Hàu kiểu Hàn', '0', N'https://image.cooky.vn/recipe/g2/19152/s640/recipe19152-636244123643964517.jpg', N'Đầu tiên bạn ngâm cá khô và rong biển vào 450ml nước trong 30 phút. Bạn hoà rượu sake và nước tương vào 1 khay lớn, sau đó cho hàu vào ướp.Tiếp đó bạn nhúng hàu vào bột bắp cho bột phủ khắp 2 mặt và đặt vào chảo chiên. Nhẹ tay lật 2 mặt cho hàu chín vàng đều. Khi hàu vừa chín tới thì chuyển ra đĩa, tránh chiên quá lâu.
Bạn trút hành tây và mì udon và nồi lẩu sâu lòng. Xếp kim chi, thịt heo, đầu hành lá, nấm lên trên rồi rắc thêm tỏi và gừng cắt sợi.Bạn trút phần nước và cá khô cùng rong biển vào nồi lẩu. Đổ thêm 45ml rượu sake lên trên và đun ở lửa vừa. Khi nước lẩu sôi, bạn lấy 1 ít ra chén hoà tan tương ớt và tương miso rồi cho phần tương này vào nồi lẩu, khuấy nhẹ cho tan.Cuối cùng, bạn cho đậu hũ, hàu chiên và hành lá lên trên. Giữ cho nồi lẩu sôi nhẹ và thêm dầu mè lên trên là hoàn thành. Bạn đã thấy nồi lẩu của chúng ta hấp dẫn chưa nào?');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0188', N'Trứng  chiên Hàu', '0', N'https://image.cooky.vn/recipe/g3/29538/s640/recipe-cover-r29538.jpg', N'Rửa sạch nhiều lần với nước để bớt mặn thịt hàu, lọc bỏ vỏ nếu còn sót. Để hàu thật ráo nước. Rửa sạch thái nhỏ phần lá xanh của hành lá. Nêm trứng với hành lá vừa thái, 2gr tiêu xay, 1gr đường, 1gr hạt nêm.Đập giập đầu hành, thái nhỏ và phi thơm. Khi hành đã thơm và ngả vàng thì cho thịt hàu vào đảo nhanh tay cho vừa săn. Khi thịt hàu vừa săn thì đánh tan trứng để trộn đều các gia vị và cho vào chảo với lửa to. Đậy nắp chảo trứng và giảm lửa, chờ khoảng 2 phút sau thì trứng chín. Pha 50ml nước tương, 20ml nước lọc, 10ml giấm ăn, 5gr ớt sa tế và 2gr đường để làm nước chấm.Dùng trứng chiên hàu cùng cơm nóng. Thịt hàu tươi ngọt béo mượt cùng trứng chiên xốp phồng, hành phi thơm thơm ăn cùng cơm nóng và chan nước chấm chua cay quả thật là món ăn giản dị mà vô cùng dậy vị đưa cơm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0189', N'Hàu sốt tỏi cay', '0', N'https://image.cooky.vn/recipe/g4/34871/s640/cooky-recipe-cover-r34871.jpg', N'Nước sốt tỏi: tỏi lột vỏ, rửa dưới vòi nước vài lần để không cháy khi nướng, để ráo. Làm nóng chảo với dầu ăn, cho hành tím, hành lá băm vào phi thơm, tiếp đó cho ớt chuông và gừng xắt nhỏ vào xào khoảng 2 phút thì nêm nước tương, dầu hào. Đảo đều chảo sốt rồi tắt bếp.Hàu rửa thât sạch, tách đôi rồi múc nước sốt tỏi lên từng con hàu, rắc chút hành lá băm lên. Mở lò nướng ở 200 độ C, cho hàu vào nướng tầm 8 - 10 phút là hàu chín. Lấy hàu nướng ta và thưởng thức thôi.Món hàu sốt tỏi cay này cực ngon và thơm với nước sốt đậm đà cùng vị tỏi ớt quyện vào nhau ngon ngon. Còn chờ gì mà chúng ta không lưu lại công thức để làm đãi mọi người nào.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0190', N'Hàu chiên xù', '0', N'https://image.cooky.vn/recipe/g1/7112/s640/recipe-cover-r7112.jpg', N'Thịt hàu rửa sạch rồi cho bát hòa một ít muối rồi nhẹ nhàng rửa sạch. Thêm ít rượu nấu ăn vào rửa qua để khử mùi tanh sau đó để cho hàu ráo nước.Cho bột mì ra khay, cho hàu lăn qua bột mì. Đập trứng vào bát đánh tan, cho hàu đã lăn qua bột mì rồi nhúng qua trứng.Cho bột chiên xù ra khay rồi thêm một ít bột rau mùi tây trộn đều. Lăn hàu đã nhúng qua trứng vào bột chiên xù.Cho dầu ăn vào chảo. Đun nóng dầu ăn khi đạt tới 170 độ C. Cho hàu đã nhúng bột chiên xù vào chiên cho đến chín vàng. Khi hàu chín, vớt hàu ra khay có lót giấy thấm dầuBạn làm sốt chấm: Trứng luộc tách riêng lòng đỏ và lòng trắng ra rồi thái nhỏ; Hành tây và dưa chuột bao tử thái nhỏ. Cho lòng đỏ trứng, lòng trắng trứng, hành tây và dưa leo muối chua, 4 thìa sốt mayonnaise, nước cốt chanh, một ít muối, hạt tiêu và bột rau mùi tây vào bát trộn đều là xong phần sốt chấm.Với món hàu chiên xù này, từng miếng hàu vừa giòn tan lại ngọt ngậy vị hàu.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0191', N'Bạch tuột xào cay kiểu Hàn', '0', N'https://image.cooky.vn/recipe/g4/33100/s640/cooky-recipe-cover-r33100.jpg', N'Cách sơ chế bạch tuộc: Ngâm bạch tuộc trong nước muối lạnh, nếu là bạch tuột đông lạnh thì chờ cho tan hết đá. Trong một cái bát lớn, cho 2 muỗng canh muối vào bạch tuột, xoa bóp bạch tuộc trong vòng vài phút, càng xoa bóp lâu bạch tuộc sẽ càng mềm. Quá trình này không chỉ làm dịu bạch tuộc mà còn làm sạch bụi bẩn hoặc các lớp bùn bám vào bạch tuộc.Sau khi thấy bạch tuộc đã mềm, bạn đem bạch tuộc ra rửa sạch 2 đến 3 lần dưới vòi nước lạnh. Lấy hết các bộ phận bên trong bụng nó và bỏ đi. Loại bỏ mắt bạch tuộc, những bọc tròn đen dưới nách bạch tuộc. Rửa sạch lại bạch tuộc thêm một lần nữa và để ráo hoàn toàn. Chần qua bạch tuộc trong nồi nước nóng khoảng 10 giây sẽ làm sạch nhớt cho món bạch tuộc xào cay. Sau đó cắt bạch tuộc thành những miếng nhỏ vừa ăn.Băm nhỏ tỏi, gừng, ớt. Cắt hành tây thành từng miếng vuông nhỏ, làm tương tự với hành lá. Bắc 1 cái chảo lên bếp, cho dầu ăn vào đun nóng, cho hành lá băm, tỏi băm, gừng băm, hành tây vào phi thơm.Làm sốt ớt cay cho bạch tuộc xào cay: Trong 1 cái bát, cho ớt bột, ớt băm, nước tương, đường, bột bắp, siro bắp (hoặc siro gạo), dầu mè. Trộn đều chúng lên cho hòa quyện thành một hỗn hợp sệt. Sau đó cho tiêu đen xay vào.Cách làm bạch tuộc xào cay ngon: Sau khi đảo đến vàng, cho bạch tuộc vào và thêm phần sốt vào. Bởi vì bạch tuộc đã được chần sơ qua ở bước trước đó nên chúng ta không cần xào quá lâu sẽ khiến bạch tuộc bị dai. Xào trong khoảng 2 đến 3 phút rồi tắt bếp.Cho bạch tuộc xào cay kiểu Hàn Quốc ra dĩa và thưởng thức. Thịt bạch tuộc xào cay của ớt bột, nhai giòn sựt, thật hấp dẫn. Cách làm bạch tuộc xào cay rất nhanh chóng, chỉ cần 20 phút bạn có thể chế biến một món hải sản xào nhiều dinh dưỡng và ngon miệng cho bữa cơm gia đình rồi đấy. Món ngon này mà ăn vào mùa lạnh là đúng bài đấy nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0192', N'Bạch tuột cào cần tỏi', '0', N'https://image.cooky.vn/recipe/g2/12854/s640/recipe-635579289628044918.jpg', N'Sơ chế bạch tuộc bằng cách cắt ngay dưới mắt bạch tuộc, lấy phần xúc tu để riêng. Rạch 1 đường ở phần thân bạch tuộc và lộn nhẹ để lộ phần nội tạng bên trong. Bóc bỏ phần nội tạng đó rồi bóp nhẹ thân bạch tuộc với muối để hết nhờn, rửa sạch. Để làm bạch tuộc xào ngon đem giã nhỏ gừng, hòa với rượu trắng lấy nước cốt, đem bóp với phần thân và xúc tu bạch tuộc để khử tanh, dùng khăn sạch thấm khô rồi thái miếng vừa ăn.Rửa sạch cà chua, cần tây, hành boa rô. Bổ múi cau cà chua, tỏi tây phần đầu trắng thái vát mỏng, phần lá tỏi tây và cần tây cắt khúc ngắn khoảng 4-5cm.Cách làm bạch tuộc xào ngon: Đun nóng 1 muỗng canh dầu ăn trong chảo, thả phần đầu trắng tỏi tây vào phi thơm, cho bạch tuộc vào xào to lửa, nêm 3/4 muỗng cà phê bột canh và dầu hào. Cũng như các loại hải sản khác, bạch tuộc rất mau chín nên sau khi bạch tuộc chuyển sang màu trắng đục và săn lại thì các bạn trút ra đĩa.Tiếp tục cho 1 muỗng canh dầu ăn vào chảo để xào cà chua và cần tây, hành boa rô, nêm 1/4 muỗng cà phê bột canh rồi trút phần bạch tuộc xào ở trên vào và đảo đều rồi tắt bếp.Cho bạch tuộc xào cần tỏi ra đĩa, rắc thêm hạt tiêu cho dậy mùi và dùng nóng. Thỉnh thoảng hãy đổi vị bằng những món xào từ hải sản với cần tỏi tây để bữa cơm thêm ngon miệng nhé! Có cách làm bạch tuộc xào cần tỏi này rồi gia đình sẽ hơi bị "hao cơm" đó.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0193', N'Bạch tuột xào sa tê', '0', N'https://image.cooky.vn/recipe/g1/7675/s640/recipe-635579188649223558.jpg', N'Cắt nhỏ bạch tuộc thành miếng vừa ăn. Nước sốt bạch tuộc xào sa tế: Ướp với 1 muỗng canh sa tế, 1 muỗng cà phê hạt nêm, 1 muỗng cà phê đường, 1 muỗng cà phê tiêu là xong. Hành tây cắt múi cau.Bắt chảo lên bếp đợi chảo nóng cho 2 muỗng canh dầu ăn, dầu nóng thì cho 1 muỗng canh hành tím và tỏi băm vào xào thơm. Cho bạch tuộc đã ướp vào xào xăn nêm nếm lại cho vừa ăn, cho hành tây vào đão sơ tắt bếp.Cho ra dĩa rắc thêm 1 ít tiêu cho thơm. Ăn với cơm nóng và nước tương cho vài lát ớt tươi nữa là món bạch tuộc xào sa tế trở thành cực phẩm rồi. Món này cũng có thể ăn kèm với mì trộn, miến trộn cũng rất hợp nữa đó. Rảnh rỗi cuối tuần bạn hãy thử cách làm bạch tuộc xào sa tế thơm ngon này để đãi gia đình nhỏ của mình nha. Chúc các bạn ngon miệng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0194', N'Bạch tuột non xào tương ớt chua ngọt', '0', N'https://image.cooky.vn/recipe/g4/33467/s640/cooky-recipe-636659690370173869.jpg', N'
Bạch tuộc làm sạch. Ướp với 1/2 muỗng cà phê hạt nêm, 1/2 muỗng cà phê đường, 1/4 muỗng cà phê tiêu, 1/4 muỗng cà phê hạt muối, 1/2 muỗng cà phê bột ngọt, 1 muỗng cà phê tỏi băm. Trộn đều. Để 15 phút cho bạch tuộc ngấm gia vị. Hành lá cắt khúc.Đun nóng 2 muỗng canh dầu ăn, cho tỏi vào phi thơm. Tỏi vừa vàng thì cho bạch tuộc vào đảo nhanh tay ở lửa lớn. Hòa 1/2 chén nước với 1.5 muỗng canh tương ớt hàn quốc. Bạch tuộc vừa săn thì cho tương ớt vào.Bạch tuộc vừa chín thì cho hành lá vào rồi gắp ra đĩa. Đun nước sốt thêm 3-5 phút cho nước sốt hơi kẹo lại. Rưới nước sốt lên bạch tuộc là hoàn thành.Thịt bạch tuộc dai, ngọt. ngấm gia vị thật hấp dẫn. Món bạch tuộc xào chua ngọt dùng với cơm nóng vào những ngày mưa là tuyệt vời nhất đó nha.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0195', N'Bạch tuột xào sả ớt', '0', N'https://image.cooky.vn/recipe/g2/12566/s640/recipe-635579285452229584.jpg', N'Bạch tuộc lôi bỏ túi mật, cho bạch tuộc vào rổ dày, thêm vào 1 muỗng cà phê muối, chà cho bạch tuộc ra bớt chất nhầy, rửa lại cho thật sạch, để ráo. Dùng kéo cắt bạch tuộc thành từng khúc ngắn vừa ăn. Sả băm nhỏ. Hành lá rửa sạch, cắt nhỏ.Đun nóng 2 muỗng cà phê dầu ăn, phi tỏi thơm, cho sả băm vào xào khoảng 3 phút.Rưới vào 1/2 muỗng cà phê nước mắm,1 /2 muỗng đường, xào nhanh tay lửa lớn thì cho tiếp bạch tuôc vào xào chung, đảo đều để sả bám quanh bạch tuộc, xào thêm khoảng 4 - 6 phút.Nêm gia vị cho vừa ăn, tiếp tục xào từ 3 đến 4 phút, tắt bếp, thêm hành lá cắt nhỏ.Gắp bạch tuộc ra đĩa, dùng nóng, có thể thêm chút mè trắng rang thơm hoặc vài cọng hành ngò nhỏ để món bạch tuộc xào sả ớt của tụi mình thêm bắt mắt nè. Thơm lừng, giòn sần sật ăn cực ghiền mà lại thực hiện rất đơn giản nữa. Cách làm món bạch tuột xào này rất tiết kiệm thời gian cho những bạn có ít thời gian vào bếp đó, các bạn nhớ phải thử nhé!!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0196', N'Nộm bạch tuột kim chi', '0', N'https://image.cooky.vn/recipe/g5/45654/s640/cooky-recipe-cover-r45654.jpeg', N'Bạch tuộc làm sạch sau đó cắt miếng vừa ăn. Cho vào chén nước mắm, nước cốt chanh, đường nâu, ớt, dầu mè, ngò rí trộn đều và ướp bạch tuộc trong 30 phút cho ngấm rồi nướng chín.Dưa leo thái sợi ngắn, trộn đều với kimchi và 1/2 muỗng canh nước tương.Xếp bạch tuộc lên bên trên, trang trí với một ít ngò và dùng ngay để dưa leo không bị mất độ giòn. Thế là món nộm bạch tuộc kimchi thơm ngon, hấp dẫn đã sẵn sàng trình làng rồi nhé! Thích hợp cho những bữa tiệc liên hoan cùng gia đình và bạn bè nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0197', N'Bạch tuột nhúng lá me', '0', N'https://image.cooky.vn/recipe/g6/50502/s640/cooky-recipe-637073359650086439.JPG', N'Rửa sạch bạch tuột và lá me.
Phi thơm 10gr hành tím, tiếp đến cho lá me vào xào sơ.
Cho thêm 1,5 lít nước lọc, sau đó nêm cùng nước 3 muỗng canh (tbs) nước mắm, 3 muỗng canh (tbs) đường và 1 muỗng cà phê (tps) bột ngọt.
Nhúng bạch tuột và thưởng thức nào.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0198', N'bạch tuột nhúng giấm', '0', N'https://image.cooky.vn/recipe/g1/7128/s640/cooky-recipe-cover-r7128.jpg', N'
Làm sạch tuộc, bỏ mắt và túi mực, để nguyên con. Các loại rau ăn kèm bạch tuộc nhúng giấm đem rửa sạch cắt khúc. Cắt khoanh hoặc múi cau hành tây, cà chua. Xếp tất cả nguyên liệu ra đĩa.Cách nấu nước lẩu bạch tuộc nhúng giấm: Pha nước dừa xiêm và giấm, đường, cho gốc sả đập dập vào nước giấm, nếm vị chua vừa phải, ngọt nhẹ. Đun sôi và nêm lại với chút nước mắm, tiêu xay và hạt nêm, phi thơm tỏi và sả băm với dầu và cho vào nước dấm, dọn lên bàn. Khi ăn nhúng bạch tuộc và rau, ăn kèm với bún tươi chấm nước mắm ớt và gừng đâm nhuyễn. Món bạch tuộc nhúng giấm thích hợp dùng cho những bữa tiệc sum họp cùng gia đình và bạn bè. Tự nấu bạch tuộc nhúng giấm đơn giản tại nhà, vừa tiết kiệm, vừa có món ăn ngon vừa miệng nhất cho cả nhà nhé. Chuẩn bị thêm chén muối ớt xanh chua cay mặn ngọt để chấm bạch tuộc nhúng giấm là ngon hết sẩy.
Khi ăn nhúng bạch tuộc và rau, ăn kèm với bún tươi chấm nước mắm ớt và gừng đâm nhuyễn. ');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0199', N'Cơm kim chi bạch tuột xào cay', '0', N'https://image.cooky.vn/recipe/g5/43719/s640/cooky-recipe-cover-r43719.jpg', N'300gr bạch tuộc mua về rửa sạch, luộc bạch tuộc sơ qua với nước sôi khoảng 5 phút cùng vài lát gừng để khử mùi tanh. Sau đó rửa sạch và cắt nhỏ thành miếng vừa ăn.Bắc chảo nóng, đợi dầu sôi rồi cho hành tây vào chảo phi thơm. Cho bạch tuộc đã cắt vào đảo đều, nêm gia vị với 1 muỗng canh tương ớt Hàn Quốc, 1 muỗng canh hạt nêm và 1 muỗng canh đường. Khi bạch tuộc đã săn và thấm đều gia vị thì cho khoảng 50gr kim chi vào đảo cùng, màu đỏ của tương ớt và nước kim chi sẽ khiến món ăn trở nên bắt mắt hấp dẫn hơn. Cuối cùng rắc hành lá lên là có thể thưởng thức.Cho cơm trắng ra đĩa, chan phần kim chi bạch tuộc sốt cay bên cạnh và rắc rong biển khô xung quanh. Hãy trang trí bằng một quả trứng ốp la phía trên mặt cơm cho thêm phần đẹp mắt nhé. Món cơm kim chi bạch tuộc tuy đơn giản nhưng hương vị lại rất đậm đà. Có vị chua chua của kim chi cùng bạch tuộc giòn sần sật, trộn cùng với cơm rất vừa ăn, rất thích hợp cho những ngày bạn bận rộn và không có nhiều thời gian nấu nướng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0200', N'Bắp xào bạch tuộc', '0', N'https://image.cooky.vn/recipe/g4/36768/s640/cooky-recipe-636695162438786856.jpg', N'Bạch tuộc cắt hình vuông, ướp với nước mắm, hạt nêm và hành tím băm. Rửa sạch bắp rồi cho vào nồi nước sôi.
Ruốc khô 1 nửa bạn để xào với bắp, 1 nửa rang vàng trên chảo nóng. Hẹ cắt siêu nhỏ. Sau khi bơ tan chảy thì cho hành củ vào phi thơm, sau đó cho bắp vào.Tiếp theo, cho bạch tuộc, rồi 1 nửa ruốc khô và hẹ vào.rình bày bắp xào ra dĩa, rắc đậu phộng rang và ruốc rang lên. Trộn đều lên rồi ăn thôi. Mọi người có cảm giác bồi hồi nhớ về thời tung tăng vô tư như mình không nhỉ!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0201', N'Ốc hương rang muối tôm', '0', N'https://image.cooky.vn/recipe/g2/18761/s640/recipe18761-636187182083808611.jpg', N'Ốc hương mua về bạn rửa nước 3-4 lần cho sạch, rồi cắt vài trái ớt cho vào ngâm chung 30 phút để ốc nhả hết cát. Ốc hương rang muối muốn ngon nên chọn con to một chút cho ngon nhé.
Nguyên liệu làm muối ớt đặc biệt lần này gồm có 30gr muối tôm, 20gr muối hột, 10gr đường, 50gr sả băm, 10gr tỏi băm và 3 trái ớt.Đầu tiên bạn cho muối hột, đường và ớt vào cối giã nhuyễn. Tiếp theo thêm muối tôm vào, trộn đều hỗn hợp muối ớt.Cách làm ốc hương rang muối: Phi thơm sả và tỏi băm trong 2 muỗng canh dầu nóng, thêm vào 30ml nước lọc. Khi nước vừa sôi bạn cho hỗn hợp muối ớt vào, đảo đều. Lúc nước muối ớt vừa sôi lại bạn đổ ốc hương vào rang chung, khi nào nước bốc hơi hết và các hạt muối bám vào ốc hương là được.
Ốc hương rang muối sẽ thêm phần mới lạ và đậm đà với cách chế biến mình hướng dẫn hôm nay. Một chút biến tấu nho nhỏ với muối tôm sẽ làm cho món ốc hương đặc biệt và phù hợp hơn với nhiều bạn không biết ăn cay. Cuối tuần thử ngày cách làm ốc hương rang muối này nha.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0202', N'Ốc bươu nhồi thịt', '0', N'https://image.cooky.vn/recipe/g4/35471/s640/cooky-recipe-cover-r35471.JPG', N'Rửa sạch 1.5kg ốc bươu và cho vào nồi hấp cùng 20gr sả cắt khúc, 10gr lá chanh, 10gr gừng, 300ml nước. Hấp đến khi nước sôi thêm 5 phút thì tắt bếp. Dùng tăm hoặc cây xiên nhọn lấy thịt ốc để riêng. Rửa sạch vỏ ốc và thịt ốc, sau đó băm nhỏ thịt ốc.Cho 300gr giò sống vào tô lớn, thêm thịt ốc, 3 tai nấm mèo băm nhỏ, 1 muỗng canh tỏi băm, 1 muỗng canh hành tím băm, 1 muỗng canh sả băm, 1 muỗng cà phê gừng, 5gr lá chanh cắt sợi. Nêm gia vị gồm 1 muỗng canh hạt nêm, 1 muỗng canh tiêu, 1.5 muỗng canh nước mắm. Dùng muỗng trộn và quết đều tất cả nguyên liệu với nhau.Sả cây rửa sạch, cắt thành khúc 7-8cm, tách riêng từng bẹ sả. Gập đôi bẹ sả cho vào giữa vỏ ốc bươu, dùng muỗng múc từng ít hỗn hợp giò sống ốc bươu nhồi vào vỏ ốc. Bỏ từng con ốc nhồi thịt vào xửng hấp hoặc nồi đất hấp khoảng 15 phút.Nước mắm gừng: Giã nhuyễn 4 trái ớt, 10gr lá chanh, 20gr gừng và 3 muỗng canh đường. Sau đó cho tiếp 1 muỗng canh nước cốt chanh, 3 muỗng canh nước mắm. Dùng muỗng khuấy cho các nguyên liệu hòa quyện với nhau.Ốc bươu nhồi thịt ăn khi còn nóng là ngon nhất và kèm thêm rau thơm, rau răm, chuối chát và khế cắt lát. Từng miếng thịt ốc thơm lừng mùi sả chanh, chấm nước mắm gừng thấm đẫm đậm vị thật hấp dẫn và khó cưỡng. Trong những ngày cuối tuần trời mưa thì không nên bỏ qua món ngon đầy hấp dẫn này cho ông xã nhậu cùng bạn bè, hay đơn giản là thêm món ăn vặt xế chiều cho cả gia đình nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0203', N'Ốc bươu nướng tiêu xanh', '0', N'https://image.cooky.vn/recipe/g3/29074/s640/recipe-cover-r29074.JPG', N'Chuẩn bị làm ốc bươu nước tiêu xanh: Rửa sạch ốc bươu rồi cho ốc đã rửa vào một cái chậu nước lớn, ngâm ốc với một ít ớt, gừng thái lát, sả cây đâp giập và một số muỗng nĩa (đồ kim loại, inox) vào ngâm chung cho ốc ra chất nhờn và bả dơ. Ngâm qua đêm hoặc tối thiểu 1 - 2 giờ, sau đó làm sạch ốc. Chuẩn bị nguyên liệu làm nước sốt gồm có tương ớt, dầu hào, tỏi ớt băm, tiêu xanh, 1/2 tiêu xanh đem giã nát, ớt bột, nước mắm và đường. Rau răm rửa sạch để ăn kèm.Cách luộc ốc bươu ngon: Cho sả đập giập, gừng, ớt thái nhỏ, ốc bươu vào nồi luộc sơ cho ốc sạch và khử mùi. Sau đó vớt ốc ra để riêng và cắt đuôi ốc để khi nướng trên vỉ, ốc sẽ không bị nổ.Làm nước sốt ốc nướng tiêu: Tỏi ớt băm, tiêu xanh giã nát, tiêu xanh nguyên hạt, ớt bột, dầu hào, tương ớt, nước nắm, đường. Cho tất cả nguyên liệu vào tô rồi khuấy đều cho hỗn hợp hòa quyện, đường tan hết và sệt lại.Cách làm ốc bươu nướng tiêu xanh: Chuẩn bị một bếp than, đặt ốc đã sơ chế lên vỉ nướng. Chờ cho ốc bốc hơi nóng thì lần lượt chang nước sốt tiêu xanh vào miệng ốc. Cho đến khi nước sốt trong ốc sôi lên và cạn bớt nước, sốt trong ốc keo lại, có mùi thơm nồng của tiêu xanh là được.Trình bày ốc bươu nướng tiêu ra đĩa, ăn kèm với rau răm và muối ớt sữa hoặc muối ớt xanh rất ngon. Món ốc nướng tiêu xanh mà làm món vặt nhâm nhi trong ngày lạnh hoặc làm món nhậu sẽ rất tuyệt vời nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0204', N'Bún ốc Hà Nội', '0', N'https://image.cooky.vn/recipe/g2/19336/s640/cooky-recipe-636258779241786056.jpg', N'Cách làm bún ốc Hà Nội ngon: Trước tiên đem rửa sạch ốc nhiều lần với nước sạch rồi đem ngâm ốc với nước, cắt vài lát ớt sừng vào chậu nước ngâm để ốc nhả sạch nhớt và cát bẩn (giúp tránh nấu bún ốc hà nội bị lẫn cát lạo xạo vừa bực mình vừa bẩn nữa). Ngâm ốc khoảng 30 phút rồi sát lại ốc 2-3 lần nữa cho thật sạch.Đổ ốc vào nồi đổ nước ngập xâm xấp mặt, cho thêm chút muối vào. Đặt lên bếp luộc ốc cho đến khi nước ốc sôi, dùng đũa đảo vài lần cho vảy ốc bung ra là ốc chín. Tắt bếp, đổ ốc ra rổ cho ráo, chắt lại nước ốc để riêng. Khi ốc nguội lấy kim khều thịt ốc ra chén.Rửa sạch cà chua, bổ múi cau. Nhặt các loại rau sống, rửa sạch cắt nhỏ. Rửa sạch hành hoa và tía tô cắt nhỏ để riêng ra chén.Cách nấu bún ốc Hà Nội: Phi thơm hành tỏi trên chảo với dầu ăn. Cho cà chua vào xào chín với chút nước mắm và gia vị. Sau đó đổ cà chua đã xào vào nồi thêm nước ốc luộc, thêm khoảng 500ml nước lạnh, nêm 1 muỗng canh nước mắm, 1 muỗng canh đường, 2 muỗng cà phê hạt nêm. Đun sôi nước dùng, sau đó cho hết giấm bỗng (bỗng rượu), vừa cho vừa nêm nếm lại nước dùng sao cho vừa vị nhất. Nước dùng bún ốc đảm bảo vị ngọt, chua thanh dịu nhẹ, thơm mùi bỗng rượu, màu đỏ đẹp của cà chua không quá ngậy béo.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0205', N'Ốc hương xào trứng muối', '0', N'https://image.cooky.vn/recipe/g2/17712/s640/recipe17712-636056613288605103.jpg', N'Ngâm ốc hương vào nước vài giờ, cắt vào mấy trái ớt để ốc nhả chất bẩn. Trong lúc ngâm ốc thì hấp trứng muối, sau đó tán nhuyễn trứng muối khi đã hấp chín.
Sau khi ngâm ốc xong vớt ra rửa lại bằng nước sạch nhiều lần để ốc được sạch hết chất bẩn. Đổ nước vào nồi, đun to lửa. Khi nước nổi bọt gần sôi thì cho ốc hương vào, thêm 1 miếng gừng đập dập vào.Nấu lửa vừa cho nồi ốc hương sôi lại lần nữa khoảng 5-10 phút là được. Dùng muôi vớt ốc ra tô để riêng.Cách làm ốc hương sốt trứng muối: Đặt chảo lên bếp, cho 1 muỗng canh dầu ăn vào chảo, đợi dầu nóng cho tỏi băm vào xào thơm thì cho trứng vịt muối đã nghiền nhỏ vào xào.Tiếp theo cho 20ml nước lọc vào đảo đều, sau đó lại cho thêm 20gr bơ, 1.5 muỗng canh nước mắm, 1 muỗng canh đường. Khuấy đều và để lửa nhỏ.Khi hỗn hợp sệt sệt thì cho ốc hương đã luộc vào, đảo đều để ốc thấm trứng muối. Nếu thích ốc xào trứng muối ăn cay thì bạn có thể rắc ớt băm vào và trộn đều.Múc ốc hương xào trứng muối ra đĩa, bày trí thêm ít rau răm là có thể thưởng thức. Thịt ốc hương xào trứng muối nhai giòn sần sật quyện sốt đậm đà, dùng ăn chơi hay làm món nhậu đều hết sẩy. Chuẩn bị thêm bánh mì ăn kèm ốc hương xào trứng muối ngon xuất sắc luôn nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0206', N'Ốc mỡ xào bơ tỏi', '0', N'https://image.cooky.vn/recipe/g3/20322/s640/recipe20322-636329809778914495.jpg', N'
Đun một nồi nước sôi, thêm vào 15gr gừng cắt lát đập dập, cho ốc vào trụng sơ 2 phút sau đó vớt ra rửa sạch.Cho vào nồi 20gr bơ lạt, 2 muỗng canh nước mắm cùng 3 muỗng canh đường. Đảo đều cho đường tan, đun cho nước sốt sôi lên và hơi kẹo lại. Cách làm ốc mỡ xào tỏi ngon đơn giản là phải đảo đều, đảo cho nhanh tay, để từng con ốc thấm vị đậm đàm, nhu thế mới hấp dẫn.Trút ốc mỡ vào, thêm 50gr tỏi phi vàng, đảo đều rồi để khoảng 2 phút cho ốc thấm gia vị và thơm mùi tỏi rồi nhắc xuống. Ốc xào tỏi cơ bản là hoàn thành xong rồi đó.Những ai là tín đồ của các món ốc thì không thể nào bỏ qua được cách làm ốc mỡ xào bơ tỏi thơm lừng, béo ngậy và cực ngon này đâu nhé. Với công thức rất đơn giản và dễ làm, bạn sẽ có ngay dĩa ốc dai dai, ngọt nhẹ với lớp tỏi phi vàng rụm hấp dẫn khiến ai ăn rồi cũng bị cuốn hút mãi. Lưu lại công thức và thử ngay nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0207', N'Ốc len xào dừa', '0', N'https://image.cooky.vn/recipe/g3/28067/s640/recipe-cover-r28067.JPG', N'
Mua 200gr ốc len rửa sạch rồi ngâm cùng 20gr ớt khoảng 30 phút cho ốc nhả hết chất dơ. Luộc ốc với 10gr ớt và 10gr sả trong 5 phút.Phi 10gr tỏi, 15gr sả trong 2 muỗng canh dầu ăn rồi cho ốc vào xào cùng 1/2 muỗng canh hạt nêm, 1/4 muỗng cà phê muối, 1/2 muỗng canh đường. Thêm 200ml nước cốt dừa vào nấu sôi , cắt 15gr ớt vào cho thêm cay rồi tắt bếp.Như vậy món ốc len xào dừa đã hoàn thành. Cảm nhận vị ốc ngọt thịt thấm đều nước cốt dừa béo ngậy, nóng hôi hổi. Ốc len xào dừa ăn cùng bánh mì chấm nước cốt dừa là ngon hết sảy!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0208', N'Ốc bươu trộn kiểu Thái', '0', N'https://image.cooky.vn/recipe/g4/30133/s640/cooky-recipe-cover-r30133.jpg', N'Sả, hành tím, ớt trái cắt thành lát mỏng, lá chanh cắt sợi, chanh cắt miếng. Sơ chế thịt ốc: rửa sạch dưới vòi nước nhiều lần. Trong một cái xoong. Đập dập sả cây, lá chanh cho nước vào đun sôi, bỏ thịt ốc vào luộc vừa chín tới, không luộc quá chín sẽ làm thịt ốc dai, mùi sả và lá chanh làm thịt ốc thơm hơn.Cách làm nước sốt ốc bươu trộn kiểu thái: Cho đường, nước mắm, tiêu, ớt bột, ớt trái, quấy cho tan đường.Cách trộn gỏi ốc bươu: Trong một cái tô lớn, cho ốc, sả, hành tím, lá chanh, vắt chanh, hỗn hợp nước mắm vào.Ta da! Trộn đều và thưởng thức thôi nào! Ốc bươu xào thái này ngon nhất là được nhâm nhi lúc trời chiều cùng với gia đình và bạn bè nè. Có thêm vài lon bia thì đúng là "cực phẩm" nhân gian phải không nào. Cách làm ốc bươu xào kiểu thái chỉ đơn giản như thế thôi, rảnh rỗi các bạn thử vào bếp để nâng cao tay nghề mà còn giúp mọi người ăn ngon nữa đó.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0209', N'Sò lông nướng mỡ hành', '0', N'https://image.cooky.vn/recipe/g3/20882/s640/recipe20882-636373597995410073.jpg', N'Trước khi làm sò lông nướng mỡ hành: Dùng bàn chải cũ hoặc miếng chà nồi chà bớt phần rêu đen bám trên vỏ lông. Sau đó đổ nước vào sâm sấp con sò, thêm 1/2 muỗng cà phê muối và cắt vào 2 trái ớt, ngâm sò lông trong nước ít nhất 2 tới 4 tiếng để sò nhả sạch cát và chất bẩn.Trong khi đợi ngâm sò lông thì bạn chuẩn bị phần mỡ hành lá gồm: cắt nhỏ hành lá, băm nhuyễn ớt, giã nhỏ đậu phộng rang.
Vớt sò lông đã ngâm hoàn tất khỏi thau, đem đi rửa sạch rồi cho sò vào nồi nước lạnh luộc sơ cho nước sôi lên thì nhắc xuống. Mang sò đi rửa sạch lần nữa rồi tách bỏ 1 vỏ, giữ lại phần vỏ có dính kèm theo thịt sò lông nhé. Chuẩn bị bếp than để nướng sò.Cách làm mỡ hành: Cho 50gr hành lá, 5gr ớt băm, 1 muỗng cà phê đường, 1 muỗng cà phê tiêu, 1 muỗng canh nước mắm cùng 30gr đậu phộng vào chung một tô. Nấu sôi 150ml dầu ăn, đổ dầu sôi trực tiếp vào tô hành rồi khuấy đều.Cách làm sò lông nướng mỡ hành: Đặt vĩ nướng lên bếp than nóng, gắp sò lông lên trên vĩ, rưới thêm mỡ hành lên từng con sò. Dầu hành sôi lên thì gắp sò ra khỏi bếp than. Sò lông nướng mỡ hành vừa nướng vừa ăn nhé các bạn.Món sò lông nướng mỡ hành vừa ra khỏi bếp than nóng hỏi, ăn ngay là ngon nhất. Chuẩn bị thêm chén nước mắm tắc, tỏi ớt đặc sệt, vị chua cay mặn ngọt để chấm ăn cùng thịt sò nướng thì ngon hết sẩy. Những buổi họp mặt gia đình sẽ trở nên vui tươi, nhộn nhịp hơn với món sò nướng mỡ hành thơm lừng, béo ngậy cực kì ngon khi chấm kèm nước mắm tắc đậm đà.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0210', N'Ốc móng tay xào tỏi', '0', N'https://image.cooky.vn/recipe/g3/29275/s640/cooky-recipe-cover-r29275.jpg', N'Để khi làm món ốc móng tay xào tỏi dậy mùi thơm ngon hơn nên chọn những con ốc móng tay còn tươi ngon và không hôi mùi lạ. Sơ chế ốc móng tay bằng cách rửa sạch nhiều lần với nước, ngâm trong nước pha ớt để ốc nhả bớt chất bẩn.
Cách làm ốc móng tay xào tỏi: Bắc chảo lên bếp, chờ nóng chảo thì cho dầu ăn vào, sau đó cho đường và muối vào đảo đều. Cho tỏi vào phi vàng rồi trút ốc móng tay vào xào chung. Cuối cùng cho ớt băm và tương ớt vào là xong.Cho ốc móng tay xào tỏi ra dĩa, trang trí thêm rau răm cho đẹp mắt. Chỉ cần vài phút nấu là chúng ta đã có ngay được đĩa ốc móng tay xào tỏi thơm ngon khó cưỡng để làm món ăn vặt nhâm nhi cho đỡ thèm hoặc làm món nhậu lai rai hết sẩy cho ông xã rồi đấy.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0211', N'Bí đao kho nước tương', '0', N'https://cdn.tgdd.vn/2021/10/CookDish/cach-lam-bi-dao-kho-nuoc-tuong-dam-da-dua-com-cho-ngay-an-avt-1200x676.jpg', N'1. Sơ chế nguyên liệu
Bí đao sau khi mua về bạn gọt bỏ vỏ sau đó rửa sạch rồi để ráo nước, đem cắt thành các khúc dày gần bằng 1 lóng tay.
Hành lá và ngò rí cắt bỏ rễ, rửa sạch với nước rồi cắt nhỏ.
Hành tím và tỏi bạn bóc bỏ vỏ, rửa sơ rồi băm nhỏ.

2. Chiên bí đao
Tiến hành chiên bí đao bằng cách bắc chảo lên bếp, cho 50ml dầu ăn vào đun sôi rồi cho hết số bí đao đã cắt vào chiên trên lửa lớn vừa cho đến khi thấy vàng đều 2 mặt.
Tổng thời gian chiên khoảng 10 phút thấy bí đao chín vàng thì gắp ra dĩa.

3. Làm bí đao kho nước tương
Bắc lại chảo lên bếp, đổ bớt dầu ăn ra chỉ chừa lại khoảng 2 muỗng canh dầu ăn là được.
Tiếp đến phi thơm hành tím băm và tỏi băm trên lửa vừa, cho hết số bí đao đã chiên vàng vào, nhanh tay cho các gia vị vào.
Đảo đều tay cho bí đao thấm gia vị, nêm nếm lại và đun khoảng 5 phút khi thấy nước sốt sệt là thì tắt bếp, cho hành lá và ngò rí đã cắt nhỏ vào.

4. Thành phẩm
Bí đao kho nước tương tuy đơn giản nhưng rất ngon bởi mùi vị đậm đà, bí đao giòn nhẹ thấm vị khi ăn kèm cơm nóng là tuyệt vời.
Vào những ngày ăn chay nếu không nghĩ ra nên làm món gì thì có thể thử ngay món bí đao kho nước tương này nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0212', N'Mì quảng trộn chay', '1', N'https://cdn.tgdd.vn/2021/01/CookProduct/Mon-chay-318---MI-QUANG-TRON-6-13-screenshot-1200x676.jpg', N'1. Sơ chế nguyên liệu
Nấm đùi gà, bạch tuyết mua về cắt phần gốc dưới chân nấm rồi rửa sạch và ngâm muối khoảng 5 - 7 phút. Sau đó lấy ra dùng khăn giấy thấm sạch nước dư. Nấm đùi gà xắt dọc thành những miếng bằng với nấm bạch tuyết.
Hành boa rô cắt rễ, rửa sạch rồi băm nhỏ phần đầu hành.
Ớt đỏ cắt nhỏ.
Rau sống ăn kèm rửa sạch, ngâm muối rồi rửa lại lần nữa xong vớt ra rổ để ráo.
2. Phi hành boa rô
Cho 2 muỗng canh dầu ăn lên chảo nóng, khi dầu sôi lăn tăn thì cho 1/2 muỗng canh hành boa rô vào rồi đảo đều.
Khi hành boa rô phi bắt đầu có mùi thơm, hành chưa chuyển vàng thì bạn múc 1 muỗng canh dầu hành cho vào tô đựng mì quảng. Sau đó, bạn trộn cho mì thấm đều dầu.
3. Xào nấm
Trên chảo phi hành boa rô bạn cho nấm bạch tuyết, nấm đùi gà vào xào chung với 2 muỗng canh nước mắm chay, 1 muỗng canh nước tương, 1/2 muỗng canh hạt nêm chay, 1/2 muỗng canh đường.
Bạn xào đến khi nấm mềm, thơm, thấy trong chảo có nước từ nấm là được. Xào xong bạn cho nấm ra dĩa rồi làm bước tiếp theo.
4. Làm nước sốt mì quảng
Tận dụng chảo xào nấm bạn cho thêm 2 muỗng canh dầu ăn vào, khi dầu sôi lăn tăn bạn cho 1/2 muỗng canh hành boa rô vào phi thơm.
Sau đó, bạn cho vào chảo 2 muỗng canh nước tương, 2 muỗng canh nước mắm chay, 1/2 muỗng canh hạt nêm, 1 muỗng canh đường. Khuấy đều cho hỗn hợp tan hết.
Bạn đun khoảng 3 - 5 phút đến khi hỗn hợp sôi thì bạn cho 1 trái ớt đỏ cắt nhỏ vào, đảo đều rồi tắt bếp và cho hỗn hợp nước sốt ra chén.
5. Xếp nguyên liệu và hoàn thành
Bạn chuẩn bị một dĩa lớn, trước tiên bạn xếp mì quảng và rau sống vào trước. Tiếp đến, bạn xếp nấm xào, đậu hũ chiên, bánh mì chiên lên trên rồi bạn đổ phần nước xào nấm lên nữa là xong.
Khi ăn bạn rưới phần nước sốt lên mì rồi trộn đều và thưởng thức.
');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0213', N'Đậu hũ xào chua ngọt', '1', N'https://image.cooky.vn/recipe/g6/55357/s640/929fb2d8-f184-4f71-8e8b-42dd6cf4d711.jpeg', N'1.Ớt chuông, hành tây cắt miếng vuông, hành lá cắt khúc, cà chua cắt múi cau, đậu hủ cắt ra thành các khối vuông vừa ăn, đem chiên vừa vàng giòn vớt ra để ráo dầu.
2.Cho dầu vào chảo phi vàng tỏi băm sau đó cho cà chua vào xào chín, tiếp đến cho các loại rau của vào xào khoảng hai phút.
3.Khi rau củ gần chín nêm 15gr đường, 10gr nước tương, 20gr tương cà, 20gr tương ớt đảo cho hỗn hợp gia vị sệt lại cho phần đậu hũ đã chiên vào đảo cho gia vị thấm và áo đều lên đậu hũ.
4.Dọn phần đậu hũ đã xào ra đĩa, rắc tiêu xay, hành lá lên trên ăn với cơm nóng, có thể chấm cùng nước tương tỏi ớt cho vừa khẩu vị.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0214', N'Bún gạo lứt xào cay', '1', N'https://image.cooky.vn/recipe/g6/55564/s640/12944f0e-ff9c-4403-8ac6-4b4025b53c72.jpeg', N'1.Bún gạo lứt đem trụng nhanh với nước sôi 2 phút vừa mềm đem ngâm với nước lạnh, rồi để ráo nước trộn với 1 muỗng canh dầu ăn để bún rời cọng không bị dính với nhau.
2.Nấm đùi gà, Nấm rơm, Cà rốt rửa sạch cắt lát vừa, Hẹ rửa sạch cắt khúc, Đầu hành lá cắt nhuyễn, Đậu hủ cắt lát vừa ăn, Cải thìa cắt khúc vừa ăn đem các loại rau củ trụng nhanh qua nước sôi sau đó ngâm lại với nước lạnh rồi để ráo nước.
3.cho 1 ít dầu vào chảo nóng, phi thơm đầu hành cho phần rau củ vào xào nêm 10 gr dầu hào chay, 5gr nước tương, và 5gr đường xào nhanh vừa chín cho ra đĩa, Cho tiếp phần bún vào chảo vừa xào rau củ đảo nhanh, nêm 10gr dầu hào chay, 10gr nước tương 5gr đường. Bún gạo vừa tơi cho phần rau củ lúc nãy vài 2gr Dầu mè vào đảo đều, rắc hẹ và rau cần lên trên
4.Dọn thành phẩm ra đĩa, ăn kèm nước tương ta đã có ngay một món bún xào chay ngon miệng đầy màu sắc và rất tốt cho sức khoẻ, đặt biệt sẻ rất phù hợp cho những người ăn kiên.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0215', N'Đậu hũ kho tương hột', '1', N'https://image.cooky.vn/recipe/g6/55496/s640/6f6cf1f6-3ec6-4f3c-b94e-9aafcbe9aee0.jpeg', N'1.Đậu hủ cắt miếng vừa ăn đem chiên vàng giòn đều, vớt ra để ráo dầu, hành baro cắt lát mỏng, sả băm nhuyễn.
2.Cho 1 ít dầu ăn vào thố phi thơm hành và sả băm, cho 50gr tương hột, 30gr đường, 2 muỗng canh nước tương, xào đều gia vị cho đậu hủ vào đảo lên xào khoảng 1 phút, cho 100 ml nước vào hạ lửa nhỏ để sôi liu riu khoảng 15 phút nước vừa cạn bớt là được. Lưu ý, bạn nên thử độ mặn của tương hột trước khi nêm vì mỗi loại tương hột sẽ có độ mặn khác nhau để tăng giảm định lượng cho phù hợp.
3.Dọn đậu hủ ra thố hoặc tô, rắc tiêu xay, trang trí ớt sừng, hành lá, ăn kèm cơm nóng. Nước kho tương hột đặc sánh đậm đà có thể chan cơm hay chấm cùng rau củ luộc sẽ rất ngon miệng và tốt cho sức khỏe.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0216', N'Đậu hũ muối tiêu rau răm', '1', N'https://image.cooky.vn/recipe/g6/55358/s640/6f6f85d1-9894-4144-aefd-196619519051.jpeg', N'1.Băm thật nhuyễn 5gr ớt hiểm, đặt chảo lên bếp cho vào 2 muỗng canh dầu ăn, đợi dầu vừa nóng tới cho phần ớt băm vào xào đều tay 1 phút cho thêm 5gr muối và 5 gr đường vào, xào ớt vừa sậm màu cho vào 20ml nước lọc trộn đều cho ra chén để nguội.
2.Lấy 4 miếng đậu hủ cho vào nồi hấp 5 phút.
3.Lạng đôi miếng đậu hủ rắc muối tiêu ở giữa, quét 1 lớp sa tế ớt tươi, cùng một ít nước cốt tắc, đặt rau răm đều vào trong đậy nửa miếng đậu hũ kia lên
4.Vậy là đã hoàn thành món đậu hủ muối tiêu rau răm thơm ngon dễ làm, hương vị lạ miệng dễ ăn mà không cần nhiều loại gia vị khác nhau. Có thể dùng món này trong các bữa cơm chay hay ăn như một món để ăn chơi bình thường.
');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0217', N'Salad trái cây trộn chua ngọt', '1', N'https://image.cooky.vn/recipe/g1/6183/s640/recipe6183-prepare-step4-635829169061982947.jpg', N'1.Đầu tiên, cho 50ml nước cốt cam, 20ml nước cốt chanh, 1 muỗng cà phê đường nâu, 5gr vỏ chanh, 5gr vỏ cam, 1 muỗng cà phê vani vào nồi, bắc lên bếp, khuấy đều khoảng 1 phút.
2.Thơm, dâu tây, kiwi rửa sạch, cắt hạt lựu.
3.Chuối bóc vỏ, cắt khoanh tròn khoảng 1cm. Cam bóc vỏ, tách lấy múi còn nho rửa sạch, để nguyên trái.
4.Cho tất cả trái cây ra tô, rưới đều hỗn hợp nước cốt cam vào, trộn đều. Trang trí thêm lá bạc hà nếu thích và thưởng thức ngay nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0218', N'Đậu Hũ Ki Khìa Nước Dừa', '1', N'https://image.cooky.vn/recipe/g6/55332/s640/1a657a69-4a58-4cb8-b19e-469b63762f43.jpeg', N'1.Ngâm nước lạnh 6 miếng tàu hũ ki to. Tàu hũ chiên cắt miếng vừa ăn, bỏ ruột. Cắt nhỏ 200gr hành tây, 2 cây nấm đùi gà, 100gr nấm hương, 200gr nấm rơm. Bông hẹ nhúng nước sôi.
2.Xào vàng hành tây, sau đó cho nấm, ruột tàu hũ vào xào cho khô, nấm cháy xém, nêm với 10g hạt nêm chay và 5g muối. Không nên nêm gia vị quá sớm khi xào nấm sẽ làm nấm ra nước.
3.Nhồi nấm vào tàu hũ, gói lại bằng tàu hủ ki, dùng bông hẹ cột lại. Áp chảo vàng 2 mặt tàu hủ ki trong dầu nóng già.
4.Cho 100gr nước dừa vào nồi, 30gr nước tương, 30gr đường, 15gr dầu hào chay,15gr tương ớt đun sôi, sau đó cho tàu hũ vào khìa với lửa lớn, lật mặt đậu hũ liên tục cho tới khi cạn bớt nước.
5.Dù bạn có phải là một người ăn chay hay không, thì bạn cũng không thể bỏ qua món đậu hũ ki khìa nước dừa thơm ngon đậm đà. Cách làm đơn giản, nhưng thành phẩm sẽ rất bắt cơm đấy. Còn chờ gì mà không cùng Cooky nhanh nhanh vào bếp nào.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0219', N'Xôi tam sắc', '1', N'https://image.cooky.vn/recipe/g6/55139/s640/3d23bf10-b239-485d-9df7-74482ce74706.jpeg', N'1.Đầu tiên, cho 300gr đậu xanh cà vỏ vào tô, đổ ngập nước ngâm cho mềm đậu.
2.Vo sạch đậu, thêm nước vào nấu cho đậu chín mềm. Rồi cho đậu vào chảo, nghiền nhuyễn, cho thêm vào 50gr đường, 70ml nước cốt dừa và sên trên lửa nhỏ đến khi đặc quánh nặng tay là được.
3.Cho 1kg gạp nếp cái vào âu lớn, đổ nước vô ngâm gạo khoảng 2 tiếng rồi vo sạch, chia gạo thành 2 phần bằng nhau.
4.Gấc bổ đôi, lấy phần thịt đỏ, cho vào 3 muỗng canh rượu gạo, bóp nát phần thịt. Cho rượu vào gấc để dậy mùi thơm và để xôi bám màu đẹp hơn.
5.Cho hỗn hợp gấc vào 1/2 phần gạo nếp đã được chia, thêm 1/2 muỗng cà phê muối rồi trộn đều. Tiếp tục, đổ nước lá dứa vào phần nếp cái còn lại, thêm 1/2 muỗng cà phê muối, trộn đều rồi ngâm 2 tiếng.
6.Bắc xửng hấp lên bếp, cho xôi lá dứa lên hấp 10 phút (tạo khoảng trống ở giữa để xôi nhanh chín). Sau 10 phút đổ vào 100ml hỗn hợp nước cốt dừa và đường, rồi trộn đều lên hấp thêm 10 phút nữa. Xôi gấc thì hấp tương tự xôi lá dứa.
7.Khi xôi đã chín hết, lần lượt cho xôi gấc, đậu xanh, xôi lá dứa vào khuôn hoa rồi nén chặt rồi lấy khuôn ra, là bạn đã có được món xôi tam sắc đẹp mắt. Rắc thêm ít mè trắng lên trên để món xôi bắt mắt hơn.
8.Món xôi mềm dẻo, hạt nếp cái nở đều, thêm phần đậu xanh bùi bùi, beo béo thơm mùi nước cốt dừa.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0220', N'Chả giò bắp', '1', N'https://image.cooky.vn/recipe/g1/4437/s640/recipe4437-prepare-step3-635991860051062289.jpg', N'1.Lột vỏ bắp, đặt úp 1 tô nhỏ vào trong 1 tô lớn, dựng đứng trái bắp lên lên đáy tô nhỏ, 1 tay giữ 1 đầu trái bắp, tay còn lại dùng dao cắt lấy hạt bắp.
2.Rửa sạch tàu hũ ky non, thấm ráo nước rồi cắt nhuyễn. Ngâm nở nấm mèo, cắt nhuyễn.
3.Làm nhân chả giò bắp: Cho nấm mèo, tàu hủ ky, boa rô và ngò rí đã cắt nhỏ vào cùng bắp. Nêm 1 muỗng cà phê hạt nêm và 1/2 muỗng cà phê tiêu. Dùng tay trộn cho các nguyên liệu quyện vào nhau.
4.Cuộn chả giò bắp: Vỏ bánh tráng để cuốn dùng loại có màu vàng thì khi chiên sẽ có màu vàng đẹp. Múc nhân cho lên vỏ bánh tráng và cuốn như bình thường hay cuốn chả giò.
5.Đun nóng già 300ml dầu ăn, cho các cuộn chả giò vào chiên chín vàng giòn thì vớt ra để ráo dầu. Với cách làm chả giò bắp ngon đơn giản này, có thể kết hợp ăn kèm với nước mắm chay chua ngọt nhé! Đảm bảo chả giò bắp sẽ rất đặc biệt trên mâm cơm gia đình đấy nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0221', N'Mì Tàu Hũ Xào Rau Củ', '1', N'https://image.cooky.vn/recipe/g6/50592/s640/cooky-recipe-637079893463927593.jpg', N'1.Sơ chế các loại rau củ: Cà rốt, bí ngòi cắt sợi dài. Nấm linh chi nâu rửa sạch, cắt bỏ gốc, vắt ráo nước. Đậu hũ cắt khối vuông và chiên giòn. Tiếp đến là chế biến món ăn: Phi thơm hành tím và tỏi băm, cho các nguyên liệu vào xào sơ trong 5 phút để chín sơ.
2.Nêm hỗn hợp với nước tương, đường (có thể bỏ qua) và một chút nước lọc (để phần rau củ không bị cháy). Mì tàu hũ mua về không cần sơ chế gì cả, chỉ cần chắt ráo nước và bỏ vào chảo trộn đều lên thêm 7-10 phút nữa cho thấm gia vị. Nêm nếm lại cho vừa ăn và thưởng thức thôi.
3.Cho thêm đậu hủ chiên giòn lên mặt là xong rồi. Đây cũng là một món nên dùng thử cho những ai đã quá ngán với món chay quen thuộc. Nếu nấu chay các bạn chỉ cần thay hành tím và tỏi bằng hành boa rô nhé. Mì đậu hũ rất thơm khi kết hợp cùng các loại rau củ sẽ vô cùng thanh mát, bổ dưỡng. Đừng tưởng ăn chay là đạm bạt, không đa dạng nha. Thử ngay thôi!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0222', N'Sườn chay chiên sả ớt', '1', N'https://image.cooky.vn/recipe/g6/54797/s640/36144d2c-91de-4468-b97a-3c5ae88b6a30.jpeg', N'1.Ngâm 100gr sườn non chay vào nước cho nở mềm rồi vắt ráo nước, thái thánh miếng vừa ăn, sau đó đem đi chiên vàng đều 2 mặt, rồi vớt ra để ráo dầu.
2.Cho 1 canh dầu ăn vào chảo đun nóng, cho 1 muỗng canh hành tím băm, 50gr sả băm vào phi thơm. cho thêm 30ml nước lọc, 1.5 muỗng canh nước mắm, 1 muỗng canh tương ớt, 1 muỗng cà phê hạt nêm, 1.5 muỗng canh đường, dùng đũa khuấy đều cho hôn hợp hơi sệt. Rồi trút phần sườn non chay đã chiên vàng vào và đảo đều cho phần hỗn hợp áo đều miếng sườn.
3.Tắt bếp, cho sườn ra dĩa rắc vào lắc ớt để món ăn bắt mắt hơn và dùng chung với cơm nóng và dưa leo ăn kèm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0223', N'Bông điên điển muối chua', '1', N'https://image.cooky.vn/recipe/g6/54799/s640/d73beca0-f6b5-418f-814e-ee88582895fa.jpeg', N'1.Đầu tiên, tất cả các rau củ sơ chế rửa sạch, sau đó 200gr cà rốt thái sợi, 100gr hẹ lá cắt khúc, 20gr tỏi và 20gr ớt sừng cắt lát.
2.Cho tất cả 300gr bông điên điển, 300gr giá đỗ, 100gr hẹ lá, 200gr cà rốt, 20gr tỏi lát và 20gr ớt sừng lát vào cái âu to rồi trộn đều tất cả.
3.Cho 1 lít nước vo gạo ( đã được lắng, lấy phần nước trong) vào trong âu lớn, thêm 2 muỗng canh muối, 2 muỗng canh đường và khuấy cho tan đều hỗn hợp.
4.Cho hỗn hợp rau củ vào hủ thủy tinh sau đó, đổ nước vo gạo vào ngập ( đảm bảo rau giá điều ngập trong nước) rồi đậy kín nắp để hủ ở chỗ thoáng mát khoảng 2 ngày là có thể dùng được.
5.Sau 1-2 ngày, bông điên điển muối sẽ có vị chua dịu, sau đó bạn có thể để tủ lạnh rồi dùng dần. Món ăn có thể dùng ăn kèm với thịt luộc, thịt kho hoặc cá kho...đều rất ngon. Không những ngon lại còn đẹp mắt bởi màu vàng của bông điên điển, trắng của giá, xanh của hẹ và thêm chút đỏ của ớt càng làm món ăn thêm ngon miệng hơn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0224', N'Phở chay', '1', N'https://image.cooky.vn/recipe/g6/53893/s640/3a9614e9-4b97-4358-a9a7-04a1efd66d31.jpeg', N'1.Nấu nước dùng phở: cho củ cải trắng (cắt khúc khoảng 2 cm), hành baro (cắt khúc khoảng 3 cm), bắp cải trắng (cắt khúc khoảng 3 cm), cải thảo (cắt khúc khoảng 4 - 5 cm) vào 1 cái nồi, sau đó cho nước lọc ngập rau củ, đậy nấp và hầm khoảng 30 - 35 phút. (sau đó có thể vớt hết rau củ và giữ lại phần nước dùng hoặc giữ lại rau củ đều được)
2.Lấy một cái chảo, cho 2 muỗng canh hành baro băm nhuyễn với 1 muỗng canh dầu ăn, phi hành cho thơm rồi cho tàu hũ ky vào xào khoảng 2 phút. Tiếp đến, cho tàu hũ chiên vào đảo đều, tắt bếp.
3.Rang quế thanh, đại hồi, thảo quả, hạt ngò, tiêu hồi, đinh hương khoảng 4 - 5 phút rồi cho vào túi lọc.
4.Cho túi lọc vào nồi nước dùng, khoảng 5 - 6 phút thì lấy túi ra. Sau đó, nêm 1 muỗng canh bột nêm chay, nửa muỗng canh muối, 1 muỗng canh đường, khuấy đều, rồi cho các loại nấm vào nồi nấu chín khoảng 10 phút, tắt bếp, cho phần tàu hũ chiên và tàu hũ ky vào nồi.
5. Cho phở ra tô, chan nước dùng và thưởng thức ngay món phở vô cùng tham đạm, đậm đà hương vị. Món dùng kèm với giá, lá quế, tương đen và tương ớt.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0225', N'Đậu hũ non om nấm hương', '1', N'https://image.cooky.vn/recipe/g2/17491/s640/recipe17491-prepare-step4-636032303840730811.jpg', N'1. Đậu hũ non rửa sạch và cắt khoanh nhỏ. Sau đó, xếp các khoanh đậu đã cắt vào nồi om nhỏ.
2. Nấm hương bỏ cuống và khía mặt nấm làm 4 để nấm thấm gia vị. Thái nhỏ cà rốt, gừng và hành tím. Cà rốt tỉa hoa rồi cắt lát mỏng.
3. Làm 30ml nóng dầu trong chảo rồi cho hành vào phi thơm. Sau đó lần lượt cho vào chảo: gừng, cà rốt, nấm hương. Xào nhanh với lửa lớn.
4. Cho thêm rượu gạo vào, đảo đều. Nêm 2 muỗng cà phê hạt nêm chay, 1/2 muỗng canh dầu hào chay và 1/4 muỗng cà phê tiêu.
5. Cho bột bắp (đã hoà với 1 chén nước) vào chảo, đảo đều cho hỗn hợp hơi sệt lại rồi tắt bếp. Rưới hỗn hợp đã xào lên nồi đậu hũ non. Om nồi đậu hũ trong khoảng 15 phút để đậu thấm gia vị rồi tắt bếp.
6. Cho ra đĩa, trang trí thêm với ngò và tiêu, thưởng thức ngay với cơm nóng nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0226', N'Nấm bào ngư chiên giòn sốt mắm tắc', '1', N'https://phathocdoisong.com/images/upload/image/201709/20170924121647_35400.jpg', N'1. Đầu tiên chúng ta sẽ làm bột chiên giòn nhúng nấm. Cho bột chiên giòn vào tô, cho từ từ nước lạnh vào tô bột rồi khuấy đều đến khi hỗn hợp đặc sệt, nặng tay. Nếu pha bột quá loãng sẽ làm nấm khi chiên không bám bột, không giòn nhé các bạn.
2. Cắt bỏ chân nấm bào ngư, rửa sạch và để ráo, sau đó nhúng nấm vào hỗn hợp bột đặc sệt rồi cho vào chảo chiên ngập dầu đến khi vàng giòn thì vớt ra để ráo dầu.
3. Bây giờ chúng ta làm xốt các bạn nha. Cắt nhỏ tắc rồi lấy nước cốt cho vào chảo, thêm các gia vị còn lại gồm : đường, hạt nêm chay Knorr, nước mắm chay, tương ớt, nước lạnh rồi đun sôi nhỏ lửa đến khi xốt keo lại, vị vừa ăn thì tắt bếp.
4. Cho nấm đã chiên giòn ra dĩa, thêm ít dưa leo, rau sống ăn kèm và xốt bơ cay là hoàn tất món ăn. Nấm bào ngư ngọt tự nhiên được phủ lớp bột chiên giòn rụm chấm cùng xốt mắm tắc vô cùng hòa quyện luôn. Vậy là vô cùng đơn giản để có một món ăn vặt cho những ngày chay đúng không các bạn. Chúc các bạn thành công với công thức của mình nhé.
');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0227', N'Hoành thánh lá rau củ sốt chay', '1', N'https://image.cooky.vn/recipe/g6/51859/s640/recipe51859-cook-step4-637135658445015409.jpg', N'1. Cắt nhỏ 30gr nấm mèo ngâm nở, 30gr sườn non chay ngâm nở. Cắt miếng dài 50gr cà rốt, 50gr nấm mỡ trắng.
2. Luộc 100gr vỏ hoành thánh cắt 1/4. Cho 1 muỗng canh dầu ăn xào đều cùng 5gr tỏi băm, sườn non chay, cà rốt, nấm mỡ trắng và nấm mèo.
3. Cho tiếp 1 muỗng cà phê hạt nêm chay Knorr Nấm Hương, 1 muỗng cà phê đường, 1 muỗng canh nước tương, 1 muỗng canh giấm trắng, 1 muỗng canh nước lọc rồi xào đều tay trong 3 phút.
4. Cho vỏ hoành thánh luộc chín ra dĩa, rưới sốt chay cùng rau củ lên trên và trang trí thêm ngò cho bắt mắt. Vậy là đã hoàn thành một món ăn ngon thanh đạm mà vừa không ngấy cho ngày Tết này rồi, các bạn nhớ lưu công thức này để thực hiện cùng mình nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0228', N'Đậu hũ sốt thái', '1', N'https://cdn.24h.com.vn/upload/2-2018/images/2018-05-22/1526986217-425-2018-05-17-18-05-40-1526985981-width650height488.jpg', N'1. Cắt đậu hũ thành khối vuông vừa ăn rồi chiên giòn. Vớt đậu vàng giòn để ráo dầu.
2. Cho vào chảo gia vị gồm: đường, hạt nêm chay Knorr, xốt thái, tương ớt, nước cốt chanh, lá chanh thái sợi và nấu sôi. Thêm tiếp đậu hũ vào xốt Thái, rim nhỏ lừa cho thấm vị thì tắt bếp.
3. Cho đậu hũ xốt Thái ra dĩa và ăn cùng cơm nóng các bạn nhé. Đã có giải pháp cho những ngày chay mà thèm món Thái rồi đó. Chúc các bạn ngon miệng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0229', N'Đậu bắp xào tỏi chay', '1', N'https://thegioiamthuc.com/wp-content/uploads/2020/12/dau-bap-768x432.jpg', N'1. Băm nhỏ tỏi. Cắt bỏ đầu, rửa sạch rồi cắt nhỏ tùy thích. Cho dầu ăn vào chảo, phi thơm tỏi băm đến khi tỏi thơm thì cho đậu bắp vào xào.
2. Nêm vào đậu bắp hạt nêm chay, nước tương và đường, đảo đều tay với lửa lớn đến khi đậu bắp xanh, trong là đậu đã chín thì tắt bếp.
3. Vậy là hoàn tất món đậu bắp xào tỏi. Cho đậu bắp xào tỏi ra dĩa và thưởng thức thôi. Chúc các bạn thành công theo công thức này nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0230', N'Hủ tiếu nấm', '1', N'https://cdn.huongnghiepaau.com/wp-content/uploads/2019/01/hu-tieu-chay.jpg', N'1. Đầu tiên chúng ta sẽ rửa sạch các củ quả : cà rốt, cải trắng, củ sắn, hành boaro. Bào vỏ cà rốt, cải trắng, củ sắn, su su rồi cắt khúc dày 5cm. Cho toàn bộ nguyên liệu vào nồi cùng 1 lít nước rồi hầm trong 15 phút, sau đó vớt bỏ xác để được nước dùng rau củ.
2. Rửa sạch các loại nấm. Cắt bỏ chân nấm rồi cắt nhỏ vừa ăn.
3. Châm thêm nước cho đủ 1 lít nước dùng rồi nấu sôi trở lại. Khi nước sôi, cho tất cả nấm đã sơ chế vào nấu nhỏ lửa trong 5 phút để nấm chín. Khi nấm chín thì nêm nếm gia vị cho vừa ăn rồi tắt bếp.
4. Nấu 1 nồi nước sôi, cho hủ tiếu vào trụng đến khi hủ tiếu mềm thì vớt ra, sau đó cho ra tô.
5. Thêm các loại nấm, xà lách, ớt sừng, và đậu hũ chiên, hành phi hành ngò cắt nhỏ rồi chang thêm nước lèo đậm đà, thơm ngon tự nhiên nữa là hoàn thành món ăn. Một món ăn đơn giản cho ngày chay. Chúc các bạn thành công với món ăn này.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0231', N'Nui rau củ', '1', N'https://navicdn.com/nakk/images_article/2019/05/28/cach-nau-nui-chay-7.jpg', N'1. Rửa sạch cà rốt, củ sắn, su su, củ cải rồi bào vỏ, cắt lát hoặc cắt thanh vừa ăn.
2. Cho nước vào nồi, thêm cà rốt, củ sắn, su su, củ cải vào rồi bật bếp nấu 20 phút cho củ quả chín.
3. Khi củ quả đã chín mềm thì nêm nếm các gia vị gồm: đường, nước tương, hạt nêm chay Knorr, muối cho vừa vị của mình rồi nấu thêm 3 phút thì tắt bếp.
4. Cho nui vào nồi nước sôi nấu chín rồi vớt ra cho vào tô.
5. Thêm rau củ, đậu hũ các loại vào tô, thêm nước lèo thơm ngon là hoàn tất món ăn. Món ăn sẽ ngon hơn nếu dùng kèm lá hoành thánh chiên, giá, xà lách xoong, hành ngò cắt nhỏ. Chúc các bạn ngon miệng nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0232', N'Bí đao kho sả', '1', N'https://cdn.tgdd.vn/Files/2021/10/17/1391048/huong-dan-lam-bi-dao-kho-sa-ot-thom-ngon-don-gian-de-lam-tai-nha-202110171233119306.jpg', N'1. Cắt khúc sả cây, cắt lát 1 ít ớt sừng. Cho dầu vào nồi, thêm sả, ớt vào xào đến khi sả thơm.
2. Bí đao rửa sạch rồi bào bỏ vỏ, sau đó cắt thành các khúc dày vừa ăn. Khi sả đã thơm thì cho bí vào xào sơ, sau đó cho tất cả gia vị cùng lượng nước xăm xắp mặt bí rồi kho với lửa nhỏ.
3. Khi bí đao chín mềm, thấm xốt đậm đà và nước xốt kho sệt lại, vị vừa ăn thì tắt bếp.
4. Cho bí đao kho sả ra dĩa, thêm 1 chén cơm nóng nữa là tuyệt cú mèo. Đừng nghĩ món chay là không ngon miệng nhé. Chúc các bạn thành công theo công thức của mình.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0233', N'Mì quảng gà chay', '1', N'https://amthucdochay.com/wp-content/uploads/2021/05/23184-768x632.gif', N'1. Nấu 1 lít nước dùng gồm rau củ cắt, hầm cho nước ngọt. Cho 2 muỗng dầu phộng cho nóng rùi đập củ nén phi cho lên mùi. Đập 1 khúc nghệ nhỏ phi chung củ nén cho thơm. bỏ hỗn hợp vào nước dùng. Bật lửa nhỏ cho rau củ ra hết nước ngọt. Mì quảng kì này có tí biến tấu không ăn chung bánh đa hoặc đậu phộng. Mình sử dụng vài sợi mì quảng tươi đem chiên vỡi dầu phộng cho giòn vàng như hình.
2. Nhặt sạch rau sống, rửa sạch, giũ ráo nước.
3. Mì bắt ra tô nêm nước dùng 2 muỗng knorr, 2 muỗng đường, 1/2 muỗng muối ( hoặc 2 muỗng nước mắm chay, nếu cho thì giảm muối lại tí). Nếu có đường phèn nhuyễn càng tốt. Người trung ăn kiểu mì Quảng trộn ít nước nếu muốn nhiều màu thì cho 1 muỗng hạt dầu điều. Nhớ là gà đã làm sắn bỏ vào nước dùng cho ngọt và nóng. Trước khi múc ra tô ở cách làm gà bài trước mình đã chia sẽ. Đem ra trang trí mì Quảng chiên lên hoặc bóp nhuyễn bạn ăn sẽ cảm giác giòn như bánh đa, vị béo như đậu phộng được chiên từ dầu phộng. Rau sống gồm bắp chuỗi, cải con, húng lũi.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0234', N'Miến xào thập cẩm chay', '1', N'https://cdn.tgdd.vn/Files/2021/08/27/1378221/cach-lam-mien-xao-chay-thap-cam-thom-ngon-khong-bi-dinh-202108271135159930.jpg', N'1. Miến dong ngâm nước lạnh 20 p cắt ngắn. Nấm hương, nấm mèo ngâm nước lạnh, cắt chân rửa sạch thái chỉ. Cà rốt, su hào gọt vỏ rửa sạch thái chỉ. Giá đậu tương rửa sạch để riêng. Cần tây nhặt rễ, rửa sạch cắt khúc 5 cm. Ướp miến với chút dầu ăn, rồi trộn đều miến với su hào, cà rốt, nấm mèo, nấm hương.
2. Đặt chảo lên bếp làm nóng chảo cho dầu ăn vào. Dầu sôi cho miến vào xào với lửa lớn đảo đều 1 lúc, cho giá đậu tương, hạt nêm đảo nhanh tay. Cho 1/2 bát nước lọc vào đảo đều với lửa vừa. Nêm nếm để điều chỉnh theo khẩu vị rồi cho cần tây cắt khúc vào tắt bếp.
3. Món miến xào thập cẩm chay này ăn nóng rất ngon. Những buổi sáng chưa biết nấu gì ngon cho cả nhà thì hãy triển ngay cách làm miến xào thập cẩm chay này này nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0235', N'Canh nấm ngũ sắc', '1', N'https://www.hoidaubepaau.com/wp-content/uploads/2016/03/canh-nam-ngu-sac.jpg', N'1. Cà rốt gọt vỏ, rửa sạch rồi thái khoanh tròn nhỏ và ngâm vào nước lạnh. Nấm đông cô, nấm rơm, nấm tuyết, nấm bào ngư cắt chân, rửa sạch. Nấm đông cô thái miếng vừa ăn. Nấm rơm cắt làm đôi. Nấm tuyết ngâm nước cho nở rồi cắt nhỏ. Bắp trái căt khoanh. Đậu hũ cắt miếng vừa ăn. Bắp non rửa sạch, để ráo.
2. Làm nóng chảo với 1 ít dầu mè, cho các loại nấm vào xào nhanh tay. Nêm vào chảo một ít muối và hạt nêm chay, đảo đều để nguyên liệu thấm gia vị. Sau đó đổ nước vào chảo đun sôi.
3. Đến khi nước sôi, thả tiếp vào chảo cà rốt,bắp trái cắt khoanh và bắp non. Nấu chín rồi cho đậu hủ và bông hẹ vào. Nêm nếm gia vị lại một lần nữa cho vừa ăn.
4. Cắt hành ngò thật nhuyễn. Múc canh vào tô sứ. Rắc hành ngò và rắc ít tiêu lên mặt và thưởng thức.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0236', N'Cơm hoa đậu biếc chiên rau củ', '1', N'https://img-global.cpcdn.com/recipes/cbb907528d6222c8/1360x964cq70/c%C6%A1m-chien-hoa-d%E1%BA%ADu-bi%E1%BA%BFc-recipe-main-photo.webp', N'1. Hoa đậu biếc hãm nước sôi lấy nước nấu cơm. Vo gạo sạch chắt bỏ hết nước rồi cho nước đậu biếc vào nấu cơm. Cà rốt và ớt chuông cắt hạt lựu.
2. Cho 1 muỗng canh dầu thực vật vào chảo nóng phi hành boa rô, xào cà rốt trước rồi cho thêm ớt chuông vào xào cùng, sau đó cho cơm vào, xào đều cho cho cơm khô rồi cho gia vị muối, hạt nêm nấm hương, đường, tiêu xay cho vừa ăn. Hoàn tất.
3. Hoàn tất. Múc cơm ra thố để giữ nóng khi dùng, thêm ít xà lách và chén nước tương ớt nếu thích.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0237', N'Đậu hũ chiên giòn sốt xí muội', '1', N'https://image.cooky.vn/recipe/g6/51718/s640/cooky-recipe-637131676747201170.JPG', N'1. Đậu hủ cắt miếng vừa ăn chiên vàng giòn, củ hành trắng cắt hạt lựu.
2. Làm nước xốt: cho ít dầu vào chảo cho củ hành và tất cả gia vị vào, nếm lại vừa khẩu vị, tắt bếp.
3. Rưới nước xốt lên đậu hủ ăn kèm với cơm hoặc ăn không đều ngon. Đậu hủ giòn tan hoà nguyện với vị chua nhẹ đậm đà... lạ miệng ngon cơm.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0238', N'Rau muống xào chao', '1', N'https://image.cooky.vn/recipe/g5/48273/s640/recipe48273-cook-step5-636975756004892956.jpg', N'1. Chuẩn bị đầy đủ nguyên liệu. Bắt đầu món rau muống xào chao, nấm đùi gà bằng việc cắt nấm đùi gà thành từng khoanh tròn dày khoảng 2-3cm rồi cắt đôi.
2. Bắc nồi nước sôi, luộc sơ 300gr rau muống rồi ngâm vào nước lạnh.
3. Làm nước sốt chao bằng cách nghiền nhuyễn 150gr chao rồi cho 2 muỗng canh nước tương, 1 muỗng canh hạt nêm Maggi Nấm hương và 1/2 muỗng canh đường rồi khuấy đều đến khi hỗn hợp hòa quyện.
4. Bắc chảo nóng, phi thơm hành boa rô với 2 muỗng canh dầu ăn rồi sau đó cho nấm đùi gà vào xào săn trong 3 phút sau đó cho hỗn hợp sốt chao vào đảo đều và nấu đến khi nấm đùi gà ngấm đều sốt chao thì cho rau muống vào xào trong 4 phút.
5. Rau muống chín, dọn ra đĩa, ăn cùng cơm nóng. Rau muống giòn mát, điểm thêm vị ngọt của nấm đùi gà, quyện cùng mùi thơm và vị béo của chao khiến bữa cơm gia đình ngày chay đậm đà hơn hẳn. Vừa ngon miệng, vừa đơn giản, bạn còn chần chừ gì mà chưa thử?');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0239', N'Bí đao nhồi kho nước tương', '1', N'https://img-global.cpcdn.com/recipes/b8e3fba80dc30079/1360x964cq70/bi-dao-kho-chay-bi-kho-tau-recipe-main-photo.webp', N'1. Ngâm nở nấm mèo, rồi trụng qua nước sôi cho sạch, sau đó băm nhỏ. Ngâm nở bún tàu rồi cắt nhỏ 1cm.
2. Cho đậu hũ vào tô, thêm nấm mèo, bún tàu và 10gr hạt nêm chay Knorr vào trộn đều thành khối kết dính.
3. Bí đao bào vỏ, rửa sạch rồi cắt khúc dày 2cm. Khéo léo khoét bỏ ruột bí, nhồi nhân đã trộn vào trong.
4. Chuẩn bị một cái chảo, cho gia vị gồm : 5gr hạt nêm chay Knorr, 40ml nước tương, 10gr đường, tiêu xay, bột ớt, muối vào chảo, nấu tan gia vị.
5. Cho các khoanh bí nhồi vào chảo rim với lửa to 1 phút mỗi mặt để phần nhân cố định, sau đó thêm nước xăm xắp mặt bí, đậy nắp và rim nhỏ lửa đến khi bí chín, mềm, thấm vị thì tắt bếp.
6. Cho bí nhồi kho nước tương hấp ra dĩa, dùng kèm cơm nóng. Bí mềm, ngọt có phần nhân đậu hũ beo béo, nấm mèo dai dai, vị mằn mặn. Đừng nghĩ món chay là không ngon miệng nhé. Chúc các bạn thành công theo công thức của mình.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0240', N'Chả chay kho tiêu', '1', N'https://img-global.cpcdn.com/recipes/416cc7849d3c77c8/1360x964cq70/ch%E1%BA%A3-chay-kho-tieu-recipe-main-photo.webp', N'1. Cắt lát ớt sừng, rửa sạch tiêu xanh rồi cho ớt, tiêu xanh vào phi thơm cùng ít dầu ăn trong nồi.
2. Khi các nguyên liệu đã thơm thì thêm các gia vị gồm : nước tương, nước mắm chay, đường, hạt nêm chay Knorr, bột ngọt, tiêu cùng ít nước lạnh rồi nấu sôi.
3. Thêm chả chay cắt khối vừa ăn vào, kho nhỏ lửa khoảng 20 phút cho chả thấm gia vị, xốt cạn, sệt thì tắt bếp.
4. Cho chả chay kho tiêu ra dĩa, thêm chén cơm nóng nữa là tuyệt cú mèo. Đừng nghĩ món chay là không ngon miệng nhé. Chúc các bạn thành công theo công thức của mình.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0241', N'Mướp cháy tỏi', '1', N'https://cdn.tgdd.vn/Files/2019/07/18/1180290/chi-10-phut-co-ngay-mon-muop-xao-toi-thom-phuc-201907191139504189.jpg', N'1. Bào vỏ rồi rửa sạch, cắt lát mỏng mướp tùy thích. Đập dập tỏi rồi phi thơm với ít dầu ăn, sau đó cho mướp vào xào chín.
2. Nêm nếm vào mướp hạt nêm chay Knorr cho vừa ăn rồi đảo đều, tắt bếp. Lưu ý là chúng ta nên xào với lửa lớn để mướp không ra nước, mất chất dinh dưỡng nhé các bạn.
3. Cho mướp cháy tỏi ra dĩa rồi thưởng thức với cơm nóng. Chúc các bạn thành công theo công thức của mình.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0242', N'Nấm đùi gà sốt dầu hào', '1', N'https://trangvangnongnghiep.net/wp-content/uploads/2021/10/nam-dui-ga-min.jpg', N'1. Nấm rửa sạch, cắt lát mỏng, ướp hạt nêm.
2. Bắt chảo lên cho chút dầu vào, cho gốc hành vào phi thơm, sau đó cho nấm vào xào cho săn lại thì cho dầu hào và đường vào, đảo đều. Cho tiêu vào rồi tắt bếp.
3. Trình bày nấm đùi gà sốt dầu hào ra đĩa và thưởng thức nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0243', N'Chả quế chay kho tiêu', '1', N'https://image.cooky.vn/recipe/g6/51864/s640/recipe51864-cook-step3-637134074970701162.jpg', N'1. Chả quế và nấm cắt nhỏ vừa ăn
2. Bắt nồi nhỏ lên bếp, cho chút đâu ăn, gốc hành vào phi vàng. Sau đó cho chả, nấm vào xào săn lại rồi cho nước tương và các gia vị vào. Thêm chút nước lọc, để lửa riu riu. Nêm nếm lại cho vừa ăn. Cho hành và tiêu vào rồi tắt bếp.
3. Món chả quế chay kho tiêu này thưởng thức với cơm nóng là tuyệt nhất nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0244', N'Canh chua đậu hũ', '1', N'https://cdn.tgdd.vn/2020/09/CookProduct/Untitled-2-Recovered-1200x676-17.jpg', N'1. Sơ chế nguyên liệu
- Đậu hũ bạn rửa sạch, để ráo nước rồi cắt miếng vừa ăn và chiên vàng vỏ.
- Quả thơm bạn gọt vỏ, cắt miếng vừa ăn.
- Đậu bắp đậu rồng đậu đũa bạn cắt miếng vừa ăn.
- Cà chua rửa sạch, cắt miếng vừa ăn.
- Rau thơm rửa sạch, cắt nhỏ.
2. Nấu canh
- Cho 100 ml nước vào nồi nấu trên bếp. Bạn cho tiếp 1 muỗng cà phê muối vào để rau củ nấu được xanh hơn.
- Khi nước canh sôi, bạn cho vào đậu đũa vào nồi và cho tiếp thơm đã cắt miếng vào nấu chung.
- Nước canh sôi trở lại bạn cho tiếp phần khuôn đậu đã chiên vào nấu chung. Cho tiếp lần lượt đậu bắp và đậu rồng, cà chua vào nấu chung. Đến khi nước canh sôi thì nêm nếm gia vị vừa ăn và tắt bếp, cho nước cốt tắc vào.
3. Thành phẩm
Bạn múc canh chua đậu chay ra tô và rắc một ít rau thơm đã cắt lên mặt trên của tô canh.
Canh chua đậu chay thành phẩm có vị chua ngọt rất hấp dẫn, ăn kèm với các loại rau tươi ngon và thanh mát.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0245', N'Mì trộn chay', '1', N'https://image.cooky.vn/recipe/g6/50918/s640/cooky-recipe-637134035028152303.jpg', N'1. Sơ chế làm sạch tất cả các nguyên liệu. Cải ngọt bỏ những lá sâu và cắt khúc. Nấm rơm cắt bỏ đầu đen, ngâm nước muối, rửa sạch và cắt đôi. Cà rốt gọt vỏ và thái sợi cộng hơi dày. Đậu hủ rửa lại với nươc sôi và cắt khúc dài. Tỏi đập dập bằm sơ.
2. Đặt nồi nước lên bếp lần lượt luộc các loại rau củ và trụng mì. Do các loại rau củ có thời gian luộc khác nhau nên sẽ luộc riêng từng loại. Cà rốt là loại lâu chín nhất luộc trong 4 phút. Rau cải luộc trong khoảng 1 phút. Mì trụng trong khoảng 30 giây.
3. Tiếp đến đặt chảo lên bếp đợi chảo nóng cho dầu ăn vào và xếp từng miếng đậu hủ chiên giòn với lửa vừa các mặt là được.
4. Vẫn sử dụng chảo chiên đậu hủ cho tỏi băm vào đợi phi thơm và cho nấm rơm xào đều tay trên lửa vừa nêm 1 muỗng cà phê hạt nêm nấm Hương knorr trong vòng 1 phút. Sau đó cho đậu hủ đã chiên vào đảo sơ và tắt bếp.
5. Tiếp đến là bước làm nước sốt để trộn mì. Đặt chảo lên bếp đợi chảo nóng cho dâu và tỏi phi thơm. Lần lượt cho nước tương, cà phê hạt nêm nấm Hương Knorr, đường, tiêu và cho 1 tí nước để lửa nhỏ đến khi nước sốt hơi sệt lại.
6. Tất cả các nguyên liệu và nước sốt đã được chuẩn bị hoàn tất. Bây giờ chỉ việc trộn lên và thưởng thức thành quả nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0246', N'Đậu hũ hấp thái', '1', N'https://image.cooky.vn/recipe/g6/51667/s640/cooky-recipe-637130856643260979.jpg', N'1. Cắt nhỏ lá chanh thành sợi. Sả cắt thành lát mỏng rồi trộn đều cùng tương ớt, hạt nêm chay, đường, lá chanh và nước cốt chanh.
2. Cắt đậu hũ thành các khuôn vuông vừa ăn rồi cho vào chén sứ. Thêm xốt Thái lên mặt và thêm một ít lá húng quế.
3. Cho đậu hũ vào nồi và hấp trong vòng 5 phút với lửa lớn đến khi lá húng quế héo đi, đậu hũ nóng là có thể thưởng thức.
4. Đậu hũ hấp Thái đơn giản, dễ làm sẽ là một món ăn xế dành cho các bạn ăn chay. Đậu hũ béo, xốt Thái chua chua, ngọt ngọt thơm mùi thơm của sả, húng quế rất kích thích vị giác. Chúc các bạn thành công theo công thức của mình.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0247', N'Gà quay chay sốt tiêu', '1', N'https://amthucdochay.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Chicken-and-Bell-Peppers-Skillet-Primavera-Kitchen-2-1-300x157.jpg.webp', N'1. Gà chay ngâm nở, rồi để ráo nước, ướp cùng ngũ vị hương, dàu hào, tỏi, hạt tiêu trong vòng 20 phút. 2. Cho chảo lên bếp, thêm chút dầu ăn. Đợi dầu nóng, bạn cho gà vào áp chảo vàng hai mặt rồi để riêng
3. Cho dầu hào, nước dừa tươi, đường khuấy đều, rồi cho thêm giấm, nước tương vào, khuấy kỹ, sau đó cho lên bếp đun sôi.
4. Hòa bột năng vào nước lạnh cho tan, rồi đổ vào hỗn hợp nước sốt đang nấu, khuấy đều tay cho đến khi thấy sốt sệt lại thì cho tiêu sọ đập dập vào, nêm đường, bột nêm cho vừa miệng.
Rưới nước sốt tiêu đen lên phần gà chay quay chín vàng, dọn ra đĩa là xong.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0248', N'Súp khoai tây', '1', N'https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/thanh-pham-1196.jpg', N'1. Sơ chế nguyên liệu
Khoai tây sau khi mua về thì bạn rửa sạch vết bẩn trên vỏ, loại bỏ những phần bị hư. Sau đó dùng dao cắt thành những miếng nhỏ.

Hành lá thì bạn rửa sạch rồi cắt nhỏ.

2. Nấu khoai tây
Bạn bắc nồi lên bếp, sau khi nồi đã nóng lên thì cho 1 muỗng canh bơ vào.

Sau khi bơ đã tan ra thì cho tỏi băm nhuyễn vào phi đến khi tỏi ngả vàng.

Tiếp đến, bạn cho tất cả khoai tây đã cắt nhỏ vào nồi, rồi dùng vá đảo đều. Sau đó, bạn cho 1 muỗng canh bơ vào nồi và tiếp tục đảo đều.

Tiếp theo, bạn cho vào nồi 120ml nước ấm và 1 muỗng cà phê muối, đảo đều rồi đậy nắp lại và nấu trong khoảng 10 phút.

Sau 10 phút, nếu khoai tây chưa mềm thì bạn có thể thêm 120ml nước ấm và tiếp tục nấu đến khi khoai tây mềm thì tắt bếp.

3. Nghiền khoai tây
Bạn chia khoai tây thành những phần nhỏ và lần lượt cho vào máy xay sinh tố để nghiền.

Sau khoảng 2 phút, bạn cho thêm 100ml sữa tươi vào máy xay sinh tố để nghiền cùng khoai tây.

Sau khi nghiền xong, bạn đổ hỗn hợp ra tô.

4. Nấu súp
Đầu tiên, bạn bắc nồi lên bếp, rồi cho tất cả hỗn hợp khoai tây nghiền và 200ml sữa tươi vào nồi, nấu với lửa vừa.

Tiếp theo, bạn dùng vá khuấy đều hỗn hợp. Sau đó, cho 1/2 muỗng canh bơ vào nồi và tiếp tục khuấy đều đến khi các nguyên liệu hòa quyện.

Tiếp tục cho nốt 100ml sữa tươi còn lại và khuấy đều, bạn có thể điều chỉnh lượng sữa tươi để súp có độ sệt theo ý muốn.

Cuối cùng, bạn rắc vào súp 1 ít tiêu, 1 ít rau mùi tây khô là xong. Trước khi tắt bếp, bạn nhớ nêm nếm lại cho vừa với khẩu vị của mình nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0249', N'Lagu chay', '1', N'https://cdn.tgdd.vn/2020/09/CookProduct/Untitled-2-Recovered-1200x676-8.jpg', N'1. Sơ chế nguyên liệu
Nấm đông cô khô đem ngâm nước ấm cho mềm rồi rửa sạch.

Cà rốt và khoai tây gọt vỏ cắt miếng vừa ăn.

Rửa sạch đậu Hà Lan và nhặt bỏ các hạt hư hỏng. Nếu bạn dùng hạt khô thì tốt nhất nên ngâm trước khi nấu nhé.

Tàu hủ ky bẻ khúc vừa, rửa sạch bụi rồi chiên vàng giòn.

2. Nấu lagu chay
Phi thơm boa rô rồi cho nấm đông cô ngâm nở vào xào cùng ít hạt nêm.

Cho khoai tây cà rốt vào xào cùng sốt cà chua.

Nước dừa tươi bắt lên sôi, cho nấm đã xào vào. Rồi lần lượt cho cà rốt, khoai tây, đậu và tàu hủ ky vào nồi. Nêm hạt nêm, muối và đường phèn cho vừa khẩu vị. Rau củ chín tới thì tắt bếp.

3. Thành phẩm
Sự kết hợp từ rau củ với nước dừa tươi sẽ có món lagu thơm ngon, béo ngậy kết hợp cùng sự bùi thơm của khoai và cà rốt, đậu bo tạo nên sức hẫn dẫn không thê chối từ. Lagu chay ăn kèm bánh mì hoặc bún tươi đều rất ngon.
');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0250', N'Gỏi ngó sen', '1', N'https://wna.cdnxbvn.com/wp-content/uploads/2019/05/mon-goi-ngo-sen-an-cung-banh-phong-tom-chay.jpg', N'Rửa sạch và cắt sợi cà rốt, bắp cải tím, dưa leo, cắt khúc ngó sen nếu ngó sen lớn thì chẻ làm 2 hoặc 4. Băm nhuyễn 2 trái ớt, ngâm riêng cà rốt, ngó sen với 50 ml giấm và 1 muỗng canh đường, vớt ra vắt ráo. Chiên phồng tôm, và đậu hũ cắt sợi chiên vàng.
Pha nước mắm theo tỉ lệ: 3 muỗng canh nước mắm, 3 muỗng canh đường, 3 muỗng nước cốt chanh, ớt băm.
Cho các thành phần như bắp cải tím, dưa leo, cà rốt, ngó sen vào 1 tô lớn.
Sau đó, vừa trộn, vừa cho nước mắm vào đến khi vừa ăn, rồi mới cho đậu hũ vào trộn nhẹ để tránh nát đậu hũ.
Để món gỏi ra dĩa thưởng thức, ăn kèm với bánh phồng tôm chay.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0251', N'Cơm chiên hoàng hậu chay', '1', N'https://wna.cdnxbvn.com/wp-content/uploads/2019/05/com-chien-hoang-hau-chay-vang-uom.jpg', N'1. Sơ chế hỗn hợp nấm và tạo màu vàng cho cơm chiên
Tất cả chỗ nấm bào ngư, nấm đông cô, nấm cây, cà rốt, dưa leo đều cắt hạt lựu. Bắc chảo lên bếp, đun nóng dầu ăn, rồi bạn cho các loại nấm vào xào khoảng 2 phút, nêm gia vị bằng 1 muỗng cà phê hạt nêm, 2 muỗng canh dầu hào chay. Tắt bếp, múc hỗn hợp nấm ra chén, để sang 1 bên. Bạn không cần xào chín dưa leo và cà rốt trước để giữ độ giòn khi ăn.
Chảo vừa xào ban nảy vẫn còn hơi nóng, bạn cho dầu điều vào và trộn với cơm trắng. Bạn không nên vặn lửa trở lại khi đang trộn cơm, điều này sẽ giúp sắc vàng từ dầu điều bám đều vào hạt cơm. Vừa trộn, bạn cũng tranh thủ nêm thêm 2 muỗng cà phê hạt nêm chay vào chảo.

2. Chiên cơm và tạo hình khối cơm bằng khuôn chuyên dụng
Trộn xong, bạn chỉnh lửa vừa rồi đổ thêm cà rốt dưa leo và đảo đều, để cơm nóng lên hoàn toàn thì cho chén hỗn hợp nấm đã xào vào. Duy trì trên bếp thêm khoảng 2 phút nữa là được. Chuẩn bị khuôn cơm chuyên dụng có đáy in chữ hay họa tiết hoa tùy theo ý thích. Sau đó, bạn múc cơm vào khuôn. Dùng nắp khuôn ấn xuống nhằm tạo độ bằng phẳng cho bề mặt cơm.
Úp ngược khuôn xuống dĩa, bạn sẽ có ngay 1 phần cơm hoàng hậu in hình chữ hay hoa văn tinh tế.
');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0252', N'Canh Rau Dền Nấm Linh Chi', '1', N'https://image.cooky.vn/recipe/g6/51727/s640/cooky-recipe-637132109333709590.jpg', N'1. Rau dền rửa sạch, để ráo rồi cắt nhỏ vừa ăn. Nấu sôi 1 nồi nước. Trong lúc chờ nước sôi, mình sẽ cắt bỏ gốc nấm linh chi rồi rửa sạch và để ráo.
2. Khi nước sôi lên thì cho nấm vào nấu sôi trở lại, sau đó thêm tiếp rau dền và nêm nếm gia vị vừa ăn nấu thêm 3 phút nữa thì tắt bếp.
3.Cho canh ra tô và thưởng thức. Canh rau dền nấm linh chi dễ thực hiện mà rất thanh mát đúng không các bạn. Chúc các bạn ngon miệng nhé.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0253', N'Cải chua xào nấm bào ngư', '1', N'https://image.cooky.vn/recipe/g6/51799/s640/cooky-recipe-637133034482280503.JPG', N'1. Cải chua rửa sạch, vắt ráo, cắt khoảng 1cm. Nấm rửa sạch vắt ráo, ướp 1 muỗng cafe hạt nêm.
2. Bắt chảo dầu lên, cho hành vào phi thơm. Sau đó cho nấm vào, đảo đều, rồi cho luôn cải chua vào, nêm các gia vị còn lại vào xào khoảng 2 phút thì cho cần tàu và tiêu vào.
3. Trình bày cải chua xào nấm bào ngư ra đĩa và thưởng thức thôi nào! Món cải chua xào nấm bào ngư ăn ngon, chống ngán dầu mỡ rất tuyệt.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0254', N'Canh đậu hũ nấm hẹ', '1', N'https://image.cooky.vn/recipe/g2/12625/s640/recipe-cover-r12625.jpg', N'1. Chuẩn bị nguyên liệu. Hẹ rửa sạch cắt khúc. Đậu hũ non cắt làm bốn. Hành boa rô cắt nhuyễn.
2. Cho nồi lên bếp cho dầu ăn vào nóng thì cho boa rô vào phi thơm và cho nước dùng vào nấu sôi thì cho nấm rơm vào và đậu hũ non vào khi đả sôi thì cho hạt nêm chay vào và cho hẹ vào nêm nếm cho vừa ăn.
3. Ngày rằm có món canh chay này thật hấp dẫn góp phần thêm phong phú thực đơn nhà!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0255', N'Canh rong biển đậu nấm', '1', N'https://img-global.cpcdn.com/recipes/029cd17b84871fc2/1360x964cq70/canh-rong-bi%E1%BB%83n-n%E1%BA%A5u-n%E1%BA%A5m-d%E1%BA%ADu-h%E1%BB%A7-h%E1%BA%A1t-sen-recipe-main-photo.webp', N'1. Chuẩn bị nguyên liệu. Cắt bỏ phần gốc của nấm rồi ngâm, rửa sạch.
2. Cắt nhỏ đậu, chiên vàng sơ 2 mặt. Lấy đậu ra thấm bớt dầu.
3. Bắc nồi nước, cho rong biển khô vào. Đến khi nước sôi lăn tăn, cho nấm và đậu vào. Nêm 2 muỗng canh hạt nêm Knorr nấm hương
4. Múc ra tô và thưởng thức thôi. Món canh này có thể ăn riêng, hoặc kèm cơm đều rất ngon.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0256', N'Cải thìa cà rốt xào mì căn', '1', N'https://image.cooky.vn/recipe/g6/51650/s640/cooky-recipe-637130631485130469.JPG', N'1. Nấu nước nóng trụng sơ mì căn, để ráo nước cắt khoanh chiên vàng giòn. Rau ngâm nước muối pha loãng rửa sạch. Cà rốt rửa sạch cắt khoảng 0,5 cm tỉa hoa ( tuỳ thích)
2. Phi thơm củ tỏi băm nhỏ cho cà rốt vào xào nêm gia vị thêm xíu nước, cà rốt vừa chín tới cho cải thìa vào xào nhanh tay, nếm lại vừa khẩu vị. Cho mì căn vào đảo đều thêm hành lá cắt khúc, ít tiêu tắt bếp ( vì mì căn rất dễ thấm gia vị).
3. Cho cải thìa cà rốt xào mì căn ra dĩa dùng nóng, mì căn cũng vừa thấm gia vị giòn giòn, rau củ cũng vừa chín tới rất ngon.
');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0257', N'Canh kim chi nấm đậu hũ non', '1', N'https://image.cooky.vn/recipe/g6/51626/s640/cooky-recipe-637130236961991445.JPG', N'1. Nấm cắt gốc ngâm nước muối pha loãng rửa sạch. Đậu hủ non cắt miếng vừa ăn.
2. Phi thơm củ hành xắt nhỏ xào nấm nêm gia vị, cho lượng nước đủ dùng vào nấu. Cho tiếp kim chi và đậu hủ vào luôn để thấm gia vị, nước canh sôi nêm nếm lại vừa khẩu vị, để sôi vài lượt hớt bỏ bọt, xong.
');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0258', N'Bắp cải cuộn nấm sốt nước tương', '1', N'https://image.cooky.vn/recipe/g6/51287/s640/cooky-recipe-637129647923567301.jpg', N'1. Nấm bào ngư ngâm nước pha muối rồi rửa sạch vắt ráo cắt nhuyễn, cà rốt 1/2 củ cắt nhuyễn, nấm đông cô ngâm nở rửa sạch cắt nhuyễn. Hành ba rô rửa sạch cắt nhuyễn, trộn tất cả với nhau, nêm 1 muỗng cà phê hạt nêm knorr nấm hương, 1 xíu tiêu.
2. Bắp cải tách lá lớn cắt bớt phần sóng rồi rửa sạch trụng qua nước sôi cho mềm. 1/2 củ cà rốt bào sợi mỏng ngâm vô nước pha muối cho mềm để cột cuốn bắp cải. Trải lá bắp cải ra múc nhân lên rồi gói lại, dùng dây cà rốt để cột.
3. Xếp những cuốn bắp cải vào dĩa đem hấp cách đây 5 phút. Làm sốt nước tương: cho 1 muỗng canh dầu ăn vào chảo phi thơm hành ba rô, cho lên 1 muỗng canh nước tương, 1/4 muỗng cà phê hạt nêm knorr nấm hương, 1 muỗng cà phê đường, pha 1/2 muỗng cà phê bột bắp với xíu nước cho lên để sốt sệt lại. Nêm nếm cho vừa ăn rồi chan sốt này lên bắp cải cuộn.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0259', N'Bánh hỏi thịt xiên chay', '1', N'https://image.cooky.vn/recipe/g6/51609/s640/cooky-recipe-cover-r51609.jpg', N'1. Thịt chay ngâm cho nở ra. Tầm 10 phút vớt ra vắc đề ráo, xé ra nhiều lát mỏng. Nước ướp với 3 miếng thịt chay như hình thì sử dụng: 2 muỗng dầu điều, 2 muỗng bột nêm từ nấm, 1 muỗng rượu mai quế lộ, 1/2 muỗng ngũ vị hương, 2 muỗng nước tương, 1/2 đường, ươp trong 20 phút.
2. Bí cắt sợi khoảng hơn lóng tay, lấy ruột, ướp tí muối, tí bột ngọt để 5 phút. Lấy chảo chiên bí 2 mặt chín nhẹ bí trong như mỡ. Sau đó tiến hành cuộn thịt bên trong và lấy tăm xiên thành cuộn. Lấy chảo bật lên cho nóng đỗ dầu tầm 1/2 chén nước mắm dầu sôi chiên thịt trở điều tay. Vàng vớt ra dĩa.
3. Bánh hỏi xé lát mỏng. Phi boa rô làm mỡ hành thoa lên bánh hỏi cuộn thành từng cuộn. Rau sống bắt ra dĩa và xếp bánh hỏi và thịt ra mâm. Trang trí thềm hành phi hoặc đậu phộng tuỳ thích. Pha chén nước mắm chay chua ngọt. Nếu có giấm kiệu thì sử dụng sẽ thơm và ngon như đồ mặn. Xếp ra dĩa là đã hoàn tất. Mọi người thử làm nha! Chúc ngon miệng!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0260', N'Bò kho chay rau củ', '1', N'https://image.cooky.vn/recipe/g6/51597/s640/cooky-recipe-637129546438645300.png', N'1. Bò lát chay mua về ngâm mềm trong nước. Để tiết kiệm thời gian hơn, bạn có thể ngâm bò lát chay với nước nóng, bò lát chay sẽ nhanh mềm hơn. Tiếp đó bạn vắt ráo nước và ướp với 1/2 muỗng canh hạt nêm nấm hương chay Knorr, 1 muỗng cà phê tiêu xay.
2. Chuẩn bị làm sạch các nguyên liệu, sau đó: thái cà khoai tây, cà rốt, khoai môn vừa ăn, gừng tươi thái sợi nhuyễn.
3. Làm nóng dầu trong chảo, phi thơm tỏi và sả băm, hoa hồi, lá nguyệt quế và quế hồi sau đó cho bò lát vào, nêm đường, hạt nêm và xào săn vàng.
4. Tiếp đến, cho nước dừa tươi và các loại củ vào nấu trong khoảng 10 phút cho sôi bùng, trước khi tắt bếp, nhớ pha 1 muỗng cà phê bột năng với nước, cho từ từ vào nồi để bò kho chay sệt lại.
5. Bạn có thể ăn bò kho chay cùng cơm, bún hay bánh mì đều được, nhớ ăn nóng cùng một ít rau húng quế tươi để tăng thêm hương vị nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0261', N'Lâủ thái nấm chua cay chay', '1', N'https://image.cooky.vn/recipe/g6/51598/s640/cooky-recipe-637129553317597660.gif', N'1. Các nguyên liệu mua về các bạn rửa sạch . Nấm thì cắt lát mỏng vừa ăn, bông súng tước vỏ cắt khúc, rau muống nhặt rau rửa sạch, đậu hũ non cắt miếng, tàu hủ ky tươi rửa sạch và chần qua với nước sôi sau đó để ráo nước. Với phần nước dùng: Cà rốt gọt vỏ, cắt khúc, bắp lột vỏ cắt khúc, tương tự với củ cải trắng.
2. Cà chua múi cau, thơm cắt miếng, đối với phần thơm, các bạn cho vào, cho đường vào và bóp với đường cho thơm ra nước. Đừng ngại bóp nát nhen, vì làm bước này để nước của mình được thanh và ngon hơn.
3. Phần nước dùng mình nấu với các nguyên liệu đã chuẩn bị sẵn là cà rốt, củ cải trắng và bắp mỹ. Ninh trong 40ph để ra hết nước ngọt, sau đó vớt rau củ ra ngoài để bắt đầu nấu nước lẩu.
4. Cho phần sa tế ớt, dầu điều, thơm và nước cốt me vào phần nước dùng đã ninh. Đây là phần tạo độ cay, chua ngọt cho nước lẩu. Nấu sôi khoảng 5 phút.
5. Sau khi nước sôi lại, thả cà chua và bắt đầu nêm nếm cho vừa miệng với hạt nêm, cuối cùng cho sả cây đập dập cắt khúc vào nồi nước cho thơm. Nấu sôi lại nữa là nước lẩu đã sẵn sàng rồi.
6. Phần tàu hủ ky, mình thấm khô rồi chiên thành các miếng vừa ăn nhen. Sau khi múc ra nồi lẩu, mình cho thêm một ít hành boaro cho thơm nữa là xong.
7. Món lẩu thái chay này các bạn có thể dùng với mì hoặc bún nha. Cho rau, nấm, đậu hũ vào nồi, và thế là xì xụp với bạn bè rồi đấy.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0262', N'Bí ngòi xào nấm bào ngư', '1', N'https://image.cooky.vn/recipe/g6/51592/s640/cooky-recipe-637129511349957621.JPG', N'1. Nấm cắt gốc ngâm nước muối pha loãng rửa sạch. Bí ngòi rửa sạch, để nguyên vỏ cắt miếng vừa ăn.
2. Phi thơm củ tỏi bằm nhỏ xào nấm nêm gia vị, nấm vừa chín cho bí ngòi vào xào chung. Bí ngòi vừa chín tới (giòn giòn mới ngon) nếm lại vừa khẩu vị, cho ít tiêu, hành lá căt khúc vào tắt bếp.
3. Cho bí ngòi xào nấm bào ngư ra dĩa ăn với cơm hay ăn vã (ăn không) đều ngon. Miếng bí giòn ngọt thấm thơm mùi nấm hương... ngon đậm đà.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0263', N'Phở khô xào chay', '1', N'https://image.cooky.vn/recipe/g6/51594/s640/cooky-recipe-cover-r51594.jpg', N'1. Chuẩn bị và sơ chế nguyên liệu: nấm bào ngư rửa nước pha muối rồi rửa sạch, cắt lát mỏng, cà rốt gọt vỏ rửa sạch cắt mỏng, đậu cô ve tước xơ 2 bên rồi rửa sạch cắt xéo.
2. Phở khô ngâm nở rồi vớt ra rổ cho ráo. Bắc chảo với 2 muỗng canh dầu ăn cho ba rô cắt nhỏ lên phi thơm, cho nấm đùi gà lên xào với 1/2 muỗng cà phê hạt nêm chay knorr nấm hương, rồi cho đậu cô ve cà rốt lên xào sơ, tiếp tục cho cọng phở khô lên, nêm thêm 1/2 muỗng cà phê hạt nêm chay, 1 muỗng canh nước tương, xíu bột ngọt, xào liên tục cho cọng phở chín và thấm gia vị, nêm nếm lại cho vừa ăn, thêm xíu tiêu, boa rô cắt nhỏ cho thơm.
');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0264', N'Đậu bắp nấm hương kho tiêu', '1', N'https://image.cooky.vn/recipe/g6/51569/s640/cooky-recipe-cover-r51569.JPG', N'1. Đậu bắp rửa sạch, cắt khúc vừa ăn. Nấm hương ngâm mềm, nấm bào ngư rửa sạch, vắt ráo. Ướp nấm với 1 muỗng hạt nêm
2. Bắt nồi lên, cho dầu ăn vào, cho hành vào phi thơm. Sau đó cho nấm vào xào, nêm phần gia vị còn lại vào, cho thêm nửa chén nước lọc. Khi nước sôi thì cho đậu bắp vào, để lửa vừa đến khi đậu bắp chín. Cho hành tiêu vào rồi tắt bếp.
3. Trình bày món đậu bắp nấm hương kho tiêu ra đĩa và thưởng thức với cơm nóng nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0265', N'Cá bạc má chay kho cà', '1', N'https://image.cooky.vn/recipe/g6/51543/s640/cooky-recipe-637128677006648014.JPG', N'1. Cà chua rửa sạch. Nửa băm nhuyễn, nửa còn lại cắt làm 4. Cá bạc má chay đem rã đông.
2. Bắt nồi lên, cho dầu vào, dầu nóng thì cho gốc hành vào phi thơm, sau đó cho cà băm nhuyễn vào xào trước. Nêm hạt nêm, đường, dầu hào chay, nước mắm chay. Xào khoảng 2 phút thì cho nước dừa và phần cà cắt làm 4 và cá vào, để lửa riu riu cho cá thấm.
3. Nêm nếm lại vừa ăn, cho hành, tiêu, ớt vào rồi tắt bếp. Cùng thưởng thức thôi nào!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0266', N'Đậu Phụ Sốt Nấm Kim Châm', '1', N'https://image.cooky.vn/recipe/g6/54469/s640/2fc3c5f9-4db3-4ef5-b374-3a547028cddc.jpeg', N'1.Nấm cắt chân, rửa sạch, tách rời theo ý muốn.Đậu phụ cắt miếng vừa ăn. Hành lá rửa sạch, đầu hành băm nhuyễn, lá chẻ sợi hoặc thái nhỏ tuỳ ý.

2.Đun nóng dầu ăn cho đầu hành vào phi thơm, tiếp đó cho nấm vào đảo nhanh, rồi cho xì dầu vào đảo đều.

3.Cho đậu phụ vào đun 2 phút cho ngấm đều gia vị và bỏ tiếp hành lá vào và tắt bếp.

4.Cho thành phẩm ra đĩa và trang trí.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0267', N'Kho Chay Thập Cẩm', '1', N'https://image.cooky.vn/recipe/g1/38/s640/df8eb9f3-1df7-4252-ba38-667b4edfa956.jpeg', N'1.Sơ chế kho chay thập cẩm: Cà rốt , củ cải trắng, khổ qua, bắp cải cắt miếng vừa ăn. Dưa cải muối thái lát xéo, ngâm nước bóp thật kỹ cho ra bớt mặn, xả nước nhiều lần. Đậu đũa bẻ khúc. Nấm nhỏ khía trên thân, nấm to cắt đôi. Đậu hủ cắt thành miếng nhỏ. Măng luộc lại thêm vài lần cho khỏi đắng.

2.Cách làm kho chay thập cẩm: Bắt nồi lên bếp, cho vào 1 muỗng canh dầu ăn, cho hành băm vào phi cho thơm. Cho các thứ rau củ vào trước, xào thấm dầu

3.Cho nước dừa và tương hột vào.Nêm vừa ăn với nước tương và gia vị

4.Kho nhỏ lửa đến khi mọi thứ rau củ thấm mềm, nước kho còn một ít thì cho bắp cải vào sau cùng trộn đều. Nhắc xuống, dọn ra dĩa ăn với cơm nóng. Kho chay thập cẩm này làm thoáng cái là xong đúng không, hương vị đặc trưng không lẫn vào đâu được, lưu lại để ngày Tết hoặc rằm làm cho gia đình nhé!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0268', N'Mít Xào Chay', '1', N'https://image.cooky.vn/recipe/g6/53912/s640/1b67f4ca-c0d0-47d3-8fac-38073affbbce.jpeg', N'1.Luộc xơ mít 5 phút, vớt ra bỏ trong nước lạnh.

2.Đậu hủ chiên giòn và cắt bằng ngón út.

3.Hành Tây, ớt chuông và dưa leo cũng cắt sợi.

4.Cho hành tây, ớt chuông xơ mít vào xào trong 5 phút sau đó cho dưa leo, vào đậu hủ vào đảo nhanh tay say đó cho hỗn hợp nói trên vàotrộn đều. Bắc xuống cho ra đĩa.

5.Tất cả vẫn giữ độ giòn cùng hờn vị thơm ngon.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0269', N'Gỏi nấm chanh dây', '1', N'https://image.cooky.vn/recipe/g6/51642/s640/cooky-recipe-cover-r51642.JPG', N'1. Cà rốt, dưa chuột cắt thành sợi nhỏ dài (dưa chuột nhớ cắt bỏ phần ruột mềm). Sau đó cho vào một ít muối trộn đều để khoảng 5 phút, khi rau bắt đầu ra nước và xẹp xuống tiến hành vắt nhẹ tay cho ráo nước trong rau.

2.Nấm đùi gà rửa sạch rồi cắt thành sợi nhỏ dài giống cà rốt, dưa leo. Chuẩn bị một nồi nước sôi. Khi nước sôi lên thì thêm 5gr hạt nêm chay Knorr nấm hương vào nấu tan. Thêm tiếp 200gr nấm đùi gà cắt sợi vào luộc trong vòng 2 phút. Vớt nấm ra rồi xả qua nước lạnh để nấm mau nguội. Cho nấm vào túi vải, vắt vừa tay để nấm ráo nước.

3.Cắt lát mỏng đậu hũ trắng. Chuẩn bị chảo dầu, cho từng lát đậu hũ vào chiên ngập dầu đến khi vàng 2 mặt thì vớt ra, thấm ráo dầu. Cắt đậu hũ đã chiên thành các sợi nhỏ.

4.Bây giờ mình sẽ làm xốt trộn gỏi từ chanh dây. Cắt đôi trái chanh dây, dùng muỗng nạo phần ruột chanh dây (100gr) cho vào chảo Thêm vào gia vị gồm: 20gr hạt nêm chay Knorr nấm hương, 30ml nước mắm chay, 80gr đường cát trắng, khuấy đều rồi cho chảo chanh dây lên bếp đun sôi nhỏ lửa đến khi gia vị tan thì tắt bếp để nguội.

5.Trộn tất cả các nguyên liệu: cà rốt, dưa leo, nấn, đậu hũ, rau răm, ớt sừng cắt sợi với nhau, chan xột trộn chanh dây và bóp gỏi cho thấm gia vị. Rắc hạnh nhân rang vàng, hành phi lên cùng và thưởng thức món gỏi hấp dẫn này cùng bánh đa nướng vị dừa các bạn nhé.

6.Nhìn dĩa gỏi nấm chanh dây trong hấp dẫn chưa kìa. Gắp gỏi vào một miếng bánh da giòn rụm, cho vào miệng để cảm nhận tất cả hương vị đặc biệt bùng nổ trong khoang miệng. Thật là món gỏi ngon tuyệt cú mèo!!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0270', N'Bí Ngòi Nhồi Nấm Sauce Dầu Hào Chay', '1', N'https://image.cooky.vn/recipe/g5/49895/s640/cooky-recipe-637129739033070499.jpg', N'1.Nấm mèo ngâm nở rồi băm nhuyễn. Cho đậu hủ non, nấm mèo, ½ muỗng cafe muối, ½ muỗng cafe tiêu, ½ muỗng canh hạt nêm chay nấm hương vào tô lớn. Tán nhuyễn hỗn hợp cho đều gia vị để làm nhân nhồi.

2.Bí ngòi rửa sạch, cắt khúc vừa ăn và khoét lỗ có đáy. Đun nước vừa nóng để trụng sơ bí ngòi trước, vớt ra để ráo rồi mới nhồi hỗn hợp đậu hủ đã chuẩn bị.

3.Làm nóng chảo với một ít dầu ăn, cho sả cây đập dập vào phi thơm. Sau đó cho thêm 1 muỗng canh dầu hào chay, 1 muỗng canh nước tương, ½ muỗng canh đường và thêm 50ml nước lọc. Đun sôi sốt thêm 2 phút.

4.Cho bí ngòi đã nhồi vào chảo rồi đậy nắp, đun lửa nhỏ hấp cho bí ngòi vừa chín trong vòng 5 – 7 phút. Không nên đun lửa lớn hoặc để quá lâu, bí ngòi dễ bị mềm sẽ không ngon. Sau khi nấu xong, cho thành phẩm ra đĩa và thưởng thức.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0271', N'Salad thịt bò xào chay', '1', N'https://image.cooky.vn/recipe/g6/51415/s640/cooky-recipe-637124487669812231.jpg', N'1.Sơ chế: Thịt bò chay ngâm nở mềm. Xà lách ngâm nước muối loãng sau đó rửa lại nước sạch. Bắp cải và cà rốt bào sợi, rửa qua nước lạnh rồi cất tủ mát giữ độ giòn của rau củ. Sả và ớt băm nhỏ. Thịt bò chay cắt thanh dày 1cm, ướp thịt với 2 muỗng canh dầu hào, 1 muỗng canh nước tương, 1 muỗng canh hạt nêm knorr nấm hương, 1 muỗng cà phê đường, 1 muỗng cà phê ớt bột, 1 muỗng cà phê dầu mè. Trộn đều ướp 15 phút cho thịt thấm vị.

2.Làm nóng chảo với 2 muỗng canh dầu thực vật, cho sả ớt băm vào xào thơm vàng. Trút tô thịt đã ướp vào xào đều 3 phút là hoàn tất.

3.Pha xốt salad: 1 muỗng canh giấm gạo, 2 muỗng canh nước tương đậu nành, 3 muỗng cà phê đường, 3 muỗng cà phê dầu mè, 1 muỗng cà phê mè rang. Khuấy đều.

4.Trình bày: xếp xà lách ra đĩa, lấy rau trong tủ ra trộn đều rồi trải lên xà lách, gắp thịt bò xào đặt lên, thêm ít lá bạc hà. Khi dùng thì rưới sốt và thưởng thức thôi!!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0272', N'Mì Căn Xào Cà Ri Sả Ớt', '1', N'https://image.cooky.vn/recipe/g6/51489/s640/cooky-recipe-637127875059757273.JPG', N'1.Mì căn mua về chiên vàng hoặc có thể mua chiên sẵn, cắt miếng vừa ăn. Sả, tỏi, ớt bằm nhuyễn.

2.Cho ít dầu vào chảo, cho tỏi sả ớt vào xào thơm rồi tiếp theo cà ri. Cho mì căn vào xào nêm gia vị đảo đều trên lửa nhỏ. Mì căn thấm đều gia vị, nếm thử lại vừa khẩu vị. Mì căn vừa khô ráo tắt bếp.

3.Cho mì căn xào cà ri sả ớt ra dĩa ăn với cơm nóng, có thể ăn kèm với dưa leo. Mì căn vừa dai mềm thấm vị thơm ngon. Hãy làm thử bạn sẽ thích ăn như mình ^.^');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0273', N'Thịt chay khìa nước dừa', '1', N'https://image.cooky.vn/recipe/g6/51460/s640/cooky-recipe-637126997205274450.JPG', N'1.Bắt chảo lên bếp, cho 2 muỗng canh dầu. Dầu nóng thì cho hamburger vào chiên vàng.

2.Sau đó cho nước dừa vào. Nêm hạt nêm, đường, xá xíu vào và rim cho đến khi cạn nước.

3.Có thể ăn kèm với cơm, hoặc ăn với bún thịt nướng, bánh hỏi,...');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0274', N'Tacos xà lách nấm đậu', '1', N'https://image.cooky.vn/recipe/g6/51457/s640/cooky-recipe-637126952557144485.JPG', N'1.Chuẩn bị nguyên liệu: Rửa sạch nấm, rau, cà chua bằng nước muối và nước sạch. Nấm mình xé thành sợi nhỏ (như xé thịt gà). Rau xà lách mình tách từng lá để nguyên và bỏ phần cuống. Đậu hủ sợi rửa sạch.

2.Cà chua bỏ hạt, cắt hạt lựu. Cho dầu vào chảo, dầu nóng đổ cà chua vào xào, cho thêm 1 ít nước. Thêm 1/2 thìa cà phê muối, 2 thìa cà phê đường, 1 thìa cà phê hạt nêm. Khi nếm vừa ăn và sốt hơi đặc lại thì tắt lửa. (Có thể dùng thêm bột bắp để tạo độ sệt cho sốt)

3.Tương tự, khi chảo dầu nóng, cho nấm vào xào chín, cho đậu hủ sợi vào, thêm 1 thìa cà phê nước tương, 2 thìa cà phê đường, 1 thìa cà phê hạt nêm. Tuỳ chỉnh cho vừa khẩu vị thêm rồi xào đến khi cạn nước thì tắt lửa cho ra dĩa.

4.Khi ăn mình lấy miếng xà lách, lật phần lá ngửa ra, cho nấm đậu vào, thêm ít sốt chà chua lên trên, rắc thêm ít ngò rồi kẹp lại ăn như kiểu bánh tacos. Thường dùng để khai vị nhẹ để vào món chính.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0275', N'Bún ram khô chay', '1', N'https://image.cooky.vn/recipe/g6/51461/s640/cooky-recipe-637127003351129037.JPG', N'1.Sơ chế nguyên liệu: Rửa sạch rau củ bằng nước muối và nước lạnh. Khoai lang bào sợi nhỏ (ngâm vào nước muối loãng để tránh khoai bị đen). Cho 1 ít hạt nêm knorr và tiêu vào trộn đều lên, rồi cuốn với bánh tráng thành từng cây nhỏ như cuốn chả giò. Cuốn lần lượt đến hết khoai lang, rồi mang đi chiên.

2.Chiên ở lửa vừa để tránh bị cháy ở ngoài mà khoai chưa chín. Phù trúc tươi xé nhỏ thấm khô nước mang đi chiên vàng. Tương tự chiên sơ chả đậu lại (vì đã chín sẵn) xong cắt thành từng lát mỏng.

3.Đậu hủ sợi và nấm đùi gà cắt thành que nhỏ, ướp với 1 thìa canh ớt sa tế, 1 thìa cà phê muối, 3 thìa cà phê đường, 1 thìa cà phê hạt nêm, 2 thìa cà phê nước tương trộn đều để 15 phút cho thấm gia vị. Cho dầu vào nồi, dầu nóng đổ hành boa rô vào phi thơm, cho đậu và nấm và thêm 1 ít nước vào kho. Nếm gia vị lại cho vừa ăn, khi nước vừa cạn thì tắt bếp.

4.Làm nước tương: Cà chua bỏ hạt thái hạt lựu, phi hành boa rô vàng thơm thì cho cà chua vào xào mềm, cho 5 thìa canh nước tương, 4 thìa canh đường, 2 thìa cà phê muối, 1 thìa cà phê hạt nêm với 200ml nước lọc khuấy đều và nấu sôi rồi tắt lửa. (Điều chỉnh cho vừa với khẩu vị ăn của mình.)


5.
Các loại rau rửa sạch thái nhỏ, cho bún vào tô, lần lượt cho rau, chả đậu chiên, đậu nấm kho, phù trúc chiên giòn, đồ chua vào.


6.
Thêm 1 ít đậu phộng, khi ăn chan nước tương lên trộn đều và măm thôi. Ngon tuyệt cú mèo luôn. Chúc các bạn ngon miệng.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0276', N'Canh bí đỏ nước cốt dừa', '1', N'https://image.cooky.vn/recipe/g6/51444/s640/cooky-recipe-637126339302215950.jpg', N'1.Bí đỏ về gọt vỏ bỏ ruột cắt nhỏ còn thích thì để nguyên trái để trang trí.

2.Đậu phộng ngâm nước xong đem đi luộc cho mềm và bóc vỏ bỏ đi.

3.Bắt nồi nước nấu sôi cho trái bí nguyên trái vào luộc chín vớt ra. Cho bí cắt nhỏ và đậu phộng vào nấu cho bí chín.

4.khi bí chín nêm gia vị hạt nêm nấm, muối và đường cho vừa ăn. Xong cho nước cốt dừa vào để lửa nhỏ sôi nhẹ lên tắt bếp.

5.Canh này ăn vị béo béo và ngọt nhiều hơn mặn nhé. Múc ra trái bí và ăn thôi hiiii');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0277', N'Đậu hũ chiên mỡ hẹ', '1', N'https://image.cooky.vn/recipe/g6/51649/s640/cooky-recipe-637130621073350253.jpg', N'1.Đậu hủ cắt miếng to bản, dày 1.5cm. Hẹ rửa sạch và cắt nhỏ. Xà lách ngâm nước muối loãng rồi rửa sạch. Cà chua rửa sạch cắt khoanh.

2.Đun nóng dầu, múc 3 muỗng canh dầu nóng cho vào chén hẹ, nêm vào chén mỡ hẹ 1 muỗng cà phê hạt nêm knorr nấm hương và 1/3 muỗng cà phê muối, khuấy tan. Cho đậu hũ vào chảo dầu nóng chiên vàng giòn, sau đó gắp ra dĩa cho ráo dầu.

3.Xếp đậu hũ chiên ra đĩa, rưới dầu hẹ lên đậu hũ, rắc thêm ít bột ớt nếu thích. Thưởng thức nóng như món ăn chơi hoặc như món mặn, cùng canh và cơm nóng. Chúc mọi người ngon miệng!!');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0278', N'Măng tây xào nấm hương cà rốt baby', '1', N'https://image.cooky.vn/recipe/g6/51451/s640/cooky-recipe-637126759293633563.JPG', N'1.Măng tây bào phần già ở gốc, cắt khúc, cà rốt baby cạo sơ phần vỏ, nấm hương ngâm nước muối pha loãng. Rửa sạch tất cả nguyên liệu.

2.Nấu nước cho xíu muối, nước sôi cho cà rốt baby vào khoảng 2 phút cho tiếp măng tây vào nước vừa sôi vớt cả 2 ra ngâm vào nước lạnh (cho rau được giòn). Băm nhỏ tỏi làm tỏi phi.

3.Cho ít dầu vào chảo phi thơm ít tỏi băm nhỏ xào nấm nêm gia vị và xíu nước. Cho tiếp măng tây và cà rốt baby vào xào chung, nêm nếm lại vừa khẩu vị. Nguyên liệu thấm đều cho thêm tiêu vào tắt bếp.

4.Cho măng tây xào nấm đông cô cà rốt baby ra dĩa thêm tỏi phi lên trên chấm kèm với nước tương. Măng tây, cà rốt baby giòn giòn thơm mùi đặc trưng hoà nguyện với mùi nấm hương thấm vị... ngon đậm đà, ăn với cơm hay ăn vã (không) đều ngon.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0279', N'Đậu hũ chiên sốt cà chua ngọt', '1', N'https://image.cooky.vn/recipe/g6/51394/s640/cooky-recipe-cover-r51394.jpg', N'1.Thái đậu hũ thành miếng, cà chua bỏ vỏ sắt hạt lựu, hành thái nhỏ.

2.Cho đậu hũ lên rán vàng.

3.Đổ cà chua vào nồi đun sủi rồi đánh nhuyễn sau đó cho đậu hũ đã rán vàng vào, nêm hạy nêm knorr nấm hương chay rồi đảo đều lên, đun một lít cho sôii sau đó thả hành thái nhỏ vào ta được món đậu sốt cà chua ngon tuyệt. Cho lên đĩa và ăn cùng bạn bè thôi.');
insert into MONAN (MaMonAn, TenMonAn, LoaiMonAn, HinhAnh, CachThucHien) values ('MA0280', N'Thịt kho tàu chay', '1', N'https://image.cooky.vn/recipe/g6/51397/s640/cooky-recipe-637123732635946387.JPG', N'1.Sườn non chay ngâm mềm, xé nhuyễn, trộn chung với giò sống và ướp hạt nêm, đường, muối, tiêu, hành (hoặc tỏi) phi. Trộn tất cả lại với nhau, dùng tay nhồi cho sườn non tơi ra.

2.Dùng 1 cái khay (xửng) lót giấy bạc đều đáy khay, cho ít dầu ăn vào tán đều. Cho 500ml nước lọc vào bột năng, cho 1 muỗng cafe hạt nêm và 2 muỗng canh dầu ăn vào bột để tạo mỡ và khuấy đều. Bánh mì bổ dọc, rưới bột năng lên cho ướt hết và để vào khay (như hình). Chia sườn non thành 2 phần, cho 1 phần vào lớp bánh mì, tán đều ra và ém cho chặt, sau đó chế bột năng lên cho đều và ướt hết sườn non. Tiếp tục cho lớp bánh mì (giống như lớp đầu), tiếp tục cho sườn non (giống như trên và chế bột năng cho ướt ổ bánh mì còn lại. Nếu còn dư bột năng thì chế hết lên sườn non, sau đó úp bánh mì lại cho kín rồi đem hấp 20 phút (tính từ lúc nước sôi). Sau 20 phút, lấy khay ra để nguội, rồi đem dằn 2 tiếng cho dẻ, sau đó chi vào ngăn mát tủ lạnh, để qua đêm.

3.Thịt ba chỉ chay sau khi đem từ ngăn mát tủ lạnh ra, đem cắt thành từng khúc, rồi đem chiên vàng đều.

4.Bắt nồi lên bếp, cho vào 2 muỗng canh dầu ăn, 1 muỗng canh đường để làm nước màu, sau đó cho nước dừa tươi vào (tuỳ lượng thịt nhiều hay ít). Sau đó nên đường, hạt nêm, nước mắm chay vào cho vừa ăn. Sau đó cho thịt ba chỉ chay vào nấu khoảng 10 phút (lưu ý, thịt chay không nên để trên lửa quá lâu vì sẽ bị bể ra)


5.
Trình bày ra đĩa và thưởng thức với cơm nóng và rau sống thôi nào!');

--data NGUYENLIEU
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL001', N'Cá nục');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL002', N'Cà chua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL003', N'Thơm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL004', N'Dầu ăn');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL005', N'Nước mắm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL006', N'Đường trắng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL007', N'Hạt nêm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL008', N'Tiêu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL009', N'Cá basa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL010', N'Tỏi băm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL011', N'Hành tím băm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL012', N'Hành lá');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL013', N'Muối');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL014', N'Trứng vịt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL015', N'Thịt vịt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL016', N'Tỏi ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL017', N'Gừng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL018', N'Ớt sừng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL019', N'Nước dừa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL020', N'Nước cốt chanh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL021', N'Bột ngọt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL022', N'Phi lê cá hồi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL023', N'Bơ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL024', N'Mật ong');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL025', N'Chanh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL026', N'Nước tương');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL027', N'Gà ác');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL028', N'Xuyên khung');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL029', N'Đỗ trọng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL030', N'Thục địa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL031', N'Củ mài');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL032', N'Táo đỏ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL033', N'Đương quy');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL034', N'Đẳng sâm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL035', N'Nhãn nhục');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL036', N'Kỷ tử');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL037', N'Rượu trắng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL038', N'Cơm nguội');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL039', N'Khô cá sặc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL040', N'Hành tây');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL041', N'Trứng gà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL042', N'Cá ngừ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL043', N'Sườn non');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL044', N'Ớt chỉ thiên đỏ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL045', N'Tiêu xanh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL046', N'Sốt kho tiêu CookyMade');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL047', N'Gà ta');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL048', N'Tương cà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL049', N'Cà rốt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL050', N'Khoai tây');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL051', N'Đậu trắng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL052', N'Đậu hà lan');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL053', N'Me');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL054', N'Pate');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL055', N'Cá thu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL056', N'Ớt bột');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL057', N'Bột Gia Vị Ướp Gà Rô Ti CookyMADE');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL058', N'Sốt Chiên Nước Mắm CookyMADE');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL059', N'Cánh gà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL060', N'Cá chẽm phi lê');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL061', N'Bột chiên giòn');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL062', N'Đường nâu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL063', N'Nước cốt me');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL064', N'Ớt băm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL065', N'Bí đỏ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL066', N'Tương ớt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL067 ', N'Phi lê cá ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL068', N'Ớt chuông đỏ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL069', N'Ba rọi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL070', N'Tôm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL071', N'Cơm dừa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL072', N'Sốt kho tiêu CookyMade');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL073 ', N'Xốt nêm thịt heo Knorr');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL074', N'Cá lóc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL075', N'Bầu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL076', N'Nấm mèo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL077', N'Miến');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL078', N'Dầu olive');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL079', N'Cá kèo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL080', N'Rau răm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL081', N'Giấm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL082', N'Mỡ heo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL083', N'Nước màu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL084', N'Nước');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL085', N'Mực ống');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL086', N'Đầu hành');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL087', N'Bột canh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL088', N'Mực ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL089', N'Dưa leo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL090', N'Sa tế');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL091', N'Sả băm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL092', N'Dầu hào');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL093', N'Đường thốt nốt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL094', N'Mì cay Hàn Quốc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL095', N'Tôm khô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL096', N'Nghêu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL097', N'Nước cốt tắc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL098', N'Xương heo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL099', N'Khô mực');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL100', N'Thịt heo băm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL101', N'Hủ tiếu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL102', N'Củ cải trắng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL103', N'Đưòng phèn');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL104', N'Hẹ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL105', N'Cần tây');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL106', N'Cần tàu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL107', N'Giá đỗ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL108', N'Hành tím ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL109', N'Bí đao');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL110', N'Ngò rí');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL111', N'Hạt nêm chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL112', N'Lòng đỏ trứng muối');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL113', N'Bột chiên xù');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL114', N'Bột mì');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL115', N'Cua đồng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL116', N'Sốt Kho Cải Chua CookyMADE');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL117', N'Cải chua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL118', N'Cá bạc má');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL119', N'Dầu điều');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL120', N'Thịt nạc dăm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL121', N'Nước cốt dừa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL122', N'Bột cà ri');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL123', N'Bột nghệ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL124', N'Ớt sa tế');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL125', N'Muối tôm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL126', N'Trái tắc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL127', N'Lá chanh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL128', N'Đậu hũ non');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL129', N'Bơ lạt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL130', N'Cá hường');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL131', N'Cá chim');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL132', N'Sả');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL133', N'Bột ngũ vị hương');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL134', N'Cá lăng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL135', N'Măng chua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL136', N'Ngò om');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL137', N'Ngò gai');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL138', N'Cá bớp');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL139', N'Gạch cua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL140', N'Bún tươi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL141', N'Đậu hũ chiên');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL142', N'Huyết heo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL143', N'Bắp chuối');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL144', N'Rau muống');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL145', N'Rau kinh giới');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL146', N'Mắm tôm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL147', N'Đậu que');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL148', N'Chả lụa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL149', N'Sốt cà chua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL150', N'Thịt cua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL151', N'Dầu mè');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL152', N'Xương ống');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL153', N'Ức gà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL154', N'Nấm đông cô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL155', N'Bắp mỹ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL156', N'Bột năng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL157', N'Khoai sọ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL158', N'Cần nước');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL159', N'Bánh đa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL160', N'Chả cua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL161', N'Móng giò heo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL162', N'Nước hầm xương');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL163', N'Bánh canh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL164', N'Tim heo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL165', N'Gan heo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL166', N'Thịt xá xíu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL167', N'Bột bắp');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL168', N'Tỏi phi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL169', N'Xà lách');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL170', N'Cua biển');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL171', N'Mì Ý');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL172', N'Kem Whipping');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL173', N'Phô mai Ricotta ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL174', N'Gừng băm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL175', N'Trứng vịt muối');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL176', N'Bột gạo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL177', N'Củ năng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL178', N'Mù tạt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL179', N'Đậu hũ trứng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL180', N'Sữa tươi không đường');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL181', N'Bột phô mai');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL182', N'Xoài xanh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL183', N'Tương ớt Hàn Quốc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL184', N'Thịt heo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL185', N'Măng tươi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL186', N'Củ riềng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL187', N'Khế');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL188', N'Giò sống');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL189', N'Rau nhút');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL190', N'Gạo nếp');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL191', N'Hàu sữa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL192', N'Sữa tươi ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL193', N'Sữa đặc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL194', N'Phô mai ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL195', N'Trứng bắc thảo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL196', N'Lòng đỏ trứng gà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL197', N'Trứng cút');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL198', N'Gạo ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL199', N'Mì Udon');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL200', N'Nấm kim châm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL201', N'Rong biển khô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL202', N'Cá mòi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL203', N'Bột Miso đậu tương');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL204', N'Ngò tây');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL205', N'Bạch tuộc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL206', N'SIro bắp');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL207', N'Sốt chua ngọt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL208', N'Dừa xiêm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL209', N'Mì quảng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL210', N'Nấm bạch tuyết');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL211', N'Nấm đùi gà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL212', N'Bánh mì chiên');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL213', N'Đậu phộng rang');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL214', N'Hành boa rô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL215', N'Húng lũi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL216', N'Bắp cải');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL217', N'Nước mắm chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL218', N'Cà chua bi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL219', N'Bún gạo lứt khô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL220', N'Nấm rơm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL221', N'Cải thìa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL222', N'Dầu hào chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL223', N'Đậu hũ trắng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL224', N'Tương hột');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL225', N'Ớt hiểm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL226', N'Nước cốt cam');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL227', N'Vỏ cam');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL228', N'Vỏ chanh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL229', N'Vani');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL230', N'Dâu tây');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL231', N'Kiwi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL232', N'Chuối');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL233', N'Cam');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL234', N'Nho');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL235', N'Tàu hũ ki');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL236', N'Nấm hương');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL237', N'Bông hẹ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL238', N'Nước dừa xiêm tươi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL239', N'Đậu xanh cà vỏ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL240', N'Gạo nếp cái hoa vàng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL241', N'Gấc chín');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL242', N'Rượu gạo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL243', N'Nước lá dứa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL244', N'Muối mè');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL245', N'Bắp nếp');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL246', N'Bánh tráng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL247', N'Mì quảng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL248', N'Nấm linh chi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL249', N'Bí ngòi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL250', N'Sườn non chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL251', N'Bông điên điển');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL252', N'Nước vo gạo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL253', N'Hủ thủy tinh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL254', N'Bánh phở');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL255', N'Cải thảo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL256', N'Quế thanh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL257', N'Đại hồi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL258', N'Thảo quả');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL259', N'Hạt ngò');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL260', N'Tiểu hồi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL261', N'Đinh hương');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL262', N'Húng quế');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL263', N'Nấm bào ngư');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL264', N'Vỏ hoành thánh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL265', N'Nấm mỡ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL266', N'Sốt gia vị chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL267', N'Sắn');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL268', N'Su su');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL269', N'Su hào');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL270', N'Thịt gà chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL271', N'Rau sống');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL272', N'Củ nén');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL273', N'Củ nghệ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL274', N'Bắp non');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL275', N'Nấm tuyết');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL276', N'Bắp hột');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL277', N'Tương xí muội');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL278', N'Chao');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL279', N'Bún tàu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL280', N'Chả lụa chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL281', N'Mướp khía');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL282', N'Chả quế chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL283', N'Đậu rồng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL284', N'Đậu đũa');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL285', N'Rau thơm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL286', N'Cải ngọt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL287', N'Mì vắt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL288', N'Rau mùi tây khô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL289', N'Ngó sen');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL290', N'Bắp cải tím');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL291', N'Bánh phồng tôm chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL292', N'Ruốc sấy');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL293', N'Ốc hương');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL294', N'Dưa cải chua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL295', N'Nước dùng chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL296', N'Mì căn');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL297', N'Bánh hỏi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL298', N'Rượu mai quế lộ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL299', N'Thịt bò chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL300', N'Mắm ruốc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL301', N'Khổ qua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL302', N'Kim chi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL303', N'Thịt gà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL304', N'Cà tím');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL305', N'Nui');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL306', N'Thịt bò');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL307', N'Sốt Mayonnaise ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL308', N'Rau mầm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL309', N'Lòng trắng trứng gà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL310', N'Khoai môn');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL311', N'Bánh tráng bía');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL312', N'Nước ngọt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL313', N'Thịt thăn heo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL314', N'Mè trắng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL315', N'Măng tây');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL316', N'Bông cải xanh');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL317', N'Rau dền');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL318', N'Lá lốt');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL319', N'Mắm nêm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL320', N'Bột tỏi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL321', N'Sốt tương đen');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL322', N'Tương Miso');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL323', N'Thính gạo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL324', N'Bông súng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL325', N'Phở khô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL326', N'Ca bạc má chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL327', N'Lòng non');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL328', N'Sụn heo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL329', N'Đùi ếch');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL330', N'Rượu Thiệu Hưng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL331', N'Ớt khô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL332', N'Quả sấu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL333', N'Ốc móng tay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL334', N'Sò lông');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL335', N'Ốc bươu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL336', N'Ốc lác');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL337', N'Ốc vặn');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL338', N'Tía tô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL339', N'Bánh mì');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL340', N'Ốc mỡ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL341', N'Ốc len');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL342', N'Lá ngải cứu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL343', N'Bia');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL344', N'Da cá hồi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL345', N'Sa tế tôm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL346', N'Kem chua');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL347', N'Cá cơm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL348', N'Rau mồng tơi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL349', N'Cải bẹ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL350', N'Gia vị bò kho');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL351', N'Chả cá thác lác');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL352', N'Măng khô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL353', N'Tôm sú tươi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL354', N'Cơm dẻo');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL355', N'Mè trắng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL356', N'Đùi gà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL357', N'Cá trắm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL358', N'Hoa hồi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL359', N'Mít non');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL360', N'Đậu bắp');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL361', N'Me chín');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL362', N'Chanh dây');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL363', N'Cá diêu hồng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL364', N'Thì là');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL365', N'Cá chẽm');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL366', N'Hắc xì dầu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL367', N'Cá mè trắng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL368', N'Hẹ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL369', N'Rượu sake');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL370', N'Cá chép');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL371', N'Nước dùng gà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL372', N'Cá hồi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL373', N'Cá bống');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL374', N'Cá trê');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL375', N'Bao tử cá');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL376', N'Hoa thiên lý');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL377', N'Muối hột');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL378', N'Nước mía');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL379', N'Gạo tẻ');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL380', N'Nước sốt mè rang');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL381', N'Cá ngừ hộp');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL382', N'Cá khoai');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL383', N'Kem phô mai');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL384', N'Cá rô phi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL385', N'Lạp xưởng');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL386', N'Giấm đen chay');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL387', N'Dầu cải');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL388', N'Sốt Teriyaki');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL389', N'Rượu vang');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL390', N'Thịt nạc');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL391', N'Thịt ếch');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL392', N'Coca Cola');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL394', N'Thanh quế');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL395', N'Bồ câu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL396', N'Hạt sen khô');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL397', N'Hành phi');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL398', N'Mè rang');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL399', N'Hạnh nhân');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL400', N'Lá bạc hà');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL401', N'Sốt xá xíu');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL402', N'Khoai lang');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL403', N'Cà rốt baby');
insert into NGUYENLIEU (MaNguyenLieu, TenNguyenLieu) values ('MNL404', N'Giò sống chay'); 

--data CTMA
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0071', 'MNL001', N'3 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0071', 'MNL002', N'1 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0071', 'MNL003', N'1/4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0071', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0071', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0071', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0071', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0071', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0072', 'MNL009', N'250 gram');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0072', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0072', 'MNL011', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0072', 'MNL012', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0072', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0072', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0072', 'MNL006', N'5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0072', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL015', N'1.8 Kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL014', N'5 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL016', N'5 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL019', N'500ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL020', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL005', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL013', N'2.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL006', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0001', 'MNL021', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0073', 'MNL022', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0073', 'MNL013', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0073', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0073', 'MNL023', N'30 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0073', 'MNL024', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0073', 'MNL026', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0073', 'MNL025', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0073', 'MNL004', N'70 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL027', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL028', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL029', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL030', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL031', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL032', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL033', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL034', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL035', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL036', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL019', N'700 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL017', N'20 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0002', 'MNL037', N'50 Ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL038', N'30 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL039', N'100 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL040', N'50 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL010', N'10 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL011', N'10 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL005', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0074', 'MNL012', N'10 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL042', N'400 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL003', N'150 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL002', N'100 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL019', N'300 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL016', N'10 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL011', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL007', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL006', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0075', 'MNL008', N'1/2 muỗng cà phê ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0003', 'MNL043', N'365 g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0003', 'MNL012', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0003', 'MNL044', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0003', 'MNL045', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0003', 'MNL046', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL047', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL048', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL050', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL051', N'20 g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL052', N'20 g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL040', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL011', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL016', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL054', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL013', N'25g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL007', N'25g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0004', 'MNL006', N'25g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL055', N'3 Con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL002', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL003', N'50 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL012', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL056', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL008', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL044', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL006', N'1,5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL011', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL004', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0076', 'MNL019', N'120 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0005', 'MNL057', N'26g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0005', 'MNL047', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0005', 'MNL026', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0005', 'MNL011', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0005', 'MNL010', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0006', 'MNL058', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0006', 'MNL012', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0006', 'MNL040', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0006', 'MNL018', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0006', 'MNL016', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0006', 'MNL059', N'400g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0077', 'MNL060', N'1 kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0077', 'MNL061', N'150 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0077', 'MNL062', N'200 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0077', 'MNL063', N'100 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0077', 'MNL005', N'30 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0077', 'MNL066', N'30 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0077', 'MNL010', N'10 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0077', 'MNL064', N'10 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL047', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL065', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL038', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL011', N'20 g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL012', N'20 g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL025', N'1 lát');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL013', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0007', 'MNL008', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0078', 'MNL067', N'300 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0078', 'MNL003', N'1/2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0078', 'MNL068 ', N'1/2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0078', 'MNL011', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0078', 'MNL016', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0078', 'MNL073', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0078', 'MNL061', N'50 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0078', 'MNL041', N'1 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0008', 'MNL069', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0008', 'MNL070', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0008', 'MNL071', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0008', 'MNL072', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0009', 'MNL069', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0009', 'MNL026', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0009', 'MNL004', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0079', 'MNL074', N'600gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0079', 'MNL075', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0079', 'MNL011', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0079', 'MNL012', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0079', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0079', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0079', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0079', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0079', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL075', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL074', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL076', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL077', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL012', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL021', N'0,5 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0080', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0081', 'MNL078', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0081', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0081', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0081', 'MNL022', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL079', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL080', N'70gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL081', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL016', N'60gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL012', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL006', N'80gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL005', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL007', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL013', N'25gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL008', N'3gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0082', 'MNL018', N'5 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL079', N'400gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL082', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL080', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL081', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL056', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL083', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL084', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0083', 'MNL044', N'7 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0010', 'MNL072', N'70g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0010', 'MNL012', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0010', 'MNL069', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0010', 'MNL044', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0010', 'MNL019', N'150ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL001', N'700gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL002', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL149', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL019', N'300ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL012', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL016', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL011', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL056', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL044', N'10 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL006', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0084', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0011', 'MNL116', N'60g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0011', 'MNL069', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0011', 'MNL040', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0011', 'MNL012', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0011', 'MNL044', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0011', 'MNL108', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0011', 'MNL016', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0011', 'MNL117', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL118', N'3 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL002', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL012', N'2 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL019', N'400ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL016', N'3 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL011', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL018', N'4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0085', 'MNL119', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0086', 'MNL130', N'3 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0086', 'MNL091', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0086', 'MNL064', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0086', 'MNL013', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0086', 'MNL006', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0086', 'MNL008', N'1/3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0086', 'MNL123', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0086', 'MNL004', N'165ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL131', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL132', N'3 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL017', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL156', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0087', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0088', 'MNL131', N'2 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0088', 'MNL090', N'1 hũ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0088', 'MNL013', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0088', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0088', 'MNL132', N'5 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0088', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL134', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL011', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL010', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL091', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL025', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL092', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL066', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL024', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL133', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL013', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0089', 'MNL119', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL134', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL135', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL002', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL003', N'1/4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL140', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL136', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL137', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL132', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL004', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0090', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0094', 'MNL001', N'2 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0094', 'MNL016', N'4 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0094', 'MNL056', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0094', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0094', 'MNL006', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0094', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0094', 'MNL004', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL085', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL069', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL008', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL006', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL087', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL005', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL004', N'4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'MNL086', N'6 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0141', 'ML084', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0142', 'MNL088', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0142', 'MNL089', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0142', 'MNL002', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0142', 'MNL105', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0142', 'MNL007', N'1.5 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0142', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0142', 'MNL017', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0142', 'MNL013', N'1/2 muỗng muối');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0142', 'MNL090', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL088', N'600g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL037', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL017', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL091', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL010', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL011', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL092', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL093', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL090', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0143', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0144', 'MNL066', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0144', 'MNL088', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0144', 'MNL005', N'20ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0144', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0144', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0144', 'MNL006', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL094', N'2 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL017', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL088', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL070', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL096', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL097', N'80ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL006', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL005', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL066', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0145', 'MNL048', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL098', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL095', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL099', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL085', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL100', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL101', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL040', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL108', N'4 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL084', N'1.5 lít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL102', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL013', N'3g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL103', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL008', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL104', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0146', 'MNL107', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0147', 'MNL038', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0147', 'MNL112', N'6  Cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0147', 'MNL016', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0147', 'MNL012', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0147', 'MNL090', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0147', 'MNL026', N'15ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0147', 'MNL092', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0147', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0148', 'MNL088', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0148', 'MNL010', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0148', 'MNL011', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0148', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0148', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0148', 'MNL017', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0148', 'MNL037', N'100ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL088', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL012', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL017', N'70g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL049', N'1/2  Củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL040', N'1/2  Củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL106', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL005', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL018', N'2 Trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL025', N'1/2 Trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL006', N'2 Muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL013', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0149', 'MNL008', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL088', N'2 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL041', N'2 Quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL114', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL026', N'15ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL066', N'2 Muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL113', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL013', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL008', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL004', N'1/2 Chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0150', 'MNL037', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL115', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL139', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL140', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL095', N'70g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL002', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL141', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL142', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL143', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL144', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL145', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL107', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL012', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL108', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL146', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL081', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL007', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL119', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0151', 'MNL148', N'6 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0152', 'MNL100', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0152', 'MNL150', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0152', 'MNL040', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0152', 'MNL077', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0152', 'MNL076', N'5 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0152', 'MNL151', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0152', 'MNL013', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0152', 'MNL007', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0152', 'MNL006', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL150', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL152', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL153', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL210', N'1 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL154', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL155', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL013', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL012', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL110', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0153', 'MNL156', N'120g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0154', 'MNL115', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0154', 'MNL157', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0154', 'MNL144', N'1 mớ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0154', 'MNL007', N'1.5 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0154', 'MNL013', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0154', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL159', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL115', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL144', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL158', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL011', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL146', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0155', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL150', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL070', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL160', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL142', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL163', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL161', N'600g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL162', N'1.2L');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL108', N'45g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL012', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL110', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL119', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL007', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0156', 'MNL108', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL152', N'1 kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL099', N'5 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL164', N'1 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL165', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL100', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL107', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL070', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL104', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL012', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL166', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL106', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL169', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL101', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL092', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL066', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL048', N'6 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL007', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL167', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL168', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0157', 'MNL150', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL170', N'400g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL171', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL172', N'20ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL002', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL048', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL013', N'1.5 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL010', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL078', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL173', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0158', 'MNL110', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL170', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL053', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL061', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL108', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL132', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL018', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL017', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL016', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL006', N'5 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL021', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL005', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0159', 'MNL167', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL170', N'2kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL041', N'4 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL167', N'70g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL149', N'180ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL056', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL174', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL010', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL012', N'1/2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL064', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL005', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL004', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0160', 'MNL110', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0161', 'MNL070', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0161', 'MNL007', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0161', 'MNL006', N'25g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0161', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0161', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0161', 'MNL016', N'12 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0161', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0161', 'MNL004', N'15ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0161', 'MNL005', N'25ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL070', N'15 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL175', N'3 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL041', N'1 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL061', N'1/2 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL004', N'100ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0162', 'MNL023', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0163', 'MNL070', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0163', 'MNL050', N'600g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0163', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0163', 'MNL008', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0163', 'MNL167', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0164', 'MNL176', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0164', 'MNL177', N'5 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0164', 'MNL156', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0164', 'MNL100', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0164', 'MNL070', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0164', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0164', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL132', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL108', N'4 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL017', N'5 lát');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL018', N'6 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL006', N'6 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL005', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL066', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL025', N'5 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL056', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL167', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL178', N'1/4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0165', 'MNL070', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0166', 'MNL179', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0166', 'MNL049', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0166', 'MNL070', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0167', 'MNL171', N'80g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0167', 'MNL070', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0167', 'MNL172', N'80ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0167', 'MNL180', N'40ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0167', 'MNL181', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0167', 'MNL173', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0167', 'MNL023', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0167', 'MNL016', N'1 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL182', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL095', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL262', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL215', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL040', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL006', N'2.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL021', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL010', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0168', 'MNL126', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL038', N'400g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL070', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL026', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL006', N'40g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL048', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL066', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL183', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL056', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL016', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL040', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL018', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL302', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL012', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0169', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL185', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL070', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL184', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL010', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL064', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL080', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL215', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL012', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0170', 'MNL020', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL096', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL132', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL186', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL018', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL127', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL066', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL124', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL006', N'70g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL005', N'30ml');

insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL063', N'100ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0171', 'MNL020', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0172', 'MNL096', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0172', 'MNL143', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0172', 'MNL006', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0172', 'MNL005', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0172', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0172', 'MNL064', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0172', 'MNL020', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0172', 'MNL017', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0172', 'MNL132', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL187', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL096', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL016', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL132', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL002', N'160g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL108', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0173', 'MNL364', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL096', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL132', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL018', N'8 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL056', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL124', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL016', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL129', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL066', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL048', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL026', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL0113', N'2g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0174', 'MNL006', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL096', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL310', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL049', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL100', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL188', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL108', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL012', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL311', N'25 tờ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL006', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL020', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL064', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL010', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL004', N'300ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0175', 'MNL008', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL100', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL096', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL012', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL073 ', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL091', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL108', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL010', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL090', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL006', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL084', N'200ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0176', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL096', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL121', N'80ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL122', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL040', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL174', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL023', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL005', N'1  muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL006', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL110', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0177', 'MNL012', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL189', N'400g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL002', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL0096', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL063', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0178', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL096', N'1.5kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL190', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL108', N'3 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL012', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL080', N'1 nắm');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL004', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0179', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0180', 'MNL171', N'1 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0180', 'MNL078', N'250ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0180', 'MNL016', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0180', 'MNL037', N'225ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0180', 'MNL096', N'700g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0180', 'MNL110', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0180', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0180', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL191', N'15 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL182', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL158', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL108', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL016', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL062', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL020', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0181', 'MNL090', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0182', 'MNL191', N'12 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0182', 'MNL194', N'120g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0182', 'MNL193', N'120g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0182', 'MNL307', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0182', 'MNL020', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL191', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL152', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL263', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL049', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL052', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL155', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL156', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL012', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL110', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL195', N'4 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL196', N'4 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0183', 'MNL197', N'20 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0184', 'MNL191', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0184', 'MNL263', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0184', 'MNL198', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0184', 'MNL017', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0184', 'MNL013', N'1.5 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0184', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0184', 'MNL021', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0185', 'MNL191', N'2kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0185', 'MNL082', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0185', 'MNL213', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0185', 'MNL108', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0185', 'MNL012', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0185', 'MNL080', N'1/4 nắm');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0185', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0185', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0185', 'MNL064', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL191', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL198', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL045', N'5 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL013', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL006', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL008', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0186', 'MNL021', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL191', N'120g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL369', N'47ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL026', N'2ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL167', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL069', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL040', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL302', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL199', N'1/2 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL200', N'40g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL012', N'40g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL128', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL016', N'80g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL201', N'2g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL202', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL066', N'22g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL203', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL017', N'7g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0187', 'MNL151', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL041', N'4 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL191', N'400g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL012', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL026', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL081', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL008', N'2g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL006', N'3g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL007', N'1g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL084', N'20ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0188', 'MNL090', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0189', 'MNL191', N'30 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0189', 'MNL010', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0189', 'MNL078', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0189', 'MNL068', N'1/2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0189', 'MNL174', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0189', 'MNL108', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0189', 'MNL012', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0189', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0189', 'MNL092', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL191', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL114', N'65g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL113', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL004', N'200ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL307', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL037', N'45ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL040', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL089', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL020', N'15ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0190', 'MNL204', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL205', N'2 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL013', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL010', N'7 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL174', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL064', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL040', N'115g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL012', N'4 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL151', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL056', N'1/4 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL026', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL167', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL206', N'1/4 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0191', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0192', 'MNL205', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0192', 'MNL002', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0192', 'MNL214', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0192', 'MNL105', N'3 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0192', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0192', 'MNL017', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0192', 'MNL037', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0192', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0192', 'MNL087', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0193', 'MNL205', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0193', 'MNL040', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0193', 'MNL090', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0193', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0193', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0193', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0193', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0193', 'MNL011', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0193', 'MNL010', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0194', 'MNL205', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0194', 'MNL207', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0194', 'MNL012', N'3 cọng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0194', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0194', 'MNL007', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0194', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0194', 'MNL010', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0194', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0194', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0195', 'MNL205', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0195', 'MNL132', N'1/2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0195', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0195', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0195', 'MNL056', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0195', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0195', 'MNL012', N'1/2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0195', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL205', N'2 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL020', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL151', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL062', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL110', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL089', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0196', 'MNL302', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0197', 'MNL205', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0197', 'MNL108', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0197', 'MNL084', N'5L');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0197', 'MNL005', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0197', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL205', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL208', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL081', N'480ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL106', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL158', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL002', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL091', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL132', N'3 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL108', N'3 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL040', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0198', 'MNL140', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0199', 'MNL205', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0199', 'MNL302', N'100g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0199', 'MNL183', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0199', 'MNL040', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0199', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0199', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0199', 'MNL201', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0199', 'MNL038', N'2 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0200', 'MNL276', N'200g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0200', 'MNL205', N'120g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0200', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0200', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0200', 'MNL108', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0200', 'MNL292', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0200', 'MNL368', N'10 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0200', 'MNL023', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0200', 'MNL213', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0201', 'MNL293', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0201', 'MNL125', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0201', 'MNL377', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0201', 'MNL006', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0201', 'MNL018', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0201', 'MNL016', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0201', 'MNL132', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0201', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL335', N'1.5 kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL132', N'220g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL127', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL017', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL084', N'300ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL188', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL076', N'3 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL010', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL091', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL011', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL174', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL008', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL005', N'4.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL018', N'4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0202', 'MNL020', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL336', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL016', N'3 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL018', N'10 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL045', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL066', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL092', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL056', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL005', N'40ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL132', N'3 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0203', 'MNL080', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL337', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL140', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL081', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL002', N'4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL007', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL338', N'25g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL012', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL010', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0204', 'MNL108', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL293', N'300g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL175', N'3 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL023', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL005', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL064', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL017', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0205', 'MNL339', N'1 ổ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0206', 'MNL340', N'150g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0206', 'MNL168', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0206', 'MNL129', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0206', 'MNL006', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0206', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0206', 'MNL017', N'15g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL341', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL121', N'200ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL132', N'25g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL018', N'45g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL006', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL013', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL007', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL080', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0207', 'MNL010', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL335', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL132', N'5 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL127', N'10g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL025', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL108', N'20g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL056', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL006', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0208', 'MNL012', N'3g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL334', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL012', N'50g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL064', N'5g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL213', N'30g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0209', 'MNL004', N'150ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0210', 'MNL333', N'500g');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0210', 'MNL016', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0210', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0210', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0210', 'MNL064', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0210', 'MNL066', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL109', N'1 Trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL108', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL012', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL110', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL004', N'50 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0211', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL209', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL210', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL211', N'1 cây lớn');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL141', N'10 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL212', N'15 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL213', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL214', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL215', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL143', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL216', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL004', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL013', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL006', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL026', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0212', 'MNL217', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL141', N'4 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL068', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL040', N'nửa củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL218', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL016', N'3 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL012', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL110', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL048', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL066', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL026', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0213', 'MNL006', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL219', N'250gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL211', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL220', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL141', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL106', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL049', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL221', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL012', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL104', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL222', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL026', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL006', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0214', 'MNL151', N'2gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0215', 'MNL223', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0215', 'MNL214', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0215', 'MNL091', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0215', 'MNL224', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0215', 'MNL006', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0215', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0216', 'MNL141', N'4 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0216', 'MNL008', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0216', 'MNL013', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0216', 'MNL080', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0216', 'MNL225', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0216', 'MNL097', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL226', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL020', N'20ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL062', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL227', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL228', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL229', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL003', N'1/3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL230', N'5 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL231', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL232', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL233', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0217', 'MNL234', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL235', N'6 miếng to');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL141', N'3 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL040', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL211', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL236', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL220', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL237', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL238', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL026', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL006', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL111', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL013', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL222', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0218', 'MNL066', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0219', 'MNL239', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0219', 'MNL121', N'270ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0219', 'MNL006', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0219', 'MNL240', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0219', 'MNL241', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0219', 'MNL242', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0219', 'MNL243', N'500ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0219', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0219', 'MNL244', N'1 ít (để chấm)');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL245', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL155', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL235', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL076', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL110', N'4 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL214', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL217', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL246', N'1 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0220', 'MNL004', N'300ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL247', N'1 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL248', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL049', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL249', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL107', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL141', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL011', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL026', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0221', 'MNL084', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0222', 'MNL250', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0222', 'MNL091', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0222', 'MNL011', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0222', 'MNL064', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0222', 'MNL217', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0222', 'MNL006', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0222', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0222', 'MNL066', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0222', 'MNL084', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL251', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL107', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL104', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL016', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL018', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL049', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL013', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL252', N'1 lít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0223', 'MNL253', N'1 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL254', N'400gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL102', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL214', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL211', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL220', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL154', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL216', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL255', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL235', N'25gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL141', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL256', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL257', N'4 hoa');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL258', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL259', N'4gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL260', N'2gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL261', N'1gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL107', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL137', N'2gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL262', N'2gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0224', 'MNL013', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL128', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL236', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL049', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL037', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL017', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL108', N'3 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL222', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL111', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL167', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL110', N'3 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL004', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0225', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0226', 'MNL263', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0226', 'MNL061', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0226', 'MNL097', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0226', 'MNL217', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0226', 'MNL066', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0226', 'MNL111', N'3gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0226', 'MNL084', N'20ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0227', 'MNL264', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0227', 'MNL049', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0227', 'MNL250', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0227', 'MNL265', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0227', 'MNL076', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0228', 'MNL128', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0228', 'MNL266', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0228', 'MNL006', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0228', 'MNL020', N'2ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0228', 'MNL066', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0228', 'MNL127', N'4 lá');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0228', 'MNL111', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0229', 'MNL360', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0229', 'MNL016', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0229', 'MNL006', N'3gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0229', 'MNL111', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0229', 'MNL026', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0229', 'MNL004', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL009', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL002', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL010', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL135', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL136', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL137', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL004', N'6 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0091', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL138', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL135', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL002', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL003', N'1/4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL360', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL361', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL006', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL107', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL010', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL012', N'1/2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL136', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0092', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL120', N'500 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL121', N'200 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL011', N'30 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL010', N'30 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL064', N'20 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL122', N'20 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL005', N'50 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL006', N'50 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL124', N'20 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL123', N'5 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL008', N'3 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0012', 'MNL091', N'30 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL051', N'3 Miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL100', N'100 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL012', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL026', N'30 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL092', N'30 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0013', 'MNL004', N'30 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0014', 'MNL069', N'500 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0014', 'MNL061', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0014', 'MNL010', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0014', 'MNL064', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0014', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0014', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0014', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0014', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0014', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL069', N'400 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL056', N'8 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL007', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL004', N'200 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL151', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL097', N'15 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL125', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL132', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL126', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL127', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL010', N'2 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0015', 'MNL213', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL100', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL002', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL128', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL108', N'10 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL012', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL129', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL004', N'10 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL084', N'30 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL007', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL006', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0016', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0017', 'MNL069', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0017', 'MNL300', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0017', 'MNL132', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0017', 'MNL108', N'10 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0017', 'MNL016', N'10 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0017', 'MNL018', N'10 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0017', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL301', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL100', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL236', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL076', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL012', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL110', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL006', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL007', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL008', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL220', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0018', 'MNL077', N'40 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0019', 'MNL302', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0019', 'MNL069', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0019', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0019', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0019', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0019', 'MNL214', N'10 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0019', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0019', 'MNL004', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0020', 'MNL303', N'1/2 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0020', 'MNL012', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0020', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0020', 'MNL017', N'1/3 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0020', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0020', 'MNL013', N'1.5 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0020', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0020', 'MNL037', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0020', 'MNL081', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL304', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL100', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL174', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL017', N'6 lát');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL012', N'2 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL037', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL006', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL151', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0021', 'MNL007', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL077', N'85 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL100', N'80gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL090', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL012', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL017', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL092', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0022', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0023', 'MNL100', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0023', 'MNL002', N'4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0023', 'MNL167', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0023', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0023', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0023', 'MNL013', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0023', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0023', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0024', 'MNL303', N'500 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0024', 'MNL132', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0024', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0024', 'MNL018', N'4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0024', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0024', 'MNL007', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0024', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0024', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0024', 'MNL016', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0093', 'MNL009', N'180gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0093', 'MNL362', N'4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0093', 'MNL006', N'70gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0093', 'MNL129', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0093', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0093', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0093', 'MNL114', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0093', 'MNL004', N'20ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0093', 'MNL167', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0095', 'MNL067', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0095', 'MNL011', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0095', 'MNL013', N'1,5 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0095', 'MNL006', N'1,5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0095', 'MNL007', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0095', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0095', 'MNL004', N'1/2 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0095', 'MNL092', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0095', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL363', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL068', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL364', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL012', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL108', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL110', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL017', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL040', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL008', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL026', N'150ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL092', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0096', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL365', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL012', N'3 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL013', N'1/2 muỗng phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL026', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL366', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL092', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0097', 'MNL151', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0098', 'MNL067', N'250gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0098', 'MNL012', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0098', 'MNL017', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0098', 'MNL008', N'2gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0098', 'MNL037', N'15ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0098', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0098', 'MNL026', N'20ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0098', 'MNL004', N'20ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0099', 'MNL363', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0099', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0099', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0099', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0099', 'MNL366', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0100', 'MNL367', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0100', 'MNL368', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0100', 'MNL017', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0100', 'MNL369', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0100', 'MNL013', N'5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0100', 'MNL026', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0100', 'MNL151', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0100', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0100', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0101', 'MNL042', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0101', '', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0101', 'MNL005', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0101', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0101', 'MNL008', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0101', 'MNL011', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL370', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL117', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL002', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL069', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL012', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL364', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL007', N'25gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL008', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL005', N'25ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL006', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL013', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL010', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0102', 'MNL371', N'500ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL372', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL041', N'1 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL114', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL113', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL307', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL364', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL110', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL106', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL016', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL013', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL008', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0103', 'MNL004', N'100ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL373', N'250gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL069', N'70gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL019', N'250ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL012', N'2 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL011', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL007', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL013', N'1/3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL008', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL083', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0104', 'MNL018', N'5 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL374', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL017', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL011', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL006', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL007', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL005', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL083', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL013', N'1/3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL008', N'1/3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL176', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL012', N'5 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0105', 'MNL018', N'5 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0106', 'MNL042', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0106', 'MNL003', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0106', 'MNL002', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0106', 'MNL132', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0106', 'MNL140', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0106', 'MNL169', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0106', 'MNL143', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0106', 'MNL107', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0106', 'MNL012', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL074', N'400gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL187', N'205gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL002', N'80gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL143', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL137', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL012', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL007', N'45gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL005', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL006', N'45gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0107', 'MNL008', N'3gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL375', N'600gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL376', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL263', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL040', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL018', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL012', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL016', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL108', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL132', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL023', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL124', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL066', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL048', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL006', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL005', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL081', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0108', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL042', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL377', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL037', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL016', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL108', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL005', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL378', N'400ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0109', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL373', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL011', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL012', N'4 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL083', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL007', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL008', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL004', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0110', 'MNL021', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL372', N'2 lát');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL002', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL040', N'1/4 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL021', N'0,67 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL005', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL006', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL012', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0111', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL379', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL372', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL065', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL017', N'2 lát');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL006', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL013', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL012', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0112', 'MNL081', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0113', 'MNL055', N'400gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0113', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0113', 'MNL018', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0113', 'MNL005', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0113', 'MNL004', N'100ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0113', 'MNL006', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0113', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0113', 'MNL007', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0114', 'MNL372', N'800gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0114', 'MNL003', N'1/2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0114', 'MNL023', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0114', 'MNL024', N'80ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0114', 'MNL010', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0114', 'MNL020', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0114', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0114', 'MNL204', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0115', 'MNL169', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0115', 'MNL218', N'4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0115', 'MNL040', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0115', 'MNL089', N'1/2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0115', 'MNL042', N'1/3 hộp');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0115', 'MNL380', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL382', N'800gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL043', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL002', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL158', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL105', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL012', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL011', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0116', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0117', 'MNL129', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0117', 'MNL307', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0117', 'MNL194', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0117', 'MNL178', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0117', 'MNL020', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0117', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0117', 'MNL067', N'4 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0117', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0118', 'MNL372', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0118', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0118', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0118', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0118', 'MNL123', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0118', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0119', 'MNL022', N'600gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0119', 'MNL025', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0119', 'MNL383', N'4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0119', 'MNL023', N'4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0119', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0119', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0120', 'MNL384', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0120', 'MNL132', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0120', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0120', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0120', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0120', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0120', 'MNL087', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0120', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0121', 'MNL372', N'720gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0121', 'MNL228', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0121', 'MNL016', N'1 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0121', 'MNL026', N'5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0121', 'MNL083', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0121', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0121', 'MNL004', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0122', 'MNL363', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0122', 'MNL076', N'16gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0122', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0122', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0122', 'MNL077', N'77gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0122', 'MNL108', N'26gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0122', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0122', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0123', 'MNL365', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0123', 'MNL110', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0123', 'MNL010', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0123', 'MNL020', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0123', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0123', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0123', 'MNL064', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL130', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL012', N'5 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL385', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL154', N'6 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL037', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL386', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0124', 'MNL026', N'6 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL384', N'600gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL128', N'1 hộp');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL387', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL174', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL064', N'6 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL010', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL012', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL084', N'160ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0125', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0126', 'MNL211', N'2 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0126', 'MNL200', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0126', 'MNL248', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0126', 'MNL372', N'115gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0126', 'MNL026', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0126', 'MNL023', N'7gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL370', N'1 khúc');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL002', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL342', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL364', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL012', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL021', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL087', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0127', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0128', 'MNL365', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0128', 'MNL012', N'4 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0128', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0128', 'MNL026', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0128', 'MNL006', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0128', 'MNL084', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0128', 'MNL017', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL305', N'250 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL306', N'200 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL089', N'1 Trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL002', N'1 Trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL010', N'1 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL023', N'1/2 Muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL110', N'3 Nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL007', N'1.5 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL008', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL026', N'2 Muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL006', N'1 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL021', N'1/2 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL004', N'3 Muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0025', 'MNL011', N'1 Muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0026', 'MNL100', N'200 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0026', 'MNL132', N'15 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0026', 'MNL011', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0026', 'MNL167', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0026', 'MNL024', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0026', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0026', 'MNL013', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0026', 'MNL004', N'200 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL303', N'500 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL236', N'5 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL037', N'15 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL004', N'8 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL084', N'30 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL012', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL006', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL167', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL026', N'15 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL017', N'10 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0027', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0028', 'MNL303', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0028', 'MNL169', N'400 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0028', 'MNL007', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0028', 'MNL307', N'0.67 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0028', 'MNL048', N'5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0028', 'MNL068', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0028', 'MNL052', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0028', 'MNL308', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0029', 'MNL049', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0029', 'MNL236', N'10 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0029', 'MNL153', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0029', 'MNL276', N'150 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0029', 'MNL156', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0029', 'MNL007', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0029', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0029', 'MNL110', N'3 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0029', 'MNL309', N'2 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL100', N'250 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL077', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL076', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL310', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL041', N'1 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL011', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL311', N'1/2 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL004', N'1/2 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0030', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0031', 'MNL069', N'500 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0031', 'MNL014', N'6 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0031', 'MNL312', N'1 lon');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0031', 'MNL011', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0031', 'MNL010', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0031', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0031', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0031', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0032', 'MNL313', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0032', 'MNL092', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0032', 'MNL010', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0032', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0032', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0032', 'MNL122', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0032', 'MNL006', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0032', 'MNL019', N'150 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0032', 'MNL004', N'1/2 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0033', 'MNL070', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0033', 'MNL069', N'250 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0033', 'MNL246', N'10 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0033', 'MNL140', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0033', 'MNL262', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0033', 'MNL368', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL303', N'500 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL132', N'3 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL108', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL016', N'3 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0034', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL306', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL050', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL040', N'1/4 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL068', N'1/4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL016', N'3 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL026', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL024', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL167', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL008', N'2 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL314', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL151', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL004', N'0.67 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0035', 'MNL013', N'2 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0036', 'MNL306', N'200 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0036', 'MNL040', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0036', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0036', 'MNL002', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0036', 'MNL004', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0036', 'MNL092', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0036', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0036', 'MNL169', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0037', 'MNL306', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0037', 'MNL315', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0037', 'MNL316', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0037', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0037', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0037', 'MNL013', N'0.75 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0037', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0037', 'MNL105', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0037', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0038', 'MNL306', N'250 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0038', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0038', 'MNL092', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0038', 'MNL010', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0038', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0038', 'MNL004', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0038', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0038', 'MNL314', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL306', N'500 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL318', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL092', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL006', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL008', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL091', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL010', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL011', N'10 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL018', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL084', N'50 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL319', N'50 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0039', 'MNL020', N'20 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL015', N'1/4 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL132', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL005', N'50 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL083', N'30 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL007', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL006', N'60 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL008', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL108', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL037', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0040', 'MNL017', N'4 lát');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0041', 'MNL303', N'1.80 kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0041', 'MNL307', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0041', 'MNL092', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0041', 'MNL024', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0041', 'MNL320', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0041', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0041', 'MNL133', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0041', 'MNL321', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0042', 'MNL199', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0042', 'MNL322', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0042', 'MNL087', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0042', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0042', 'MNL183', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0042', 'MNL221', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0042', 'MNL154', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0042', 'MNL069', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0042', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL306', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL089', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL040', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL323', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL132', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL006', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL025', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL081', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL215', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL213', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0043', 'MNL314', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL327', N'1 bộ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL328', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL082', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL100', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL040', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL262', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL080', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL012', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL213', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL006', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL007', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL005', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL298', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL119', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0044', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0045', 'MNL329', N'500 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0045', 'MNL132', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0045', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0045', 'MNL010', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0045', 'MNL174', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0045', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0045', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0045', 'MNL083', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0045', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL306', N'350 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL017', N'5 lát');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL066', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL105', N'2 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL330', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL006', N'0.75 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL151', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL011', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0046', 'MNL331', N'5 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL306', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL002', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL003', N'1/4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL011', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL108', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL018', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0047', 'MNL084', N'1 lít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL015', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL332', N'10 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL157', N'400 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL016', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL132', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL018', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0048', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL303', N'800 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL132', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL090', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL005', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL007', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL348', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL349', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL140', N'1 kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0049', 'MNL010', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0050', 'MNL153', N'400 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0050', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0050', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0050', 'MNL056', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0050', 'MNL320', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0051', 'MNL306', N'1 kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0051', 'MNL006', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0051', 'MNL013', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0051', 'MNL133', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0051', 'MNL350', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0051', 'MNL132', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0051', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0051', 'MNL092', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL352', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL084', N'1.2 lít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL161', N'700 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL108', N'30 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL007', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL008', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL019', N'500 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0052', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL356', N'2 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL013', N'6 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL008', N'2 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL239', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL190', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL017', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL132', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL092', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL007', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0053', 'MNL004', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL363', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL343', N'1 lon');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL364', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL108', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL017', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL002', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL004', N'15ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0129', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0130', 'MNL009', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0130', 'MNL005', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0130', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0130', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0130', 'MNL024', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL067', N'400gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL007', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL004', N'40ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL041', N'1 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL180', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL113', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0131', 'MNL114', N'1/2 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0132', 'MNL344', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0132', 'MNL175', N'7 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0132', 'MNL345', N'1,5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0132', 'MNL023', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL050', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL067', N'450gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL041', N'1 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL346', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL023', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL012', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL110', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL178', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL004', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0133', 'MNL113', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL347', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL012', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL156', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL024', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL056', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL004', N'1/2 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0134', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0135', 'MNL365', N'1 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0135', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0135', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0135', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0135', 'MNL020', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0135', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0135', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0135', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0135', 'MNL004', N'1/2 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0136', 'MNL118', N'600gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0136', 'MNL018', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0136', 'MNL132', N'4 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0136', 'MNL013', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0136', 'MNL016', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0136', 'MNL021', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL351', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL014', N'3 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL011', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL005', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL004', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL284', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL012', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL021', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0137', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL372', N'400gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL353', N'250gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL354', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL004', N'200ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL201', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL364', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL168', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL355', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL026', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0138', 'MNL020', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL357', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL012', N'5 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL017', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL037', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL026', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL04', N'450ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL013', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL358', N'3 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL084', N'500ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL256', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL006', N'80gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0139', 'MNL081', N'15ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL074', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL351', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL163', N'1kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL013', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL005', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL007', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL006', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL012', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL214', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL017', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0140', 'MNL008', N'1/2 muỗng cà phê');

insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0054', 'MNL184', N'400 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0054', 'MNL149', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0054', 'MNL081', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0054', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0054', 'MNL016', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0054', 'MNL061', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0054', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0054', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0054', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0055', 'MNL306', N'350 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0055', 'MNL388', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0055', 'MNL016', N'3 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0055', 'MNL011', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0055', 'MNL024', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0055', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0055', 'MNL007', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0056', 'MNL310', N'400 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0056', 'MNL100', N'200 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0056', 'MNL011', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0056', 'MNL136', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0056', 'MNL137', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0056', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0056', 'MNL007', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0056', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL306', N'800 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL194', N'250 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL339', N'130 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL010', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL105', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL078', N'60 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL389', N'250 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL149', N'80 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0057', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0058', 'MNL303', N'300 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0058', 'MNL049', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0058', 'MNL041', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0058', 'MNL017', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0058', 'MNL167', N'1/2 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0058', 'MNL113', N'1/2 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0058', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0058', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0058', 'MNL004', N'1 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0059', 'MNL016', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0059', 'MNL004', N'45 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0059', 'MNL306', N'500 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0059', 'MNL020', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0059', 'MNL389', N'15 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0059', 'MNL013', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0059', 'MNL008', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0060', 'MNL390', N'500 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0060', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0060', 'MNL007', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0060', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0061', 'MNL391', N'500 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0061', 'MNL392', N'1 lon');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0061', 'MNL010', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0061', 'MNL017', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0061', 'MNL018', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0061', 'MNL090', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0061', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0061', 'MNL092', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0061', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0062', 'MNL391', N'500 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0062', 'MNL018', N'10 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0062', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0062', 'MNL016', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0062', 'MNL011', N'2 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0062', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0062', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0062', 'MNL066', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0062', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL329', N'400 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL318', N'5 lá');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL011', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL108', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL056', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL006', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0063', 'MNL366', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL015', N'350 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL186', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL005', N'1 muỗng canh ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL083', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL037', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL056', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0064', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL015', N'1.5 Kg');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL017', N'2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL108', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL377', N'100 Gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL037', N'100 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL005', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL006', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL025', N'1/2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0065', 'MNL016', N'3 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0066', 'MNL015', N'400 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0066', 'MNL393', N'300 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0066', 'MNL012', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0066', 'MNL358', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0066', 'MNL394', N'2 lát');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0066', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0066', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0066', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0066', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0067', 'MNL015', N'500 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0067', 'MNL019', N'100 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0067', 'MNL005', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0067', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0067', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0067', 'MNL110', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0067', 'MNL004', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0067', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL395', N'250 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL379', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL190', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL239', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL396', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL397', N'50 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL012', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL110', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL005', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL007', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL017', N'1 củ ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL037', N'20 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0068', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0069', 'MNL059', N'10 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0069', 'MNL024', N'30 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0069', 'MNL092', N'15 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0069', 'MNL004', N'7 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0069', 'MNL013', N'5 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0069', 'MNL026', N'15 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0069', 'MNL010', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0069', 'MNL008', N'10 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0070', 'MNL077', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0070', 'MNL303', N'100 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0070', 'MNL010', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0070', 'MNL011', N'15 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0070', 'MNL026', N'100 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0070', 'MNL151', N'15 ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0070', 'MNL006', N'20 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL102', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL267', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL214', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL268', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL101', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL220', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL154', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL263', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL248', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL111', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL084', N'1 lít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL006', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL013', N'3gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL021', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL004', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL169', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0230', 'MNL141', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL102', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL267', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL214', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL268', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL305', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL220', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL154', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL263', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL248', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL111', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL084', N'1 lít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL006', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL013', N'3gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL021', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL004', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL169', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0231', 'MNL141', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0232', 'MNL109', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0232', 'MNL132', N'3 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0232', 'MNL026', N'20ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0232', 'MNL217', N'5ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0232', 'MNL006', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0232', 'MNL111', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0232', 'MNL021', N'2 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0232', 'MNL008', N'2gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL209', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL267', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL269', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL270', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL271', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL111', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL119', N'1.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL272', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL273', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0233', 'MNL013', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0234', 'MNL077', N'70gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0234', 'MNL049', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0234', 'MNL269', N'40gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0234', 'MNL107', N'40gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0234', 'MNL076', N'1 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0234', 'MNL236', N'8 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0234', 'MNL105', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0234', 'MNL111', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL220', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL154', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL274', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL263', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL223', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL049', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL275', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL012', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL110', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL237', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL155', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL276', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL111', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0235', 'MNL021', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0236', 'MNL038', N'1 tô');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0236', 'MNL049', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0236', 'MNL068', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0236', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0236', 'MNL013', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0236', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0236', 'MNL214', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0236', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0237', 'MNL223', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0237', 'MNL040', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0237', 'MNL277', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0237', 'MNL066', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0237', 'MNL111', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0237', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0237', 'MNL006', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0238', 'MNL144', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0238', 'MNL211', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0238', 'MNL278', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0238', 'MNL214', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0238', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0238', 'MNL006', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0238', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0238', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0238', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL109', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL223', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL076', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL279', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL111', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL026', N'40ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL006', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL013', N'1gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL056', N'1/4gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0239', 'MNL008', N'1/2 gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL280', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL045', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL018', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL008', N'1gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL026', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL217', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL006', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL021', N'2gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL111', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0240', 'MNL004', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0241', 'MNL281', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0241', 'MNL016', N'3 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0241', 'MNL111', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0241', 'MNL012', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0241', 'MNL008', N'1/2gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0241', 'MNL004', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0242', 'MNL211', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0242', 'MNL222', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0242', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0242', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0242', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0243', 'MNL282', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0243', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0243', 'MNL211', N'1 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0243', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0243', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0243', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL141', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL002', N'3 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL003', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL283', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL360', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL284', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL285', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL097', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL006', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL111', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL217', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0244', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL286', N'400gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL287', N'2 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL220', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL223', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL111', N'1.5 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL026', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL016', N'2 tép');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0245', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0246', 'MNL223', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0246', 'MNL127', N'1 lá');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0246', 'MNL132', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0246', 'MNL066', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0246', 'MNL020', N'5ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0246', 'MNL006', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0246', 'MNL111', N'4gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0247', 'MNL270', N'1 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0247', 'MNL222', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0247', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0247', 'MNL238', N'150ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0247', 'MNL081', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0247', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0247', 'MNL133', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0247', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0247', 'MNL156', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0248', 'MNL050', N'700gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0248', 'MNL180', N'500ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0248', 'MNL023', N'2.5 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0248', 'MNL084', N'240ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0248', 'MNL010', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0248', 'MNL288', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0248', 'MNL012', N'2 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0248', 'MNL013', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0248', 'MNL008', N'1 ít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL049', N'700gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL050', N'400gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL154', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL235', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL149', N'1 hộp');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL214', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL238', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL052', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL013', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0249', 'MNL103', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL289', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL089', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL290', N'1 bắp ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL291', N'1 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL141', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL213', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL217', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL006', N'4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL081', N'100ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL020', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0250', 'MNL018', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL263', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL154', N'5 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL263', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL038', N'1 tô');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL049', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL089', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL111', N'3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL222', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL119', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0251', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0252', 'MNL317', N'1 bó');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0252', 'MNL248', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0252', 'MNL084', N'1.2 lít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0252', 'MNL111', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0252', 'MNL006', N'3gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0252', 'MNL013', N'1gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0252', 'MNL217', N'5ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0252', 'MNL214', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0252', 'MNL004', N'10ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0253', 'MNL294', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0253', 'MNL263', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0253', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0253', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0253', 'MNL026', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0253', 'MNL106', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0253', 'MNL008', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0254', 'MNL128', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0254', 'MNL368', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0254', 'MNL220', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0254', 'MNL214', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0254', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0254', 'MNL295', N'1 lít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0254', 'MNL111', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0255', 'MNL128', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0255', 'MNL201', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0255', 'MNL200', N'40gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0255', 'MNL111', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0256', 'MNL296', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0256', 'MNL221', N'3 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0256', 'MNL049', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0256', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0256', 'MNL021', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0257', 'MNL128', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0257', 'MNL302', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0257', 'MNL236', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0257', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0257', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL216', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL236', N'10 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL263', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL214', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL008', N'1/4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0258', 'MNL021', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL109', N'1/2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL250', N'3 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL297', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL285', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL111', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL214', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL119', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL298', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL133', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL026', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0259', 'MNL006', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL299', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL050', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL310', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL049', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL091', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL133', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL006', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL156', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL017', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0260', 'MNL238', N'500ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL211', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL102', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL155', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL214', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL128', N'220gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL236', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL111', N'10 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL084', N'2 lít');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL018', N'4 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL132', N'5 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL002', N'3 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL324', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL090', N'75gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL003', N'250gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL144', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL140', N'500gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL200', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL235', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL063', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0261', 'MNL119', N'75ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0262', 'MNL249', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0262', 'MNL263', N'150gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0262', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0262', 'MNL006', N'1/3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0262', 'MNL008', N'1/4 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0262', 'MNL016', N'1/2 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0263', 'MNL325', N'2 vắt');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0263', 'MNL211', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0263', 'MNL147', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0263', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0263', 'MNL214', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0263', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0263', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0264', 'MNL360', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0264', 'MNL236', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0264', 'MNL263', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0264', 'MNL111', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0264', 'MNL006', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0264', 'MNL026', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0264', 'MNL008', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL326', N'3 con');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL002', N'400gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL019', N'300ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL111', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL214', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL012', N'1 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0265', 'MNL092', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0266', 'MNL223', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0266', 'MNL200', N'1 gói');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0266', 'MNL012', N'2 nhánh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0266', 'MNL026', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0266', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL352', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL049', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL050', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL216', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL301', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL294', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL284', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL019', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL224', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL220', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0267', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL359', N'250gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL068', N'1 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL141', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL089', N'1 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL103', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL222', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL004', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL398', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0268', 'MNL040', N'1 củ nhỏ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL211', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL049', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL089', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL128', N'1 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL399', N'30gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL362', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL006', N'80gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL217', N'30ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL111', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL080', N'20gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL159', N'1 cái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0269', 'MNL397', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL249', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL092', N'1 muống canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL006', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL111', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL132', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL128', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL008', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0270', 'MNL076', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL299', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL169', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL049', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL216', N'1/4 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL290', N'1/4 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL400', N'3gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL091', N'3 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL064', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL092', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL006', N'4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL056', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL151', N'4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL081', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL224', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0271', 'MNL398', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0272', 'MNL296', N'4 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0272', 'MNL090', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0272', 'MNL016', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0272', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0272', 'MNL122', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0272', 'MNL021', N'1/2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0272', 'MNL018', N'1 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0273', 'MNL299', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0273', 'MNL019', N'100ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0273', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0273', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0273', 'MNL401', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0274', 'MNL141', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0274', 'MNL263', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0274', 'MNL169', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0274', 'MNL002', N'3 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0274', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0274', 'MNL004', N'4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0274', 'MNL013', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0274', 'MNL006', N'4 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0274', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL140', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL402', N'1 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL246', N'1 túi');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL239', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL141', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL211', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL235', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL002', N'2 quả');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL214', N'2 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL169', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL285', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL049', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL050', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL026', N'50ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL006', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL013', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL111', N'10gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0275', 'MNL124', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0276', 'MNL065', N'700gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0276', 'MNL213', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0276', 'MNL121', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0276', 'MNL111', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0276', 'MNL006', N'15gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0276', 'MNL013', N'5gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0277', 'MNL128', N'2 hộp');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0277', 'MNL368', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0277', 'MNL169', N'1 cây');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0277', 'MNL002', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0277', 'MNL004', N'1/2 chén');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0277', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0277', 'MNL013', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0278', 'MNL315', N'300gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0278', 'MNL403', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0278', 'MNL236', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0278', 'MNL111', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0278', 'MNL026', N'1 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0278', 'MNL008', N'1/3 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0278', 'MNL016', N'3 củ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0279', 'MNL128', N'2 miếng');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0279', 'MNL002', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0279', 'MNL012', N'100gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0279', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0279', 'MNL111', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL250', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL404', N'200gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL339', N'3 ổ');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL156', N'50gr');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL397', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL111', N'2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL006', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL013', N'1/2 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL008', N'1 muỗng cà phê');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL084', N'400ml');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL019', N'2 trái');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL004', N'2 muỗng canh');
insert into CTMA (MaMonAn, MaNguyenLieu, LieuLuong) values ('MA0280', 'MNL176', N'50gr');

SELECT SERVERPROPERTY('IsFullTextInstalled')
SELECT * FROM dbo.NGUYENLIEU WHERE CONTAINS([TenNguyenLieu],'oc')
delete from 
