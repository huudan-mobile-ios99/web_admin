// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterState _$FilterStateFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'Header':
      return _Header.fromJson(json);
    case 'Text':
      return _Text.fromJson(json);
    case 'CheckBox':
      return _CheckBox.fromJson(json);
    case 'TriState':
      return _TriState.fromJson(json);
    case 'Sort':
      return _Sort.fromJson(json);
    case 'Select':
      return _Select.fromJson(json);
    case 'Group':
      return _Group.fromJson(json);

    default:
      return _Separator.fromJson(json);
  }
}

/// @nodoc
mixin _$FilterState {
  Object? get state => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? state, String? name) header,
    required TResult Function(int? state, String? name) separator,
    required TResult Function(String? state, String? name) text,
    required TResult Function(bool? state, String? name) checkBox,
    required TResult Function(int? state, String? name) triState,
    required TResult Function(
            SortState? state, String? name, List<String>? values)
        sort,
    required TResult Function(
            int? state, String? name, List<String>? displayValues)
        select,
    required TResult Function(List<Filter>? state, String? name) group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? state, String? name)? header,
    TResult? Function(int? state, String? name)? separator,
    TResult? Function(String? state, String? name)? text,
    TResult? Function(bool? state, String? name)? checkBox,
    TResult? Function(int? state, String? name)? triState,
    TResult? Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult? Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult? Function(List<Filter>? state, String? name)? group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? state, String? name)? header,
    TResult Function(int? state, String? name)? separator,
    TResult Function(String? state, String? name)? text,
    TResult Function(bool? state, String? name)? checkBox,
    TResult Function(int? state, String? name)? triState,
    TResult Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult Function(List<Filter>? state, String? name)? group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Header value) header,
    required TResult Function(_Separator value) separator,
    required TResult Function(_Text value) text,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_TriState value) triState,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Select value) select,
    required TResult Function(_Group value) group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Header value)? header,
    TResult? Function(_Separator value)? separator,
    TResult? Function(_Text value)? text,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_TriState value)? triState,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Select value)? select,
    TResult? Function(_Group value)? group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Header value)? header,
    TResult Function(_Separator value)? separator,
    TResult Function(_Text value)? text,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_TriState value)? triState,
    TResult Function(_Sort value)? sort,
    TResult Function(_Select value)? select,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeaderImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$HeaderImplCopyWith(
          _$HeaderImpl value, $Res Function(_$HeaderImpl) then) =
      __$$HeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? state, String? name});
}

/// @nodoc
class __$$HeaderImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$HeaderImpl>
    implements _$$HeaderImplCopyWith<$Res> {
  __$$HeaderImplCopyWithImpl(
      _$HeaderImpl _value, $Res Function(_$HeaderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? name = freezed,
  }) {
    return _then(_$HeaderImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeaderImpl implements _Header {
  const _$HeaderImpl({this.state, this.name, final String? $type})
      : $type = $type ?? 'Header';

  factory _$HeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeaderImplFromJson(json);

  @override
  final int? state;
  @override
  final String? name;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FilterState.header(state: $state, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeaderImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeaderImplCopyWith<_$HeaderImpl> get copyWith =>
      __$$HeaderImplCopyWithImpl<_$HeaderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? state, String? name) header,
    required TResult Function(int? state, String? name) separator,
    required TResult Function(String? state, String? name) text,
    required TResult Function(bool? state, String? name) checkBox,
    required TResult Function(int? state, String? name) triState,
    required TResult Function(
            SortState? state, String? name, List<String>? values)
        sort,
    required TResult Function(
            int? state, String? name, List<String>? displayValues)
        select,
    required TResult Function(List<Filter>? state, String? name) group,
  }) {
    return header(state, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? state, String? name)? header,
    TResult? Function(int? state, String? name)? separator,
    TResult? Function(String? state, String? name)? text,
    TResult? Function(bool? state, String? name)? checkBox,
    TResult? Function(int? state, String? name)? triState,
    TResult? Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult? Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult? Function(List<Filter>? state, String? name)? group,
  }) {
    return header?.call(state, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? state, String? name)? header,
    TResult Function(int? state, String? name)? separator,
    TResult Function(String? state, String? name)? text,
    TResult Function(bool? state, String? name)? checkBox,
    TResult Function(int? state, String? name)? triState,
    TResult Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult Function(List<Filter>? state, String? name)? group,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(state, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Header value) header,
    required TResult Function(_Separator value) separator,
    required TResult Function(_Text value) text,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_TriState value) triState,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Select value) select,
    required TResult Function(_Group value) group,
  }) {
    return header(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Header value)? header,
    TResult? Function(_Separator value)? separator,
    TResult? Function(_Text value)? text,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_TriState value)? triState,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Select value)? select,
    TResult? Function(_Group value)? group,
  }) {
    return header?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Header value)? header,
    TResult Function(_Separator value)? separator,
    TResult Function(_Text value)? text,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_TriState value)? triState,
    TResult Function(_Sort value)? sort,
    TResult Function(_Select value)? select,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HeaderImplToJson(
      this,
    );
  }
}

