// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.75.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

class NativeImpl implements Native {
  final NativePlatform _platform;
  factory NativeImpl(ExternalLibrary dylib) =>
      NativeImpl.raw(NativePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory NativeImpl.wasm(FutureOr<WasmModule> module) =>
      NativeImpl(module as ExternalLibrary);
  NativeImpl.raw(this._platform);
  Future<void> setup({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_setup(port_),
      parseSuccessData: _wire2api_unit,
      constMeta: kSetupConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSetupConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "setup",
        argNames: [],
      );

  Stream<DeamonAction> startDeamon({dynamic hint}) {
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_start_deamon(port_),
      parseSuccessData: _wire2api_deamon_action,
      constMeta: kStartDeamonConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kStartDeamonConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "start_deamon",
        argNames: [],
      );

  Future<void> stopDeamon({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_stop_deamon(port_),
      parseSuccessData: _wire2api_unit,
      constMeta: kStopDeamonConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kStopDeamonConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "stop_deamon",
        argNames: [],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  List<String> _wire2api_StringList(dynamic raw) {
    return (raw as List<dynamic>).cast<String>();
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  bool _wire2api_box_autoadd_bool(dynamic raw) {
    return raw as bool;
  }

  int _wire2api_box_autoadd_i32(dynamic raw) {
    return raw as int;
  }

  ImageData _wire2api_box_autoadd_image_data(dynamic raw) {
    return _wire2api_image_data(raw);
  }

  Notification _wire2api_box_autoadd_notification(dynamic raw) {
    return _wire2api_notification(raw);
  }

  Urgency _wire2api_box_autoadd_urgency(dynamic raw) {
    return _wire2api_urgency(raw);
  }

  DeamonAction _wire2api_deamon_action(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return DeamonAction_Show(
          _wire2api_box_autoadd_notification(raw[1]),
        );
      case 1:
        return DeamonAction_Close(
          _wire2api_u32(raw[1]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  Hints _wire2api_hints(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 13)
      throw Exception('unexpected arr length: expect 13 but see ${arr.length}');
    return Hints(
      actionsIcon: _wire2api_opt_box_autoadd_bool(arr[0]),
      category: _wire2api_opt_String(arr[1]),
      desktopEntry: _wire2api_opt_String(arr[2]),
      imageData: _wire2api_opt_box_autoadd_image_data(arr[3]),
      imagePath: _wire2api_opt_String(arr[4]),
      resident: _wire2api_opt_box_autoadd_bool(arr[5]),
      soundFile: _wire2api_opt_String(arr[6]),
      soundName: _wire2api_opt_String(arr[7]),
      suppressSound: _wire2api_opt_box_autoadd_bool(arr[8]),
      transient: _wire2api_opt_box_autoadd_bool(arr[9]),
      x: _wire2api_opt_box_autoadd_i32(arr[10]),
      y: _wire2api_opt_box_autoadd_i32(arr[11]),
      urgency: _wire2api_opt_box_autoadd_urgency(arr[12]),
    );
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  ImageData _wire2api_image_data(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 7)
      throw Exception('unexpected arr length: expect 7 but see ${arr.length}');
    return ImageData(
      width: _wire2api_i32(arr[0]),
      height: _wire2api_i32(arr[1]),
      rowstride: _wire2api_i32(arr[2]),
      onePointTwoBitAlpha: _wire2api_bool(arr[3]),
      bitsPerSample: _wire2api_i32(arr[4]),
      channels: _wire2api_i32(arr[5]),
      data: _wire2api_uint_8_list(arr[6]),
    );
  }

  Notification _wire2api_notification(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 9)
      throw Exception('unexpected arr length: expect 9 but see ${arr.length}');
    return Notification(
      id: _wire2api_u32(arr[0]),
      appName: _wire2api_String(arr[1]),
      replacesId: _wire2api_u32(arr[2]),
      icon: _wire2api_String(arr[3]),
      summary: _wire2api_String(arr[4]),
      body: _wire2api_String(arr[5]),
      actions: _wire2api_StringList(arr[6]),
      timeout: _wire2api_i32(arr[7]),
      hints: _wire2api_hints(arr[8]),
    );
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _wire2api_String(raw);
  }

  bool? _wire2api_opt_box_autoadd_bool(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_bool(raw);
  }

  int? _wire2api_opt_box_autoadd_i32(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_i32(raw);
  }

  ImageData? _wire2api_opt_box_autoadd_image_data(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_image_data(raw);
  }

  Urgency? _wire2api_opt_box_autoadd_urgency(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_urgency(raw);
  }

  int _wire2api_u32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }

  Urgency _wire2api_urgency(dynamic raw) {
    return Urgency.values[raw];
  }
}

// Section: api2wire

// Section: finalizer

class NativePlatform extends FlutterRustBridgeBase<NativeWire> {
  NativePlatform(ffi.DynamicLibrary dylib) : super(NativeWire(dylib));

// Section: api2wire

// Section: finalizer

// Section: api_fill_to_wire
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class NativeWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_setup(
    int port_,
  ) {
    return _wire_setup(
      port_,
    );
  }

  late final _wire_setupPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_setup');
  late final _wire_setup = _wire_setupPtr.asFunction<void Function(int)>();

  void wire_start_deamon(
    int port_,
  ) {
    return _wire_start_deamon(
      port_,
    );
  }

  late final _wire_start_deamonPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_start_deamon');
  late final _wire_start_deamon =
      _wire_start_deamonPtr.asFunction<void Function(int)>();

  void wire_stop_deamon(
    int port_,
  ) {
    return _wire_stop_deamon(
      port_,
    );
  }

  late final _wire_stop_deamonPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_stop_deamon');
  late final _wire_stop_deamon =
      _wire_stop_deamonPtr.asFunction<void Function(int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
