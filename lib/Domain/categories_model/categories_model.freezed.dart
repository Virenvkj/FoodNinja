// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesModel {
  String get name => throw _privateConstructorUsedError;
  String get iconImage => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res, CategoriesModel>;
  @useResult
  $Res call({String name, String iconImage});
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res, $Val extends CategoriesModel>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconImage = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconImage: null == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesModelImplCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$CategoriesModelImplCopyWith(_$CategoriesModelImpl value,
          $Res Function(_$CategoriesModelImpl) then) =
      __$$CategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String iconImage});
}

/// @nodoc
class __$$CategoriesModelImplCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res, _$CategoriesModelImpl>
    implements _$$CategoriesModelImplCopyWith<$Res> {
  __$$CategoriesModelImplCopyWithImpl(
      _$CategoriesModelImpl _value, $Res Function(_$CategoriesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconImage = null,
  }) {
    return _then(_$CategoriesModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconImage: null == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoriesModelImpl
    with DiagnosticableTreeMixin
    implements _CategoriesModel {
  const _$CategoriesModelImpl({required this.name, required this.iconImage});

  @override
  final String name;
  @override
  final String iconImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesModel(name: $name, iconImage: $iconImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoriesModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('iconImage', iconImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconImage, iconImage) ||
                other.iconImage == iconImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, iconImage);

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      __$$CategoriesModelImplCopyWithImpl<_$CategoriesModelImpl>(
          this, _$identity);
}

abstract class _CategoriesModel implements CategoriesModel {
  const factory _CategoriesModel(
      {required final String name,
      required final String iconImage}) = _$CategoriesModelImpl;

  @override
  String get name;
  @override
  String get iconImage;

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