abstract class _Header implements FilterState, _FilterStateGeneric<int> {
  const factory _Header({final int? state, final String? name}) = _$HeaderImpl;

  factory _Header.fromJson(Map<String, dynamic> json) = _$HeaderImpl.fromJson;

  @override
  int? get state;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$HeaderImplCopyWith<_$HeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeparatorImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$SeparatorImplCopyWith(
          _$SeparatorImpl value, $Res Function(_$SeparatorImpl) then) =
      __$$SeparatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? state, String? name});
}

/// @nodoc
class __$$SeparatorImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$SeparatorImpl>
    implements _$$SeparatorImplCopyWith<$Res> {
  __$$SeparatorImplCopyWithImpl(
      _$SeparatorImpl _value, $Res Function(_$SeparatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SeparatorImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeparatorImpl implements _Separator {
  const _$SeparatorImpl({this.state, this.name, final String? $type})
      : $type = $type ?? 'Separator';

  factory _$SeparatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeparatorImplFromJson(json);

  @override
  final int? state;
  @override
  final String? name;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FilterState.separator(state: $state, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeparatorImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeparatorImplCopyWith<_$SeparatorImpl> get copyWith =>
      __$$SeparatorImplCopyWithImpl<_$SeparatorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? state, String? name) header,
    required TResult Function(int? state, String? name) separator,
    required TResult Function(String? state, String? name) text,
    required TResult Function(bool? state, String? name) checkBox,
    required TResult Function(int? state, String? name) triState,
    required TResult Function(
            SortState? state, String? name, List<String>? values)
        sort,
    required TResult Function(
            int? state, String? name, List<String>? displayValues)
        select,
    required TResult Function(List<Filter>? state, String? name) group,
  }) {
    return separator(state, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? state, String? name)? header,
    TResult? Function(int? state, String? name)? separator,
    TResult? Function(String? state, String? name)? text,
    TResult? Function(bool? state, String? name)? checkBox,
    TResult? Function(int? state, String? name)? triState,
    TResult? Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult? Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult? Function(List<Filter>? state, String? name)? group,
  }) {
    return separator?.call(state, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? state, String? name)? header,
    TResult Function(int? state, String? name)? separator,
    TResult Function(String? state, String? name)? text,
    TResult Function(bool? state, String? name)? checkBox,
    TResult Function(int? state, String? name)? triState,
    TResult Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult Function(List<Filter>? state, String? name)? group,
    required TResult orElse(),
  }) {
    if (separator != null) {
      return separator(state, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Header value) header,
    required TResult Function(_Separator value) separator,
    required TResult Function(_Text value) text,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_TriState value) triState,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Select value) select,
    required TResult Function(_Group value) group,
  }) {
    return separator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Header value)? header,
    TResult? Function(_Separator value)? separator,
    TResult? Function(_Text value)? text,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_TriState value)? triState,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Select value)? select,
    TResult? Function(_Group value)? group,
  }) {
    return separator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Header value)? header,
    TResult Function(_Separator value)? separator,
    TResult Function(_Text value)? text,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_TriState value)? triState,
    TResult Function(_Sort value)? sort,
    TResult Function(_Select value)? select,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (separator != null) {
      return separator(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SeparatorImplToJson(
      this,
    );
  }
}

