// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent()';
}


}

/// @nodoc
class $DownloadsEventCopyWith<$Res>  {
$DownloadsEventCopyWith(DownloadsEvent _, $Res Function(DownloadsEvent) __);
}


/// @nodoc


class _GetDownloadImage implements DownloadsEvent {
  const _GetDownloadImage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDownloadImage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.getDownloadImage()';
}


}




/// @nodoc
mixin _$DownloadsState {

 bool get isLoading; List<Downloads>? get downloads; Option<Either<MainFailure, List<Downloads>>> get downloadSuccesOrFailureOption;
/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadsStateCopyWith<DownloadsState> get copyWith => _$DownloadsStateCopyWithImpl<DownloadsState>(this as DownloadsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.downloads, downloads)&&(identical(other.downloadSuccesOrFailureOption, downloadSuccesOrFailureOption) || other.downloadSuccesOrFailureOption == downloadSuccesOrFailureOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(downloads),downloadSuccesOrFailureOption);

@override
String toString() {
  return 'DownloadsState(isLoading: $isLoading, downloads: $downloads, downloadSuccesOrFailureOption: $downloadSuccesOrFailureOption)';
}


}

/// @nodoc
abstract mixin class $DownloadsStateCopyWith<$Res>  {
  factory $DownloadsStateCopyWith(DownloadsState value, $Res Function(DownloadsState) _then) = _$DownloadsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<Downloads>? downloads, Option<Either<MainFailure, List<Downloads>>> downloadSuccesOrFailureOption
});




}
/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._self, this._then);

  final DownloadsState _self;
  final $Res Function(DownloadsState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? downloads = freezed,Object? downloadSuccesOrFailureOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,downloads: freezed == downloads ? _self.downloads : downloads // ignore: cast_nullable_to_non_nullable
as List<Downloads>?,downloadSuccesOrFailureOption: null == downloadSuccesOrFailureOption ? _self.downloadSuccesOrFailureOption : downloadSuccesOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MainFailure, List<Downloads>>>,
  ));
}

}


/// @nodoc


class _DownloadsState implements DownloadsState {
  const _DownloadsState({required this.isLoading, final  List<Downloads>? downloads, required this.downloadSuccesOrFailureOption}): _downloads = downloads;
  

@override final  bool isLoading;
 final  List<Downloads>? _downloads;
@override List<Downloads>? get downloads {
  final value = _downloads;
  if (value == null) return null;
  if (_downloads is EqualUnmodifiableListView) return _downloads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Option<Either<MainFailure, List<Downloads>>> downloadSuccesOrFailureOption;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadsStateCopyWith<_DownloadsState> get copyWith => __$DownloadsStateCopyWithImpl<_DownloadsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._downloads, _downloads)&&(identical(other.downloadSuccesOrFailureOption, downloadSuccesOrFailureOption) || other.downloadSuccesOrFailureOption == downloadSuccesOrFailureOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_downloads),downloadSuccesOrFailureOption);

@override
String toString() {
  return 'DownloadsState(isLoading: $isLoading, downloads: $downloads, downloadSuccesOrFailureOption: $downloadSuccesOrFailureOption)';
}


}

/// @nodoc
abstract mixin class _$DownloadsStateCopyWith<$Res> implements $DownloadsStateCopyWith<$Res> {
  factory _$DownloadsStateCopyWith(_DownloadsState value, $Res Function(_DownloadsState) _then) = __$DownloadsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<Downloads>? downloads, Option<Either<MainFailure, List<Downloads>>> downloadSuccesOrFailureOption
});




}
/// @nodoc
class __$DownloadsStateCopyWithImpl<$Res>
    implements _$DownloadsStateCopyWith<$Res> {
  __$DownloadsStateCopyWithImpl(this._self, this._then);

  final _DownloadsState _self;
  final $Res Function(_DownloadsState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? downloads = freezed,Object? downloadSuccesOrFailureOption = null,}) {
  return _then(_DownloadsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,downloads: freezed == downloads ? _self._downloads : downloads // ignore: cast_nullable_to_non_nullable
as List<Downloads>?,downloadSuccesOrFailureOption: null == downloadSuccesOrFailureOption ? _self.downloadSuccesOrFailureOption : downloadSuccesOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MainFailure, List<Downloads>>>,
  ));
}


}

// dart format on
