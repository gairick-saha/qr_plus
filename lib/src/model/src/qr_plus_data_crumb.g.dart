// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_plus_data_crumb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnknownQrPlusDataCrumb _$$UnknownQrPlusDataCrumbFromJson(
        Map<String, dynamic> json) =>
    _$UnknownQrPlusDataCrumb(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnknownQrPlusDataCrumbToJson(
        _$UnknownQrPlusDataCrumb instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthenticQrPlusDataCrumb _$$AuthenticQrPlusDataCrumbFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticQrPlusDataCrumb(
      uid: json['uid'] as String,
      data: json['data'] as String,
      mode: QrPlusMode.fromJson(json['mode'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
      index: json['index'] as int,
      crumbs: json['crumbs'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticQrPlusDataCrumbToJson(
        _$AuthenticQrPlusDataCrumb instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'data': instance.data,
      'mode': instance.mode.toJson(),
      'timestamp': instance.timestamp.toIso8601String(),
      'index': instance.index,
      'crumbs': instance.crumbs,
      'runtimeType': instance.$type,
    };

_$NoNetworkQrPlusDataCrumb _$$NoNetworkQrPlusDataCrumbFromJson(
        Map<String, dynamic> json) =>
    _$NoNetworkQrPlusDataCrumb(
      uid: json['uid'] as String,
      data: json['data'] as String,
      mode: QrPlusMode.fromJson(json['mode'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
      index: json['index'] as int,
      crumbs: json['crumbs'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoNetworkQrPlusDataCrumbToJson(
        _$NoNetworkQrPlusDataCrumb instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'data': instance.data,
      'mode': instance.mode.toJson(),
      'timestamp': instance.timestamp.toIso8601String(),
      'index': instance.index,
      'crumbs': instance.crumbs,
      'runtimeType': instance.$type,
    };

_$ScreenRecordingQrPlusDataCrumb _$$ScreenRecordingQrPlusDataCrumbFromJson(
        Map<String, dynamic> json) =>
    _$ScreenRecordingQrPlusDataCrumb(
      uid: json['uid'] as String,
      data: json['data'] as String,
      mode: QrPlusMode.fromJson(json['mode'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
      index: json['index'] as int,
      crumbs: json['crumbs'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ScreenRecordingQrPlusDataCrumbToJson(
        _$ScreenRecordingQrPlusDataCrumb instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'data': instance.data,
      'mode': instance.mode.toJson(),
      'timestamp': instance.timestamp.toIso8601String(),
      'index': instance.index,
      'crumbs': instance.crumbs,
      'runtimeType': instance.$type,
    };