abstract class _Separator implements FilterState, _FilterStateGeneric<int> {
  const factory _Separator({final int? state, final String? name}) =
      _$SeparatorImpl;

  factory _Separator.fromJson(Map<String, dynamic> json) =
      _$SeparatorImpl.fromJson;

  @override
  int? get state;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$SeparatorImplCopyWith<_$SeparatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextImplCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory _$$TextImplCopyWith(
          _$TextImpl value, $Res Function(_$TextImpl) then) =
      __$$TextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? state, String? name});
}

/// @nodoc
class __$$TextImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$TextImpl>
    implements _$$TextImplCopyWith<$Res> {
  __$$TextImplCopyWithImpl(_$TextImpl _value, $Res Function(_$TextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TextImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextImpl implements _Text {
  const _$TextImpl({this.state, this.name, final String? $type})
      : $type = $type ?? 'Text';

  factory _$TextImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextImplFromJson(json);

  @override
  final String? state;
  @override
  final String? name;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FilterState.text(state: $state, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextImplCopyWith<_$TextImpl> get copyWith =>
      __$$TextImplCopyWithImpl<_$TextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? state, String? name) header,
    required TResult Function(int? state, String? name) separator,
    required TResult Function(String? state, String? name) text,
    required TResult Function(bool? state, String? name) checkBox,
    required TResult Function(int? state, String? name) triState,
    required TResult Function(
            SortState? state, String? name, List<String>? values)
        sort,
    required TResult Function(
            int? state, String? name, List<String>? displayValues)
        select,
    required TResult Function(List<Filter>? state, String? name) group,
  }) {
    return text(state, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? state, String? name)? header,
    TResult? Function(int? state, String? name)? separator,
    TResult? Function(String? state, String? name)? text,
    TResult? Function(bool? state, String? name)? checkBox,
    TResult? Function(int? state, String? name)? triState,
    TResult? Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult? Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult? Function(List<Filter>? state, String? name)? group,
  }) {
    return text?.call(state, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? state, String? name)? header,
    TResult Function(int? state, String? name)? separator,
    TResult Function(String? state, String? name)? text,
    TResult Function(bool? state, String? name)? checkBox,
    TResult Function(int? state, String? name)? triState,
    TResult Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult Function(List<Filter>? state, String? name)? group,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(state, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Header value) header,
    required TResult Function(_Separator value) separator,
    required TResult Function(_Text value) text,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_TriState value) triState,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Select value) select,
    required TResult Function(_Group value) group,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Header value)? header,
    TResult? Function(_Separator value)? separator,
    TResult? Function(_Text value)? text,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_TriState value)? triState,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Select value)? select,
    TResult? Function(_Group value)? group,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Header value)? header,
    TResult Function(_Separator value)? separator,
    TResult Function(_Text value)? text,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_TriState value)? triState,
    TResult Function(_Sort value)? sort,
    TResult Function(_Select value)? select,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextImplToJson(
      this,
    );
  }
}

abstract class _Text implements FilterState, _FilterStateGeneric<String> {
  const factory _Text({final String? state, final String? name}) = _$TextImpl;

  factory _Text.fromJson(Map<String, dynamic> json) = _$TextImpl.fromJson;

  @override
  String? get state;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$TextImplCopyWith<_$TextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckBoxImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$CheckBoxImplCopyWith(
          _$CheckBoxImpl value, $Res Function(_$CheckBoxImpl) then) =
      __$$CheckBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? state, String? name});
}

