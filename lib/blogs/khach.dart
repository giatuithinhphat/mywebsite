import 'package:flutter/material.dart';

class Khach {
  final String diachi, ten, image, nhanxet;

  Khach({this.diachi, this.ten, this.image, this.nhanxet});
}

List<Khach> khachs = [
  Khach(
    diachi: 'Phường 2, Tp.CM',
    ten: 'Gấu Nguyễn',
    image: 'assets/images/khach/Gau.jpeg',
    nhanxet: 'Chủ tiệm tốt bụng vui vẻ đồ sạch thơm xếp gọn ủng hộ chủ tiệm ạ',
  ),
  Khach(
    diachi: 'Phường 2, Tp.CM',
    ten: 'Alvin Lâm',
    image: 'assets/images/khach/Cuong.jpeg',
    nhanxet: 'Giá ok, dịch vụ ngon, có về CM ghé shop nữa.',
  ),
  Khach(
    diachi: 'Giá Rai, Bạc Liêu',
    ten: 'Nam Huỳnh',
    image: 'assets/images/khach/Nam.jpeg',
    nhanxet:
        'Dịch vụ chăm sóc rất tốt, sản phẩm hoàn thiện tốt. Sẽ ủng hộ thường xuyên',
  ),
  Khach(
    diachi: 'Phường 6, CM',
    ten: 'Diệu Mích',
    image: 'assets/images/khach/Mich.jpeg',
    nhanxet:
        'Rất chuyên nghiệm và thân thiện (Translated by Google) Very professional and friendly',
  ),
  Khach(
    diachi: 'Phường 1, Tp.CM',
    ten: 'Vinh Nghiêm',
    image: 'assets/images/khach/Vinh.jpeg',
    nhanxet: 'Dịch vụ rất tốt, giá cả hợp lí, chủ shop dễ thương, sẽ đến',
  ),
  Khach(
    diachi: 'Thới Bình, CM',
    ten: 'Linh Võ',
    image: 'assets/images/khach/KhanhLinh.jpeg',
    nhanxet: 'Giặt giày ok như mới, like.',
  ),
  Khach(
    diachi: 'Trung Quốc',
    ten: 'An Tử Đằng',
    image: 'assets/images/khach/ChanMou.jpeg',
    nhanxet:
        '(Translated by Google) The price and the clerk are kind (Original) 価格も店員さんもやさしい',
  ),
  Khach(
    diachi: 'Tp.Bà Rịa. BR-VT',
    ten: 'Gabriela B',
    image: 'assets/images/khach/Ngan.jpeg',
    nhanxet:
        'Tiệm chất lượng tốt, giặt nhẹ nhàng không hư quần áo, giá lại phải chăng. Tới thử 1 lần là muốn ghé quài luôn. ',
  ),
  Khach(
    diachi: 'An Xuyên, Tp.CM',
    ten: 'Lương Lâm',
    image: 'assets/images/khach/Ku.jpeg',
    nhanxet: 'Tiệm vui vẻ, chăm sóc khách tốt. ',
  ),
  Khach(
    diachi: 'Phường 6, Tp.CM',
    ten: 'Trinh Nguyễn',
    image: 'assets/images/khach/Trinh.jpeg',
    nhanxet: 'Tiệm có bé Tèo thấy cưng ghê.',
  ),
];
