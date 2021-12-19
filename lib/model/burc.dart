class Burc{
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;
 
  get burcAdi => _burcAdi;

  get burcTarihi => _burcTarihi;

  get burcDetayi => _burcDetayi;

  get burcKucukResim => _burcKucukResim;

  get burcBuyukResim => _burcBuyukResim;


  Burc(this._burcAdi, this._burcBuyukResim, this._burcDetayi, this._burcKucukResim, this._burcTarihi);

  @override
  String toString() {
    return '$_burcAdi - $_burcBuyukResim';
  }
}