/// @nodoc
class __$$CheckBoxImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$CheckBoxImpl>
    implements _$$CheckBoxImplCopyWith<$Res> {
  __$$CheckBoxImplCopyWithImpl(
      _$CheckBoxImpl _value, $Res Function(_$CheckBoxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CheckBoxImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckBoxImpl implements _CheckBox {
  const _$CheckBoxImpl({this.state, this.name, final String? $type})
      : $type = $type ?? 'CheckBox';

  factory _$CheckBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckBoxImplFromJson(json);

  @override
  final bool? state;
  @override
  final String? name;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FilterState.checkBox(state: $state, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckBoxImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckBoxImplCopyWith<_$CheckBoxImpl> get copyWith =>
      __$$CheckBoxImplCopyWithImpl<_$CheckBoxImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? state, String? name) header,
    required TResult Function(int? state, String? name) separator,
    required TResult Function(String? state, String? name) text,
    required TResult Function(bool? state, String? name) checkBox,
    required TResult Function(int? state, String? name) triState,
    required TResult Function(
            SortState? state, String? name, List<String>? values)
        sort,
    required TResult Function(
            int? state, String? name, List<String>? displayValues)
        select,
    required TResult Function(List<Filter>? state, String? name) group,
  }) {
    return checkBox(state, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? state, String? name)? header,
    TResult? Function(int? state, String? name)? separator,
    TResult? Function(String? state, String? name)? text,
    TResult? Function(bool? state, String? name)? checkBox,
    TResult? Function(int? state, String? name)? triState,
    TResult? Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult? Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult? Function(List<Filter>? state, String? name)? group,
  }) {
    return checkBox?.call(state, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? state, String? name)? header,
    TResult Function(int? state, String? name)? separator,
    TResult Function(String? state, String? name)? text,
    TResult Function(bool? state, String? name)? checkBox,
    TResult Function(int? state, String? name)? triState,
    TResult Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult Function(List<Filter>? state, String? name)? group,
    required TResult orElse(),
  }) {
    if (checkBox != null) {
      return checkBox(state, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Header value) header,
    required TResult Function(_Separator value) separator,
    required TResult Function(_Text value) text,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_TriState value) triState,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Select value) select,
    required TResult Function(_Group value) group,
  }) {
    return checkBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Header value)? header,
    TResult? Function(_Separator value)? separator,
    TResult? Function(_Text value)? text,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_TriState value)? triState,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Select value)? select,
    TResult? Function(_Group value)? group,
  }) {
    return checkBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Header value)? header,
    TResult Function(_Separator value)? separator,
    TResult Function(_Text value)? text,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_TriState value)? triState,
    TResult Function(_Sort value)? sort,
    TResult Function(_Select value)? select,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (checkBox != null) {
      return checkBox(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckBoxImplToJson(
      this,
    );
  }
}

abstract class _CheckBox implements FilterState, _FilterStateGeneric<bool> {
  const factory _CheckBox({final bool? state, final String? name}) =
      _$CheckBoxImpl;

  factory _CheckBox.fromJson(Map<String, dynamic> json) =
      _$CheckBoxImpl.fromJson;

  @override
  bool? get state;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$CheckBoxImplCopyWith<_$CheckBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TriStateImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$TriStateImplCopyWith(
          _$TriStateImpl value, $Res Function(_$TriStateImpl) then) =
      __$$TriStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? state, String? name});
}

