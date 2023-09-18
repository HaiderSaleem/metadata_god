// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.80.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

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
import 'bridge_generated.io.dart' if (dart.library.html) 'bridge_generated.web.dart';

abstract class MetadataGod {
  Future<Metadata> readMetadata({required String file, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kReadMetadataConstMeta;

  Future<void> writeMetadata({required String file, required Metadata metadata, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWriteMetadataConstMeta;
}

class Metadata {
  final String? title;
  final double? durationMs;
  final String? artist;
  final String? album;
  final String? albumArtist;
  final int? trackNumber;
  final int? trackTotal;
  final int? discNumber;
  final int? discTotal;
  final int? year;
  final String? genre;
  final Picture? picture;
  final int? fileSize;

  const Metadata({
    this.title,
    this.durationMs,
    this.artist,
    this.album,
    this.albumArtist,
    this.trackNumber,
    this.trackTotal,
    this.discNumber,
    this.discTotal,
    this.year,
    this.genre,
    this.picture,
    this.fileSize,
  });
}

class Picture {
  /// The picture's MIME type.
  final String mimeType;

  /// The image data.
  final Uint8List data;

  const Picture({
    required this.mimeType,
    required this.data,
  });
}

class MetadataGodImpl implements MetadataGod {
  final MetadataGodPlatform _platform;
  factory MetadataGodImpl(ExternalLibrary dylib) => MetadataGodImpl.raw(MetadataGodPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory MetadataGodImpl.wasm(FutureOr<WasmModule> module) => MetadataGodImpl(module as ExternalLibrary);
  MetadataGodImpl.raw(this._platform);
  Future<Metadata> readMetadata({required String file, dynamic hint}) {
    var arg0 = _platform.api2wire_String(file);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_read_metadata(port_, arg0),
      parseSuccessData: _wire2api_metadata,
      constMeta: kReadMetadataConstMeta,
      argValues: [file],
      hint: hint,
      parseErrorData: parseReturnedError,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kReadMetadataConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "read_metadata",
        argNames: ["file"],
      );

  Future<void> writeMetadata({required String file, required Metadata metadata, dynamic hint}) {
    var arg0 = _platform.api2wire_String(file);
    var arg1 = _platform.api2wire_box_autoadd_metadata(metadata);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_write_metadata(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kWriteMetadataConstMeta,
      argValues: [file, metadata],
      hint: hint,
      parseErrorData: parseReturnedError,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWriteMetadataConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "write_metadata",
        argNames: ["file", "metadata"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  double _wire2api_box_autoadd_f64(dynamic raw) {
    return raw as double;
  }

  int _wire2api_box_autoadd_i32(dynamic raw) {
    return raw as int;
  }

  Picture _wire2api_box_autoadd_picture(dynamic raw) {
    return _wire2api_picture(raw);
  }

  int _wire2api_box_autoadd_u16(dynamic raw) {
    return raw as int;
  }

  int _wire2api_box_autoadd_u64(dynamic raw) {
    return _wire2api_u64(raw);
  }

  double _wire2api_f64(dynamic raw) {
    return raw as double;
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  Metadata _wire2api_metadata(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 13) throw Exception('unexpected arr length: expect 13 but see ${arr.length}');
    return Metadata(
      title: _wire2api_opt_String(arr[0]),
      durationMs: _wire2api_opt_box_autoadd_f64(arr[1]),
      artist: _wire2api_opt_String(arr[2]),
      album: _wire2api_opt_String(arr[3]),
      albumArtist: _wire2api_opt_String(arr[4]),
      trackNumber: _wire2api_opt_box_autoadd_u16(arr[5]),
      trackTotal: _wire2api_opt_box_autoadd_u16(arr[6]),
      discNumber: _wire2api_opt_box_autoadd_u16(arr[7]),
      discTotal: _wire2api_opt_box_autoadd_u16(arr[8]),
      year: _wire2api_opt_box_autoadd_i32(arr[9]),
      genre: _wire2api_opt_String(arr[10]),
      picture: _wire2api_opt_box_autoadd_picture(arr[11]),
      fileSize: _wire2api_opt_box_autoadd_u64(arr[12]),
    );
  }

  String parseReturnedError(dynamic errorData) {
    // Convert the error data to a string representation.
    return errorData.toString();
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _wire2api_String(raw);
  }

  double? _wire2api_opt_box_autoadd_f64(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_f64(raw);
  }

  int? _wire2api_opt_box_autoadd_i32(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_i32(raw);
  }

  Picture? _wire2api_opt_box_autoadd_picture(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_picture(raw);
  }

  int? _wire2api_opt_box_autoadd_u16(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_u16(raw);
  }

  int? _wire2api_opt_box_autoadd_u64(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_u64(raw);
  }

  Picture _wire2api_picture(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2) throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return Picture(
      mimeType: _wire2api_String(arr[0]),
      data: _wire2api_uint_8_list(arr[1]),
    );
  }

  int _wire2api_u16(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u64(dynamic raw) {
    return castInt(raw);
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
}

// Section: api2wire

@protected
double api2wire_f64(double raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_u16(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
