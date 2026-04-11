// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flowers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlowersModel {

 String get path;
/// Create a copy of FlowersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlowersModelCopyWith<FlowersModel> get copyWith => _$FlowersModelCopyWithImpl<FlowersModel>(this as FlowersModel, _$identity);

  /// Serializes this FlowersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlowersModel&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'FlowersModel(path: $path)';
}


}

/// @nodoc
abstract mixin class $FlowersModelCopyWith<$Res>  {
  factory $FlowersModelCopyWith(FlowersModel value, $Res Function(FlowersModel) _then) = _$FlowersModelCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$FlowersModelCopyWithImpl<$Res>
    implements $FlowersModelCopyWith<$Res> {
  _$FlowersModelCopyWithImpl(this._self, this._then);

  final FlowersModel _self;
  final $Res Function(FlowersModel) _then;

/// Create a copy of FlowersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FlowersModel].
extension FlowersModelPatterns on FlowersModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlowersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlowersModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlowersModel value)  $default,){
final _that = this;
switch (_that) {
case _FlowersModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlowersModel value)?  $default,){
final _that = this;
switch (_that) {
case _FlowersModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlowersModel() when $default != null:
return $default(_that.path);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path)  $default,) {final _that = this;
switch (_that) {
case _FlowersModel():
return $default(_that.path);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path)?  $default,) {final _that = this;
switch (_that) {
case _FlowersModel() when $default != null:
return $default(_that.path);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlowersModel implements FlowersModel {
  const _FlowersModel({required this.path});
  factory _FlowersModel.fromJson(Map<String, dynamic> json) => _$FlowersModelFromJson(json);

@override final  String path;

/// Create a copy of FlowersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlowersModelCopyWith<_FlowersModel> get copyWith => __$FlowersModelCopyWithImpl<_FlowersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlowersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlowersModel&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'FlowersModel(path: $path)';
}


}

/// @nodoc
abstract mixin class _$FlowersModelCopyWith<$Res> implements $FlowersModelCopyWith<$Res> {
  factory _$FlowersModelCopyWith(_FlowersModel value, $Res Function(_FlowersModel) _then) = __$FlowersModelCopyWithImpl;
@override @useResult
$Res call({
 String path
});




}
/// @nodoc
class __$FlowersModelCopyWithImpl<$Res>
    implements _$FlowersModelCopyWith<$Res> {
  __$FlowersModelCopyWithImpl(this._self, this._then);

  final _FlowersModel _self;
  final $Res Function(_FlowersModel) _then;

/// Create a copy of FlowersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(_FlowersModel(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