/// @nodoc
class __$$TriStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$TriStateImpl>
    implements _$$TriStateImplCopyWith<$Res> {
  __$$TriStateImplCopyWithImpl(
      _$TriStateImpl _value, $Res Function(_$TriStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TriStateImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TriStateImpl implements _TriState {
  const _$TriStateImpl({this.state, this.name, final String? $type})
      : $type = $type ?? 'TriState';

  factory _$TriStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TriStateImplFromJson(json);

  @override
  final int? state;
  @override
  final String? name;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FilterState.triState(state: $state, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriStateImplCopyWith<_$TriStateImpl> get copyWith =>
      __$$TriStateImplCopyWithImpl<_$TriStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? state, String? name) header,
    required TResult Function(int? state, String? name) separator,
    required TResult Function(String? state, String? name) text,
    required TResult Function(bool? state, String? name) checkBox,
    required TResult Function(int? state, String? name) triState,
    required TResult Function(
            SortState? state, String? name, List<String>? values)
        sort,
    required TResult Function(
            int? state, String? name, List<String>? displayValues)
        select,
    required TResult Function(List<Filter>? state, String? name) group,
  }) {
    return triState(state, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? state, String? name)? header,
    TResult? Function(int? state, String? name)? separator,
    TResult? Function(String? state, String? name)? text,
    TResult? Function(bool? state, String? name)? checkBox,
    TResult? Function(int? state, String? name)? triState,
    TResult? Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult? Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult? Function(List<Filter>? state, String? name)? group,
  }) {
    return triState?.call(state, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? state, String? name)? header,
    TResult Function(int? state, String? name)? separator,
    TResult Function(String? state, String? name)? text,
    TResult Function(bool? state, String? name)? checkBox,
    TResult Function(int? state, String? name)? triState,
    TResult Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult Function(List<Filter>? state, String? name)? group,
    required TResult orElse(),
  }) {
    if (triState != null) {
      return triState(state, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Header value) header,
    required TResult Function(_Separator value) separator,
    required TResult Function(_Text value) text,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_TriState value) triState,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Select value) select,
    required TResult Function(_Group value) group,
  }) {
    return triState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Header value)? header,
    TResult? Function(_Separator value)? separator,
    TResult? Function(_Text value)? text,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_TriState value)? triState,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Select value)? select,
    TResult? Function(_Group value)? group,
  }) {
    return triState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Header value)? header,
    TResult Function(_Separator value)? separator,
    TResult Function(_Text value)? text,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_TriState value)? triState,
    TResult Function(_Sort value)? sort,
    TResult Function(_Select value)? select,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (triState != null) {
      return triState(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TriStateImplToJson(
      this,
    );
  }
}

abstract class _TriState implements FilterState, _FilterStateGeneric<int> {
  const factory _TriState({final int? state, final String? name}) =
      _$TriStateImpl;

  factory _TriState.fromJson(Map<String, dynamic> json) =
      _$TriStateImpl.fromJson;

  @override
  int? get state;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$TriStateImplCopyWith<_$TriStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortImplCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory _$$SortImplCopyWith(
          _$SortImpl value, $Res Function(_$SortImpl) then) =
      __$$SortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SortState? state, String? name, List<String>? values});

  $SortStateCopyWith<$Res>? get state;
}

/// @nodoc
class __$$SortImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$SortImpl>
    implements _$$SortImplCopyWith<$Res> {
  __$$SortImplCopyWithImpl(_$SortImpl _value, $Res Function(_$SortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? name = freezed,
    Object? values = freezed,
  }) {
    return _then(_$SortImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SortState?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SortStateCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $SortStateCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SortImpl implements _Sort {
  const _$SortImpl(
      {this.state, this.name, final List<String>? values, final String? $type})
      : _values = values,
        $type = $type ?? 'Sort';

  factory _$SortImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortImplFromJson(json);

  @override
  final SortState? state;
  @override
  final String? name;
  final List<String>? _values;
  @override
  List<String>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FilterState.sort(state: $state, name: $name, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, state, name, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      __$$SortImplCopyWithImpl<_$SortImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? state, String? name) header,
    required TResult Function(int? state, String? name) separator,
    required TResult Function(String? state, String? name) text,
    required TResult Function(bool? state, String? name) checkBox,
    required TResult Function(int? state, String? name) triState,
    required TResult Function(
            SortState? state, String? name, List<String>? values)
        sort,
    required TResult Function(
            int? state, String? name, List<String>? displayValues)
        select,
    required TResult Function(List<Filter>? state, String? name) group,
  }) {
    return sort(state, name, values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? state, String? name)? header,
    TResult? Function(int? state, String? name)? separator,
    TResult? Function(String? state, String? name)? text,
    TResult? Function(bool? state, String? name)? checkBox,
    TResult? Function(int? state, String? name)? triState,
    TResult? Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult? Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult? Function(List<Filter>? state, String? name)? group,
  }) {
    return sort?.call(state, name, values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? state, String? name)? header,
    TResult Function(int? state, String? name)? separator,
    TResult Function(String? state, String? name)? text,
    TResult Function(bool? state, String? name)? checkBox,
    TResult Function(int? state, String? name)? triState,
    TResult Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult Function(List<Filter>? state, String? name)? group,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(state, name, values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Header value) header,
    required TResult Function(_Separator value) separator,
    required TResult Function(_Text value) text,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_TriState value) triState,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Select value) select,
    required TResult Function(_Group value) group,
  }) {
    return sort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Header value)? header,
    TResult? Function(_Separator value)? separator,
    TResult? Function(_Text value)? text,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_TriState value)? triState,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Select value)? select,
    TResult? Function(_Group value)? group,
  }) {
    return sort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Header value)? header,
    TResult Function(_Separator value)? separator,
    TResult Function(_Text value)? text,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_TriState value)? triState,
    TResult Function(_Sort value)? sort,
    TResult Function(_Select value)? select,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SortImplToJson(
      this,
    );
  }
}

