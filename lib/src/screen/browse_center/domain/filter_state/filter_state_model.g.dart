// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeaderImpl _$$HeaderImplFromJson(Map<String, dynamic> json) => _$HeaderImpl(
      state: (json['state'] as num?)?.toInt(),
      name: json['name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$HeaderImplToJson(_$HeaderImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'name': instance.name,
      'type': instance.$type,
    };

_$SeparatorImpl _$$SeparatorImplFromJson(Map<String, dynamic> json) =>
    _$SeparatorImpl(
      state: (json['state'] as num?)?.toInt(),
      name: json['name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SeparatorImplToJson(_$SeparatorImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'name': instance.name,
      'type': instance.$type,
    };

_$TextImpl _$$TextImplFromJson(Map<String, dynamic> json) => _$TextImpl(
      state: json['state'] as String?,
      name: json['name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TextImplToJson(_$TextImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'name': instance.name,
      'type': instance.$type,
    };

_$CheckBoxImpl _$$CheckBoxImplFromJson(Map<String, dynamic> json) =>
    _$CheckBoxImpl(
      state: json['state'] as bool?,
      name: json['name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CheckBoxImplToJson(_$CheckBoxImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'name': instance.name,
      'type': instance.$type,
    };

_$TriStateImpl _$$TriStateImplFromJson(Map<String, dynamic> json) =>
    _$TriStateImpl(
      state: (json['state'] as num?)?.toInt(),
      name: json['name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TriStateImplToJson(_$TriStateImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'name': instance.name,
      'type': instance.$type,
    };

_$SortImpl _$$SortImplFromJson(Map<String, dynamic> json) => _$SortImpl(
      state: json['state'] == null
          ? null
          : SortState.fromJson(json['state'] as Map<String, dynamic>),
      name: json['name'] as String?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SortImplToJson(_$SortImpl instance) =>
    <String, dynamic>{
      'state': instance.state?.toJson(),
      'name': instance.name,
      'values': instance.values,
      'type': instance.$type,
    };

_$SelectImpl _$$SelectImplFromJson(Map<String, dynamic> json) => _$SelectImpl(
      state: (json['state'] as num?)?.toInt(),
      name: json['name'] as String?,
      displayValues: (json['displayValues'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SelectImplToJson(_$SelectImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'name': instance.name,
      'displayValues': instance.displayValues,
      'type': instance.$type,
    };

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      state: (json['state'] as List<dynamic>?)
          ?.map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'state': instance.state?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'type': instance.$type,
    };

_$SortStateImpl _$$SortStateImplFromJson(Map<String, dynamic> json) =>
    _$SortStateImpl(
      index: (json['index'] as num?)?.toInt(),
      ascending: json['ascending'] as bool?,
    );

Map<String, dynamic> _$$SortStateImplToJson(_$SortStateImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'ascending': instance.ascending,
    };

_$SelectValuesImpl _$$SelectValuesImplFromJson(Map<String, dynamic> json) =>
    _$SelectValuesImpl(
      first: json['first'] as String?,
      second: json['second'] as String?,
    );

Map<String, dynamic> _$$SelectValuesImplToJson(_$SelectValuesImpl instance) =>
    <String, dynamic>{
      'first': instance.first,
      'second': instance.second,
    };
