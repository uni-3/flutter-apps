import 'package:json_annotation/json_annotation.dart';

part 'openmap.g.dart';

@JsonSerializable()
class AirPollution {
  AirPollution(this.coord, this.list);

  Coord coord;
  List<Row> list;

  factory AirPollution.fromJson(Map<String, dynamic> json) =>
      _$AirPollutionFromJson(json);

  Map<String, dynamic> toJson() => _$AirPollutionToJson(this);
}

@JsonSerializable()
class Coord {
  Coord(this.lon, this.lat);
  String lon;
  String lat;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);

  Map<String, dynamic> toJson() => _$CoordToJson(this);
}

@JsonSerializable()
class Row {
  Row(this.main, this.components, this.dt);
  Main main;
  Components components;
  DateTime dt;

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);

  Map<String, dynamic> toJson() => _$RowToJson(this);
}

@JsonSerializable()
class Main {
  Main(this.api);
  int api;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);
}

@JsonSerializable()
class Components {
  Components(this.co, this.no, this.no2, this.o3, this.so2, this.pm2_5,
      this.pm10, this.nh3);
  double co;
  double no;
  double no2;
  double o3;
  double so2;
  double pm2_5;
  double pm10;
  double nh3;

  factory Components.fromJson(Map<String, dynamic> json) =>
      _$ComponentsFromJson(json);

  Map<String, dynamic> toJson() => _$ComponentsToJson(this);
}