abstract class _Sort implements FilterState, _FilterStateGeneric<SortState> {
  const factory _Sort(
      {final SortState? state,
      final String? name,
      final List<String>? values}) = _$SortImpl;

  factory _Sort.fromJson(Map<String, dynamic> json) = _$SortImpl.fromJson;

  @override
  SortState? get state;
  @override
  String? get name;
  List<String>? get values;
  @override
  @JsonKey(ignore: true)
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? state, String? name, List<String>? displayValues});
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? name = freezed,
    Object? displayValues = freezed,
  }) {
    return _then(_$SelectImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      displayValues: freezed == displayValues
          ? _value._displayValues
          : displayValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectImpl implements _Select {
  const _$SelectImpl(
      {this.state,
      this.name,
      final List<String>? displayValues,
      final String? $type})
      : _displayValues = displayValues,
        $type = $type ?? 'Select';

  factory _$SelectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectImplFromJson(json);

  @override
  final int? state;
  @override
  final String? name;
  final List<String>? _displayValues;
  @override
  List<String>? get displayValues {
    final value = _displayValues;
    if (value == null) return null;
    if (_displayValues is EqualUnmodifiableListView) return _displayValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FilterState.select(state: $state, name: $name, displayValues: $displayValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._displayValues, _displayValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, name,
      const DeepCollectionEquality().hash(_displayValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? state, String? name) header,
    required TResult Function(int? state, String? name) separator,
    required TResult Function(String? state, String? name) text,
    required TResult Function(bool? state, String? name) checkBox,
    required TResult Function(int? state, String? name) triState,
    required TResult Function(
            SortState? state, String? name, List<String>? values)
        sort,
    required TResult Function(
            int? state, String? name, List<String>? displayValues)
        select,
    required TResult Function(List<Filter>? state, String? name) group,
  }) {
    return select(state, name, displayValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? state, String? name)? header,
    TResult? Function(int? state, String? name)? separator,
    TResult? Function(String? state, String? name)? text,
    TResult? Function(bool? state, String? name)? checkBox,
    TResult? Function(int? state, String? name)? triState,
    TResult? Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult? Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult? Function(List<Filter>? state, String? name)? group,
  }) {
    return select?.call(state, name, displayValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? state, String? name)? header,
    TResult Function(int? state, String? name)? separator,
    TResult Function(String? state, String? name)? text,
    TResult Function(bool? state, String? name)? checkBox,
    TResult Function(int? state, String? name)? triState,
    TResult Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult Function(List<Filter>? state, String? name)? group,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(state, name, displayValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Header value) header,
    required TResult Function(_Separator value) separator,
    required TResult Function(_Text value) text,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_TriState value) triState,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Select value) select,
    required TResult Function(_Group value) group,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Header value)? header,
    TResult? Function(_Separator value)? separator,
    TResult? Function(_Text value)? text,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_TriState value)? triState,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Select value)? select,
    TResult? Function(_Group value)? group,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Header value)? header,
    TResult Function(_Separator value)? separator,
    TResult Function(_Text value)? text,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_TriState value)? triState,
    TResult Function(_Sort value)? sort,
    TResult Function(_Select value)? select,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectImplToJson(
      this,
    );
  }
}

abstract class _Select implements FilterState, _FilterStateGeneric<int> {
  const factory _Select(
      {final int? state,
      final String? name,
      final List<String>? displayValues}) = _$SelectImpl;

  factory _Select.fromJson(Map<String, dynamic> json) = _$SelectImpl.fromJson;

