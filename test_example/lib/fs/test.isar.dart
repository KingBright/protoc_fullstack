//
//  Generated code. Do not modify.
//  source: fs/test.proto
//
// @dart = 2.18

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: return_of_invalid_type, unnecessary_this

import 'dart:core';

import 'package:isar/isar.dart';
import 'package:protobuf/protobuf.dart';

import 'test.pb.dart';

part 'test.isar.g.dart';

@embedded
class $LoginInfo {
  $LoginInfo() : super();

  factory $LoginInfo.create({
    String? email,
    String? password,
  }) {
    final result = $LoginInfo();
    if (email != null) {
      result.email = email;
    }
    if (password != null) {
      result.password = password;
    }
    return result;
  }

  factory $LoginInfo.fromProto(LoginInfo proto) {
    final result = $LoginInfo();
    result.email = proto.email;
    result.password = proto.password;
    return result;
  }

  LoginInfo toProto() {
  var proto = LoginInfo.create()
    ..email = email
    ..password = password
  ;
    return proto;
  }


  late String email;

  late String password;
}

@embedded
class $Result {
  $Result() : super();

  factory $Result.create({
    int? code,
    String? msg,
  }) {
    final result = $Result();
    if (code != null) {
      result.code = code;
    }
    if (msg != null) {
      result.msg = msg;
    }
    return result;
  }

  factory $Result.fromProto(Result proto) {
    final result = $Result();
    result.code = proto.code;
    result.msg = proto.msg;
    return result;
  }

  Result toProto() {
  var proto = Result.create()
    ..code = code
    ..msg = msg
  ;
    return proto;
  }


  late int code;

  late String msg;
}

@embedded
class $UserProfile {
  $UserProfile() : super();

  factory $UserProfile.create({
    String? name,
    String? gender,
    int? age,
  }) {
    final result = $UserProfile();
    if (name != null) {
      result.name = name;
    }
    if (gender != null) {
      result.gender = gender;
    }
    if (age != null) {
      result.age = age;
    }
    return result;
  }

  factory $UserProfile.fromProto(UserProfile proto) {
    final result = $UserProfile();
    result.name = proto.name;
    result.gender = proto.gender;
    result.age = proto.age;
    return result;
  }

  UserProfile toProto() {
  var proto = UserProfile.create()
    ..name = name
    ..gender = gender
    ..age = age
  ;
    return proto;
  }


  late String name;

  late String gender;

  late int age;
}

