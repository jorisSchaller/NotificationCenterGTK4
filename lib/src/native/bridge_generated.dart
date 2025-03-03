// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.75.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;

import 'dart:ffi' as ffi;

part 'bridge_generated.freezed.dart';

abstract class Native {
  Future<void> setup({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetupConstMeta;

  Stream<DeamonAction> startDeamon({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kStartDeamonConstMeta;

  Future<void> stopDeamon({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kStopDeamonConstMeta;

  Future<void> sendDeamonAction({required DeamonAction action, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSendDeamonActionConstMeta;
}

@freezed
class DeamonAction with _$DeamonAction {
  const factory DeamonAction.show(
    Notification field0,
  ) = DeamonAction_Show;
  const factory DeamonAction.close(
    int field0,
  ) = DeamonAction_Close;
  const factory DeamonAction.update(
    List<Notification> field0,
  ) = DeamonAction_Update;
  const factory DeamonAction.clientClose(
    int field0,
  ) = DeamonAction_ClientClose;
  const factory DeamonAction.clientActionInvoked(
    int field0,
    String field1,
  ) = DeamonAction_ClientActionInvoked;
}

class Hints {
  final bool? actionsIcon;
  final String? category;
  final String? desktopEntry;
  final ImageData? imageData;
  final String? imagePath;
  final bool? resident;
  final String? soundFile;
  final String? soundName;
  final bool? suppressSound;
  final bool? transient;
  final int? x;
  final int? y;
  final Urgency? urgency;

  const Hints({
    this.actionsIcon,
    this.category,
    this.desktopEntry,
    this.imageData,
    this.imagePath,
    this.resident,
    this.soundFile,
    this.soundName,
    this.suppressSound,
    this.transient,
    this.x,
    this.y,
    this.urgency,
  });
}

class ImageData {
  final int width;
  final int height;
  final int rowstride;
  final bool onePointTwoBitAlpha;
  final int bitsPerSample;
  final int channels;
  final Uint8List data;

  const ImageData({
    required this.width,
    required this.height,
    required this.rowstride,
    required this.onePointTwoBitAlpha,
    required this.bitsPerSample,
    required this.channels,
    required this.data,
  });
}

class Notification {
  final int id;
  final String appName;
  final int replacesId;
  final String icon;
  final String summary;
  final String body;
  final List<String> actions;
  final int timeout;
  final int timeSinceDisplay;
  final Hints hints;

  const Notification({
    required this.id,
    required this.appName,
    required this.replacesId,
    required this.icon,
    required this.summary,
    required this.body,
    required this.actions,
    required this.timeout,
    required this.timeSinceDisplay,
    required this.hints,
  });
}

enum Urgency {
  Low,
  Normal,
  Critical,
}

class NativeImpl implements Native {
  final NativePlatform _platform;
  factory NativeImpl(ExternalLibrary dylib) => NativeImpl.raw(NativePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory NativeImpl.wasm(FutureOr<WasmModule> module) => NativeImpl(module as ExternalLibrary);
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

  FlutterRustBridgeTaskConstMeta get kSetupConstMeta => const FlutterRustBridgeTaskConstMeta(
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

  FlutterRustBridgeTaskConstMeta get kStartDeamonConstMeta => const FlutterRustBridgeTaskConstMeta(
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

  FlutterRustBridgeTaskConstMeta get kStopDeamonConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "stop_deamon",
        argNames: [],
      );

  Future<void> sendDeamonAction({required DeamonAction action, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_deamon_action(action);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_send_deamon_action(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kSendDeamonActionConstMeta,
      argValues: [
        action
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSendDeamonActionConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "send_deamon_action",
        argNames: [
          "action"
        ],
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
      case 2:
        return DeamonAction_Update(
          _wire2api_list_notification(raw[1]),
        );
      case 3:
        return DeamonAction_ClientClose(
          _wire2api_u32(raw[1]),
        );
      case 4:
        return DeamonAction_ClientActionInvoked(
          _wire2api_u32(raw[1]),
          _wire2api_String(raw[2]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  Hints _wire2api_hints(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 13) throw Exception('unexpected arr length: expect 13 but see ${arr.length}');
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
    if (arr.length != 7) throw Exception('unexpected arr length: expect 7 but see ${arr.length}');
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

  List<Notification> _wire2api_list_notification(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_notification).toList();
  }

  Notification _wire2api_notification(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 10) throw Exception('unexpected arr length: expect 10 but see ${arr.length}');
    return Notification(
      id: _wire2api_u32(arr[0]),
      appName: _wire2api_String(arr[1]),
      replacesId: _wire2api_u32(arr[2]),
      icon: _wire2api_String(arr[3]),
      summary: _wire2api_String(arr[4]),
      body: _wire2api_String(arr[5]),
      actions: _wire2api_StringList(arr[6]),
      timeout: _wire2api_i32(arr[7]),
      timeSinceDisplay: _wire2api_u32(arr[8]),
      hints: _wire2api_hints(arr[9]),
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

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

@protected
int api2wire_urgency(Urgency raw) {
  return api2wire_i32(raw.index);
}
// Section: finalizer

class NativePlatform extends FlutterRustBridgeBase<NativeWire> {
  NativePlatform(ffi.DynamicLibrary dylib) : super(NativeWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_StringList> api2wire_StringList(List<String> raw) {
    final ans = inner.new_StringList_0(raw.length);
    for (var i = 0; i < raw.length; i++) {
      ans.ref.ptr[i] = api2wire_String(raw[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<ffi.Bool> api2wire_box_autoadd_bool(bool raw) {
    return inner.new_box_autoadd_bool_0(api2wire_bool(raw));
  }

  @protected
  ffi.Pointer<wire_DeamonAction> api2wire_box_autoadd_deamon_action(DeamonAction raw) {
    final ptr = inner.new_box_autoadd_deamon_action_0();
    _api_fill_to_wire_deamon_action(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<ffi.Int32> api2wire_box_autoadd_i32(int raw) {
    return inner.new_box_autoadd_i32_0(api2wire_i32(raw));
  }

  @protected
  ffi.Pointer<wire_ImageData> api2wire_box_autoadd_image_data(ImageData raw) {
    final ptr = inner.new_box_autoadd_image_data_0();
    _api_fill_to_wire_image_data(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_Notification> api2wire_box_autoadd_notification(Notification raw) {
    final ptr = inner.new_box_autoadd_notification_0();
    _api_fill_to_wire_notification(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<ffi.Int32> api2wire_box_autoadd_urgency(Urgency raw) {
    return inner.new_box_autoadd_urgency_0(api2wire_urgency(raw));
  }

  @protected
  ffi.Pointer<wire_list_notification> api2wire_list_notification(List<Notification> raw) {
    final ans = inner.new_list_notification_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_notification(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<ffi.Bool> api2wire_opt_box_autoadd_bool(bool? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_bool(raw);
  }

  @protected
  ffi.Pointer<ffi.Int32> api2wire_opt_box_autoadd_i32(int? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_i32(raw);
  }

  @protected
  ffi.Pointer<wire_ImageData> api2wire_opt_box_autoadd_image_data(ImageData? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_image_data(raw);
  }

  @protected
  ffi.Pointer<ffi.Int32> api2wire_opt_box_autoadd_urgency(Urgency? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_urgency(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_deamon_action(DeamonAction apiObj, ffi.Pointer<wire_DeamonAction> wireObj) {
    _api_fill_to_wire_deamon_action(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_image_data(ImageData apiObj, ffi.Pointer<wire_ImageData> wireObj) {
    _api_fill_to_wire_image_data(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_notification(Notification apiObj, ffi.Pointer<wire_Notification> wireObj) {
    _api_fill_to_wire_notification(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_deamon_action(DeamonAction apiObj, wire_DeamonAction wireObj) {
    if (apiObj is DeamonAction_Show) {
      var pre_field0 = api2wire_box_autoadd_notification(apiObj.field0);
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_DeamonAction_Show();
      wireObj.kind.ref.Show.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DeamonAction_Close) {
      var pre_field0 = api2wire_u32(apiObj.field0);
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_DeamonAction_Close();
      wireObj.kind.ref.Close.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DeamonAction_Update) {
      var pre_field0 = api2wire_list_notification(apiObj.field0);
      wireObj.tag = 2;
      wireObj.kind = inner.inflate_DeamonAction_Update();
      wireObj.kind.ref.Update.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DeamonAction_ClientClose) {
      var pre_field0 = api2wire_u32(apiObj.field0);
      wireObj.tag = 3;
      wireObj.kind = inner.inflate_DeamonAction_ClientClose();
      wireObj.kind.ref.ClientClose.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is DeamonAction_ClientActionInvoked) {
      var pre_field0 = api2wire_u32(apiObj.field0);
      var pre_field1 = api2wire_String(apiObj.field1);
      wireObj.tag = 4;
      wireObj.kind = inner.inflate_DeamonAction_ClientActionInvoked();
      wireObj.kind.ref.ClientActionInvoked.ref.field0 = pre_field0;
      wireObj.kind.ref.ClientActionInvoked.ref.field1 = pre_field1;
      return;
    }
  }

  void _api_fill_to_wire_hints(Hints apiObj, wire_Hints wireObj) {
    wireObj.actions_icon = api2wire_opt_box_autoadd_bool(apiObj.actionsIcon);
    wireObj.category = api2wire_opt_String(apiObj.category);
    wireObj.desktop_entry = api2wire_opt_String(apiObj.desktopEntry);
    wireObj.image_data = api2wire_opt_box_autoadd_image_data(apiObj.imageData);
    wireObj.image_path = api2wire_opt_String(apiObj.imagePath);
    wireObj.resident = api2wire_opt_box_autoadd_bool(apiObj.resident);
    wireObj.sound_file = api2wire_opt_String(apiObj.soundFile);
    wireObj.sound_name = api2wire_opt_String(apiObj.soundName);
    wireObj.suppress_sound = api2wire_opt_box_autoadd_bool(apiObj.suppressSound);
    wireObj.transient = api2wire_opt_box_autoadd_bool(apiObj.transient);
    wireObj.x = api2wire_opt_box_autoadd_i32(apiObj.x);
    wireObj.y = api2wire_opt_box_autoadd_i32(apiObj.y);
    wireObj.urgency = api2wire_opt_box_autoadd_urgency(apiObj.urgency);
  }

  void _api_fill_to_wire_image_data(ImageData apiObj, wire_ImageData wireObj) {
    wireObj.width = api2wire_i32(apiObj.width);
    wireObj.height = api2wire_i32(apiObj.height);
    wireObj.rowstride = api2wire_i32(apiObj.rowstride);
    wireObj.one_point_two_bit_alpha = api2wire_bool(apiObj.onePointTwoBitAlpha);
    wireObj.bits_per_sample = api2wire_i32(apiObj.bitsPerSample);
    wireObj.channels = api2wire_i32(apiObj.channels);
    wireObj.data = api2wire_uint_8_list(apiObj.data);
  }

  void _api_fill_to_wire_notification(Notification apiObj, wire_Notification wireObj) {
    wireObj.id = api2wire_u32(apiObj.id);
    wireObj.app_name = api2wire_String(apiObj.appName);
    wireObj.replaces_id = api2wire_u32(apiObj.replacesId);
    wireObj.icon = api2wire_String(apiObj.icon);
    wireObj.summary = api2wire_String(apiObj.summary);
    wireObj.body = api2wire_String(apiObj.body);
    wireObj.actions = api2wire_StringList(apiObj.actions);
    wireObj.timeout = api2wire_i32(apiObj.timeout);
    wireObj.time_since_display = api2wire_u32(apiObj.timeSinceDisplay);
    _api_fill_to_wire_hints(apiObj.hints, wireObj.hints);
  }

  void _api_fill_to_wire_opt_box_autoadd_image_data(ImageData? apiObj, ffi.Pointer<wire_ImageData> wireObj) {
    if (apiObj != null) _api_fill_to_wire_box_autoadd_image_data(apiObj, wireObj);
  }
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
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeWire.fromLookup(ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup) : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>('store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr.asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>('get_dart_object');
  late final _get_dart_object = _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>('drop_dart_object');
  late final _drop_dart_object = _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr = _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>('new_dart_opaque');
  late final _new_dart_opaque = _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr = _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>('init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr.asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_setup(
    int port_,
  ) {
    return _wire_setup(
      port_,
    );
  }

  late final _wire_setupPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_setup');
  late final _wire_setup = _wire_setupPtr.asFunction<void Function(int)>();

  void wire_start_deamon(
    int port_,
  ) {
    return _wire_start_deamon(
      port_,
    );
  }

  late final _wire_start_deamonPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_start_deamon');
  late final _wire_start_deamon = _wire_start_deamonPtr.asFunction<void Function(int)>();

  void wire_stop_deamon(
    int port_,
  ) {
    return _wire_stop_deamon(
      port_,
    );
  }

  late final _wire_stop_deamonPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_stop_deamon');
  late final _wire_stop_deamon = _wire_stop_deamonPtr.asFunction<void Function(int)>();

  void wire_send_deamon_action(
    int port_,
    ffi.Pointer<wire_DeamonAction> action,
  ) {
    return _wire_send_deamon_action(
      port_,
      action,
    );
  }

  late final _wire_send_deamon_actionPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_DeamonAction>)>>('wire_send_deamon_action');
  late final _wire_send_deamon_action = _wire_send_deamon_actionPtr.asFunction<void Function(int, ffi.Pointer<wire_DeamonAction>)>();

  ffi.Pointer<wire_StringList> new_StringList_0(
    int len,
  ) {
    return _new_StringList_0(
      len,
    );
  }

  late final _new_StringList_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_StringList> Function(ffi.Int32)>>('new_StringList_0');
  late final _new_StringList_0 = _new_StringList_0Ptr.asFunction<ffi.Pointer<wire_StringList> Function(int)>();

  ffi.Pointer<ffi.Bool> new_box_autoadd_bool_0(
    bool value,
  ) {
    return _new_box_autoadd_bool_0(
      value,
    );
  }

  late final _new_box_autoadd_bool_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Bool> Function(ffi.Bool)>>('new_box_autoadd_bool_0');
  late final _new_box_autoadd_bool_0 = _new_box_autoadd_bool_0Ptr.asFunction<ffi.Pointer<ffi.Bool> Function(bool)>();

  ffi.Pointer<wire_DeamonAction> new_box_autoadd_deamon_action_0() {
    return _new_box_autoadd_deamon_action_0();
  }

  late final _new_box_autoadd_deamon_action_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_DeamonAction> Function()>>('new_box_autoadd_deamon_action_0');
  late final _new_box_autoadd_deamon_action_0 = _new_box_autoadd_deamon_action_0Ptr.asFunction<ffi.Pointer<wire_DeamonAction> Function()>();

  ffi.Pointer<ffi.Int32> new_box_autoadd_i32_0(
    int value,
  ) {
    return _new_box_autoadd_i32_0(
      value,
    );
  }

  late final _new_box_autoadd_i32_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int32> Function(ffi.Int32)>>('new_box_autoadd_i32_0');
  late final _new_box_autoadd_i32_0 = _new_box_autoadd_i32_0Ptr.asFunction<ffi.Pointer<ffi.Int32> Function(int)>();

  ffi.Pointer<wire_ImageData> new_box_autoadd_image_data_0() {
    return _new_box_autoadd_image_data_0();
  }

  late final _new_box_autoadd_image_data_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_ImageData> Function()>>('new_box_autoadd_image_data_0');
  late final _new_box_autoadd_image_data_0 = _new_box_autoadd_image_data_0Ptr.asFunction<ffi.Pointer<wire_ImageData> Function()>();

  ffi.Pointer<wire_Notification> new_box_autoadd_notification_0() {
    return _new_box_autoadd_notification_0();
  }

  late final _new_box_autoadd_notification_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_Notification> Function()>>('new_box_autoadd_notification_0');
  late final _new_box_autoadd_notification_0 = _new_box_autoadd_notification_0Ptr.asFunction<ffi.Pointer<wire_Notification> Function()>();

  ffi.Pointer<ffi.Int32> new_box_autoadd_urgency_0(
    int value,
  ) {
    return _new_box_autoadd_urgency_0(
      value,
    );
  }

  late final _new_box_autoadd_urgency_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int32> Function(ffi.Int32)>>('new_box_autoadd_urgency_0');
  late final _new_box_autoadd_urgency_0 = _new_box_autoadd_urgency_0Ptr.asFunction<ffi.Pointer<ffi.Int32> Function(int)>();

  ffi.Pointer<wire_list_notification> new_list_notification_0(
    int len,
  ) {
    return _new_list_notification_0(
      len,
    );
  }

  late final _new_list_notification_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_list_notification> Function(ffi.Int32)>>('new_list_notification_0');
  late final _new_list_notification_0 = _new_list_notification_0Ptr.asFunction<ffi.Pointer<wire_list_notification> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_uint_8_list> Function(ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr.asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  ffi.Pointer<DeamonActionKind> inflate_DeamonAction_Show() {
    return _inflate_DeamonAction_Show();
  }

  late final _inflate_DeamonAction_ShowPtr = _lookup<ffi.NativeFunction<ffi.Pointer<DeamonActionKind> Function()>>('inflate_DeamonAction_Show');
  late final _inflate_DeamonAction_Show = _inflate_DeamonAction_ShowPtr.asFunction<ffi.Pointer<DeamonActionKind> Function()>();

  ffi.Pointer<DeamonActionKind> inflate_DeamonAction_Close() {
    return _inflate_DeamonAction_Close();
  }

  late final _inflate_DeamonAction_ClosePtr = _lookup<ffi.NativeFunction<ffi.Pointer<DeamonActionKind> Function()>>('inflate_DeamonAction_Close');
  late final _inflate_DeamonAction_Close = _inflate_DeamonAction_ClosePtr.asFunction<ffi.Pointer<DeamonActionKind> Function()>();

  ffi.Pointer<DeamonActionKind> inflate_DeamonAction_Update() {
    return _inflate_DeamonAction_Update();
  }

  late final _inflate_DeamonAction_UpdatePtr = _lookup<ffi.NativeFunction<ffi.Pointer<DeamonActionKind> Function()>>('inflate_DeamonAction_Update');
  late final _inflate_DeamonAction_Update = _inflate_DeamonAction_UpdatePtr.asFunction<ffi.Pointer<DeamonActionKind> Function()>();

  ffi.Pointer<DeamonActionKind> inflate_DeamonAction_ClientClose() {
    return _inflate_DeamonAction_ClientClose();
  }

  late final _inflate_DeamonAction_ClientClosePtr = _lookup<ffi.NativeFunction<ffi.Pointer<DeamonActionKind> Function()>>('inflate_DeamonAction_ClientClose');
  late final _inflate_DeamonAction_ClientClose = _inflate_DeamonAction_ClientClosePtr.asFunction<ffi.Pointer<DeamonActionKind> Function()>();

  ffi.Pointer<DeamonActionKind> inflate_DeamonAction_ClientActionInvoked() {
    return _inflate_DeamonAction_ClientActionInvoked();
  }

  late final _inflate_DeamonAction_ClientActionInvokedPtr = _lookup<ffi.NativeFunction<ffi.Pointer<DeamonActionKind> Function()>>('inflate_DeamonAction_ClientActionInvoked');
  late final _inflate_DeamonAction_ClientActionInvoked = _inflate_DeamonAction_ClientActionInvokedPtr.asFunction<ffi.Pointer<DeamonActionKind> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr = _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>('free_WireSyncReturn');
  late final _free_WireSyncReturn = _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_StringList extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_uint_8_list>> ptr;

  @ffi.Int32()
  external int len;
}

class wire_ImageData extends ffi.Struct {
  @ffi.Int32()
  external int width;

  @ffi.Int32()
  external int height;

  @ffi.Int32()
  external int rowstride;

  @ffi.Bool()
  external bool one_point_two_bit_alpha;

  @ffi.Int32()
  external int bits_per_sample;

  @ffi.Int32()
  external int channels;

  external ffi.Pointer<wire_uint_8_list> data;
}

class wire_Hints extends ffi.Struct {
  external ffi.Pointer<ffi.Bool> actions_icon;

  external ffi.Pointer<wire_uint_8_list> category;

  external ffi.Pointer<wire_uint_8_list> desktop_entry;

  external ffi.Pointer<wire_ImageData> image_data;

  external ffi.Pointer<wire_uint_8_list> image_path;

  external ffi.Pointer<ffi.Bool> resident;

  external ffi.Pointer<wire_uint_8_list> sound_file;

  external ffi.Pointer<wire_uint_8_list> sound_name;

  external ffi.Pointer<ffi.Bool> suppress_sound;

  external ffi.Pointer<ffi.Bool> transient;

  external ffi.Pointer<ffi.Int32> x;

  external ffi.Pointer<ffi.Int32> y;

  external ffi.Pointer<ffi.Int32> urgency;
}

class wire_Notification extends ffi.Struct {
  @ffi.Uint32()
  external int id;

  external ffi.Pointer<wire_uint_8_list> app_name;

  @ffi.Uint32()
  external int replaces_id;

  external ffi.Pointer<wire_uint_8_list> icon;

  external ffi.Pointer<wire_uint_8_list> summary;

  external ffi.Pointer<wire_uint_8_list> body;

  external ffi.Pointer<wire_StringList> actions;

  @ffi.Int32()
  external int timeout;

  @ffi.Uint32()
  external int time_since_display;

  external wire_Hints hints;
}

class wire_DeamonAction_Show extends ffi.Struct {
  external ffi.Pointer<wire_Notification> field0;
}

class wire_DeamonAction_Close extends ffi.Struct {
  @ffi.Uint32()
  external int field0;
}

class wire_list_notification extends ffi.Struct {
  external ffi.Pointer<wire_Notification> ptr;

  @ffi.Int32()
  external int len;
}

class wire_DeamonAction_Update extends ffi.Struct {
  external ffi.Pointer<wire_list_notification> field0;
}

class wire_DeamonAction_ClientClose extends ffi.Struct {
  @ffi.Uint32()
  external int field0;
}

class wire_DeamonAction_ClientActionInvoked extends ffi.Struct {
  @ffi.Uint32()
  external int field0;

  external ffi.Pointer<wire_uint_8_list> field1;
}

class DeamonActionKind extends ffi.Union {
  external ffi.Pointer<wire_DeamonAction_Show> Show;

  external ffi.Pointer<wire_DeamonAction_Close> Close;

  external ffi.Pointer<wire_DeamonAction_Update> Update;

  external ffi.Pointer<wire_DeamonAction_ClientClose> ClientClose;

  external ffi.Pointer<wire_DeamonAction_ClientActionInvoked> ClientActionInvoked;
}

class wire_DeamonAction extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<DeamonActionKind> kind;
}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