  @override
  int? get state;
  @override
  String? get name;
  List<String>? get displayValues;
  @override
  @JsonKey(ignore: true)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
          _$GroupImpl value, $Res Function(_$GroupImpl) then) =
      __$$GroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Filter>? state, String? name});
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
      _$GroupImpl _value, $Res Function(_$GroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? name = freezed,
  }) {
    return _then(_$GroupImpl(
      state: freezed == state
          ? _value._state
          : state // ignore: cast_nullable_to_non_nullable
              as List<Filter>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupImpl implements _Group {
  const _$GroupImpl({final List<Filter>? state, this.name, final String? $type})
      : _state = state,
        $type = $type ?? 'Group';

  factory _$GroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupImplFromJson(json);

  final List<Filter>? _state;
  @override
  List<Filter>? get state {
    final value = _state;
    if (value == null) return null;
    if (_state is EqualUnmodifiableListView) return _state;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FilterState.group(state: $state, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupImpl &&
            const DeepCollectionEquality().equals(other._state, _state) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_state), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      __$$GroupImplCopyWithImpl<_$GroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? state, String? name) header,
    required TResult Function(int? state, String? name) separator,
    required TResult Function(String? state, String? name) text,
    required TResult Function(bool? state, String? name) checkBox,
    required TResult Function(int? state, String? name) triState,
    required TResult Function(
            SortState? state, String? name, List<String>? values)
        sort,
    required TResult Function(
            int? state, String? name, List<String>? displayValues)
        select,
    required TResult Function(List<Filter>? state, String? name) group,
  }) {
    return group(state, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? state, String? name)? header,
    TResult? Function(int? state, String? name)? separator,
    TResult? Function(String? state, String? name)? text,
    TResult? Function(bool? state, String? name)? checkBox,
    TResult? Function(int? state, String? name)? triState,
    TResult? Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult? Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult? Function(List<Filter>? state, String? name)? group,
  }) {
    return group?.call(state, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? state, String? name)? header,
    TResult Function(int? state, String? name)? separator,
    TResult Function(String? state, String? name)? text,
    TResult Function(bool? state, String? name)? checkBox,
    TResult Function(int? state, String? name)? triState,
    TResult Function(SortState? state, String? name, List<String>? values)?
        sort,
    TResult Function(int? state, String? name, List<String>? displayValues)?
        select,
    TResult Function(List<Filter>? state, String? name)? group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(state, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Header value) header,
    required TResult Function(_Separator value) separator,
    required TResult Function(_Text value) text,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_TriState value) triState,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Select value) select,
    required TResult Function(_Group value) group,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Header value)? header,
    TResult? Function(_Separator value)? separator,
    TResult? Function(_Text value)? text,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_TriState value)? triState,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Select value)? select,
    TResult? Function(_Group value)? group,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Header value)? header,
    TResult Function(_Separator value)? separator,
    TResult Function(_Text value)? text,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_TriState value)? triState,
    TResult Function(_Sort value)? sort,
    TResult Function(_Select value)? select,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupImplToJson(
      this,
    );
  }
}

