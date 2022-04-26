// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openmap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirPollution _$AirPollutionFromJson(Map<String, dynamic> json) => AirPollution(
      Coord.fromJson(json['coord'] as Map<String, dynamic>),
      (json['list'] as List<dynamic>)
          .map((e) => Row.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AirPollutionToJson(AirPollution instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'list': instance.list,
    };

Coord _$CoordFromJson(Map<String, dynamic> json) => Coord(
      json['lon'] as String,
      json['lat'] as String,
    );

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };

Row _$RowFromJson(Map<String, dynamic> json) => Row(
      Main.fromJson(json['main'] as Map<String, dynamic>),
      Components.fromJson(json['components'] as Map<String, dynamic>),
      DateTime.parse(json['dt'] as String),
    );

Map<String, dynamic> _$RowToJson(Row instance) => <String, dynamic>{
      'main': instance.main,
      'components': instance.components,
      'dt': instance.dt.toIso8601String(),
    };

Main _$MainFromJson(Map<String, dynamic> json) => Main(
      json['api'] as int,
    );

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'api': instance.api,
    };

Components _$ComponentsFromJson(Map<String, dynamic> json) => Components(
      (json['co'] as num).toDouble(),
      (json['no'] as num).toDouble(),
      (json['no2'] as num).toDouble(),
      (json['o3'] as num).toDouble(),
      (json['so2'] as num).toDouble(),
      (json['pm2_5'] as num).toDouble(),
      (json['pm10'] as num).toDouble(),
      (json['nh3'] as num).toDouble(),
    );

Map<String, dynamic> _$ComponentsToJson(Components instance) =>
    <String, dynamic>{
      'co': instance.co,
      'no': instance.no,
      'no2': instance.no2,
      'o3': instance.o3,
      'so2': instance.so2,
      'pm2_5': instance.pm2_5,
      'pm10': instance.pm10,
      'nh3': instance.nh3,
    };
