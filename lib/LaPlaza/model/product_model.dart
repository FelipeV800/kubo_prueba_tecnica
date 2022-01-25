class ProductModel {
  ProductModel({
      String? code, 
      List<Data>? data,}){
    _code = code;
    _data = data;
}

  ProductModel.fromJson(dynamic json) {
    _code = json['code'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  String? _code;
  List<Data>? _data;

  String? get code => _code;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      String? categoria, 
      String? cliente, 
      String? colores, 
      String? descripcion, 
      String? disponible, 
      String? estado, 
      String? fechaCreacion, 
      String? id, 
      String? nombre, 
      String? precio, 
      String? tallas, 
      String? video, 
      String? descripcionPromo, 
      String? idPromocion, 
      String? valorPromo, 
      String? idProductoPromo, 
      String? fechaPromo, 
      String? estadoPromo, 
      String? likes, 
      String? megusta, 
      String? galeria, 
      String? imagen,}){
    _categoria = categoria;
    _cliente = cliente;
    _colores = colores;
    _descripcion = descripcion;
    _disponible = disponible;
    _estado = estado;
    _fechaCreacion = fechaCreacion;
    _id = id;
    _nombre = nombre;
    _precio = precio;
    _tallas = tallas;
    _video = video;
    _descripcionPromo = descripcionPromo;
    _idPromocion = idPromocion;
    _valorPromo = valorPromo;
    _idProductoPromo = idProductoPromo;
    _fechaPromo = fechaPromo;
    _estadoPromo = estadoPromo;
    _likes = likes;
    _megusta = megusta;
    _galeria = galeria;
    _imagen = imagen;
}

  Data.fromJson(dynamic json) {
    _categoria = json['categoria'];
    _cliente = json['cliente'];
    _colores = json['colores'];
    _descripcion = json['descripcion'];
    _disponible = json['disponible'];
    _estado = json['estado'];
    _fechaCreacion = json['fecha_creacion'];
    _id = json['id'];
    _nombre = json['nombre'];
    _precio = json['precio'];
    _tallas = json['tallas'];
    _video = json['video'];
    _descripcionPromo = json['descripcion_promo'];
    _idPromocion = json['id_promocion'];
    _valorPromo = json['valor_promo'];
    _idProductoPromo = json['id_producto_promo'];
    _fechaPromo = json['fecha_promo'];
    _estadoPromo = json['estado_promo'];
    _likes = json['likes'];
    _megusta = json['megusta'];
    _galeria = json['galeria'];
    _imagen = json['imagen'];
  }
  String? _categoria;
  String? _cliente;
  String? _colores;
  String? _descripcion;
  String? _disponible;
  String? _estado;
  String? _fechaCreacion;
  String? _id;
  String? _nombre;
  String? _precio;
  String? _tallas;
  String? _video;
  String? _descripcionPromo;
  String? _idPromocion;
  String? _valorPromo;
  String? _idProductoPromo;
  String? _fechaPromo;
  String? _estadoPromo;
  String? _likes;
  String? _megusta;
  String? _galeria;
  String? _imagen;

  String? get categoria => _categoria;
  String? get cliente => _cliente;
  String? get colores => _colores;
  String? get descripcion => _descripcion;
  String? get disponible => _disponible;
  String? get estado => _estado;
  String? get fechaCreacion => _fechaCreacion;
  String? get id => _id;
  String? get nombre => _nombre;
  String? get precio => _precio;
  String? get tallas => _tallas;
  String? get video => _video;
  String? get descripcionPromo => _descripcionPromo;
  String? get idPromocion => _idPromocion;
  String? get valorPromo => _valorPromo;
  String? get idProductoPromo => _idProductoPromo;
  String? get fechaPromo => _fechaPromo;
  String? get estadoPromo => _estadoPromo;
  String? get likes => _likes;
  String? get megusta => _megusta;
  String? get galeria => _galeria;
  String? get imagen => _imagen;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['categoria'] = _categoria;
    map['cliente'] = _cliente;
    map['colores'] = _colores;
    map['descripcion'] = _descripcion;
    map['disponible'] = _disponible;
    map['estado'] = _estado;
    map['fecha_creacion'] = _fechaCreacion;
    map['id'] = _id;
    map['nombre'] = _nombre;
    map['precio'] = _precio;
    map['tallas'] = _tallas;
    map['video'] = _video;
    map['descripcion_promo'] = _descripcionPromo;
    map['id_promocion'] = _idPromocion;
    map['valor_promo'] = _valorPromo;
    map['id_producto_promo'] = _idProductoPromo;
    map['fecha_promo'] = _fechaPromo;
    map['estado_promo'] = _estadoPromo;
    map['likes'] = _likes;
    map['megusta'] = _megusta;
    map['galeria'] = _galeria;
    map['imagen'] = _imagen;
    return map;
  }

}