abstract class _Group
    implements FilterState, _FilterStateGeneric<List<Filter>> {
  const factory _Group({final List<Filter>? state, final String? name}) =
      _$GroupImpl;

  factory _Group.fromJson(Map<String, dynamic> json) = _$GroupImpl.fromJson;

  @override
  List<Filter>? get state;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SortState _$SortStateFromJson(Map<String, dynamic> json) {
  return _SortState.fromJson(json);
}

/// @nodoc
mixin _$SortState {
  int? get index => throw _privateConstructorUsedError;
  bool? get ascending => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortStateCopyWith<SortState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortStateCopyWith<$Res> {
  factory $SortStateCopyWith(SortState value, $Res Function(SortState) then) =
      _$SortStateCopyWithImpl<$Res, SortState>;
  @useResult
  $Res call({int? index, bool? ascending});
}

/// @nodoc
class _$SortStateCopyWithImpl<$Res, $Val extends SortState>
    implements $SortStateCopyWith<$Res> {
  _$SortStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? ascending = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      ascending: freezed == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortStateImplCopyWith<$Res>
    implements $SortStateCopyWith<$Res> {
  factory _$$SortStateImplCopyWith(
          _$SortStateImpl value, $Res Function(_$SortStateImpl) then) =
      __$$SortStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index, bool? ascending});
}

/// @nodoc
class __$$SortStateImplCopyWithImpl<$Res>
    extends _$SortStateCopyWithImpl<$Res, _$SortStateImpl>
    implements _$$SortStateImplCopyWith<$Res> {
  __$$SortStateImplCopyWithImpl(
      _$SortStateImpl _value, $Res Function(_$SortStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? ascending = freezed,
  }) {
    return _then(_$SortStateImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      ascending: freezed == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortStateImpl implements _SortState {
  _$SortStateImpl({this.index, this.ascending});

  factory _$SortStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortStateImplFromJson(json);

  @override
  final int? index;
  @override
  final bool? ascending;

  @override
  String toString() {
    return 'SortState(index: $index, ascending: $ascending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, ascending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortStateImplCopyWith<_$SortStateImpl> get copyWith =>
      __$$SortStateImplCopyWithImpl<_$SortStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortStateImplToJson(
      this,
    );
  }
}

abstract class _SortState implements SortState {
  factory _SortState({final int? index, final bool? ascending}) =
      _$SortStateImpl;

  factory _SortState.fromJson(Map<String, dynamic> json) =
      _$SortStateImpl.fromJson;

  @override
  int? get index;
  @override
  bool? get ascending;
  @override
  @JsonKey(ignore: true)
  _$$SortStateImplCopyWith<_$SortStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectValues _$SelectValuesFromJson(Map<String, dynamic> json) {
  return _SelectValues.fromJson(json);
}

/// @nodoc
mixin _$SelectValues {
  String? get first => throw _privateConstructorUsedError;
  String? get second => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectValuesCopyWith<SelectValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectValuesCopyWith<$Res> {
  factory $SelectValuesCopyWith(
          SelectValues value, $Res Function(SelectValues) then) =
      _$SelectValuesCopyWithImpl<$Res, SelectValues>;
  @useResult
  $Res call({String? first, String? second});
}

/// @nodoc
class _$SelectValuesCopyWithImpl<$Res, $Val extends SelectValues>
    implements $SelectValuesCopyWith<$Res> {
  _$SelectValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectValuesImplCopyWith<$Res>
    implements $SelectValuesCopyWith<$Res> {
  factory _$$SelectValuesImplCopyWith(
          _$SelectValuesImpl value, $Res Function(_$SelectValuesImpl) then) =
      __$$SelectValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? first, String? second});
}

/// @nodoc
class __$$SelectValuesImplCopyWithImpl<$Res>
    extends _$SelectValuesCopyWithImpl<$Res, _$SelectValuesImpl>
    implements _$$SelectValuesImplCopyWith<$Res> {
  __$$SelectValuesImplCopyWithImpl(
      _$SelectValuesImpl _value, $Res Function(_$SelectValuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_$SelectValuesImpl(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectValuesImpl implements _SelectValues {
  _$SelectValuesImpl({this.first, this.second});

  factory _$SelectValuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectValuesImplFromJson(json);

  @override
  final String? first;
  @override
  final String? second;

  @override
  String toString() {
    return 'SelectValues(first: $first, second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectValuesImpl &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.second, second) || other.second == second));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, second);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectValuesImplCopyWith<_$SelectValuesImpl> get copyWith =>
      __$$SelectValuesImplCopyWithImpl<_$SelectValuesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectValuesImplToJson(
      this,
    );
  }
}

abstract class _SelectValues implements SelectValues {
  factory _SelectValues({final String? first, final String? second}) =
      _$SelectValuesImpl;

  factory _SelectValues.fromJson(Map<String, dynamic> json) =
      _$SelectValuesImpl.fromJson;

  @override
  String? get first;
  @override
  String? get second;
  @override
  @JsonKey(ignore: true)
  _$$SelectValuesImplCopyWith<_$SelectValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
