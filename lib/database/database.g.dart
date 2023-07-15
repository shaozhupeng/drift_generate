// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $MessageTable extends Message with TableInfo<$MessageTable, MessageData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MessageTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _conversationIdMeta =
      const VerificationMeta('conversationId');
  @override
  late final GeneratedColumn<String> conversationId = GeneratedColumn<String>(
      'conversationId', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _conversationTypeMeta =
      const VerificationMeta('conversationType');
  @override
  late final GeneratedColumn<int> conversationType = GeneratedColumn<int>(
      'conversationType', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _fromIdMeta = const VerificationMeta('fromId');
  @override
  late final GeneratedColumn<String> fromId = GeneratedColumn<String>(
      'fromId', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fromTypeMeta =
      const VerificationMeta('fromType');
  @override
  late final GeneratedColumn<String> fromType = GeneratedColumn<String>(
      'fromType', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _msgMeta = const VerificationMeta('msg');
  @override
  late final GeneratedColumn<String> msg = GeneratedColumn<String>(
      'msg', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _msgIdMeta = const VerificationMeta('msgId');
  @override
  late final GeneratedColumn<String> msgId = GeneratedColumn<String>(
      'msgId', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _msgTypeMeta =
      const VerificationMeta('msgType');
  @override
  late final GeneratedColumn<String> msgType = GeneratedColumn<String>(
      'msgType', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _msgMetadataMeta =
      const VerificationMeta('msgMetadata');
  @override
  late final GeneratedColumn<String> msgMetadata = GeneratedColumn<String>(
      'msgMetadata', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sendStatusMeta =
      const VerificationMeta('sendStatus');
  @override
  late final GeneratedColumn<String> sendStatus = GeneratedColumn<String>(
      'sendStatus', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sendTimeMeta =
      const VerificationMeta('sendTime');
  @override
  late final GeneratedColumn<DateTime> sendTime = GeneratedColumn<DateTime>(
      'sendTime', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _toIdMeta = const VerificationMeta('toId');
  @override
  late final GeneratedColumn<String> toId = GeneratedColumn<String>(
      'toId', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _toTypeMeta = const VerificationMeta('toType');
  @override
  late final GeneratedColumn<String> toType = GeneratedColumn<String>(
      'toType', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        conversationId,
        conversationType,
        fromId,
        fromType,
        msg,
        msgId,
        msgType,
        msgMetadata,
        sendStatus,
        sendTime,
        toId,
        toType
      ];
  @override
  String get aliasedName => _alias ?? 'message';
  @override
  String get actualTableName => 'message';
  @override
  VerificationContext validateIntegrity(Insertable<MessageData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('conversationId')) {
      context.handle(
          _conversationIdMeta,
          conversationId.isAcceptableOrUnknown(
              data['conversationId']!, _conversationIdMeta));
    } else if (isInserting) {
      context.missing(_conversationIdMeta);
    }
    if (data.containsKey('conversationType')) {
      context.handle(
          _conversationTypeMeta,
          conversationType.isAcceptableOrUnknown(
              data['conversationType']!, _conversationTypeMeta));
    } else if (isInserting) {
      context.missing(_conversationTypeMeta);
    }
    if (data.containsKey('fromId')) {
      context.handle(_fromIdMeta,
          fromId.isAcceptableOrUnknown(data['fromId']!, _fromIdMeta));
    } else if (isInserting) {
      context.missing(_fromIdMeta);
    }
    if (data.containsKey('fromType')) {
      context.handle(_fromTypeMeta,
          fromType.isAcceptableOrUnknown(data['fromType']!, _fromTypeMeta));
    } else if (isInserting) {
      context.missing(_fromTypeMeta);
    }
    if (data.containsKey('msg')) {
      context.handle(
          _msgMeta, msg.isAcceptableOrUnknown(data['msg']!, _msgMeta));
    } else if (isInserting) {
      context.missing(_msgMeta);
    }
    if (data.containsKey('msgId')) {
      context.handle(
          _msgIdMeta, msgId.isAcceptableOrUnknown(data['msgId']!, _msgIdMeta));
    } else if (isInserting) {
      context.missing(_msgIdMeta);
    }
    if (data.containsKey('msgType')) {
      context.handle(_msgTypeMeta,
          msgType.isAcceptableOrUnknown(data['msgType']!, _msgTypeMeta));
    } else if (isInserting) {
      context.missing(_msgTypeMeta);
    }
    if (data.containsKey('msgMetadata')) {
      context.handle(
          _msgMetadataMeta,
          msgMetadata.isAcceptableOrUnknown(
              data['msgMetadata']!, _msgMetadataMeta));
    } else if (isInserting) {
      context.missing(_msgMetadataMeta);
    }
    if (data.containsKey('sendStatus')) {
      context.handle(
          _sendStatusMeta,
          sendStatus.isAcceptableOrUnknown(
              data['sendStatus']!, _sendStatusMeta));
    }
    if (data.containsKey('sendTime')) {
      context.handle(_sendTimeMeta,
          sendTime.isAcceptableOrUnknown(data['sendTime']!, _sendTimeMeta));
    } else if (isInserting) {
      context.missing(_sendTimeMeta);
    }
    if (data.containsKey('toId')) {
      context.handle(
          _toIdMeta, toId.isAcceptableOrUnknown(data['toId']!, _toIdMeta));
    } else if (isInserting) {
      context.missing(_toIdMeta);
    }
    if (data.containsKey('toType')) {
      context.handle(_toTypeMeta,
          toType.isAcceptableOrUnknown(data['toType']!, _toTypeMeta));
    } else if (isInserting) {
      context.missing(_toTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MessageData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MessageData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      conversationId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}conversationId'])!,
      conversationType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}conversationType'])!,
      fromId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fromId'])!,
      fromType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fromType'])!,
      msg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}msg'])!,
      msgId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}msgId'])!,
      msgType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}msgType'])!,
      msgMetadata: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}msgMetadata'])!,
      sendStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sendStatus']),
      sendTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}sendTime'])!,
      toId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}toId'])!,
      toType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}toType'])!,
    );
  }

  @override
  $MessageTable createAlias(String alias) {
    return $MessageTable(attachedDatabase, alias);
  }
}

class MessageData extends DataClass implements Insertable<MessageData> {
  final int id;
  final String conversationId;
  final int conversationType;
  final String fromId;
  final String fromType;
  final String msg;
  final String msgId;
  final String msgType;
  final String msgMetadata;
  final String? sendStatus;
  final DateTime sendTime;
  final String toId;
  final String toType;
  const MessageData(
      {required this.id,
      required this.conversationId,
      required this.conversationType,
      required this.fromId,
      required this.fromType,
      required this.msg,
      required this.msgId,
      required this.msgType,
      required this.msgMetadata,
      this.sendStatus,
      required this.sendTime,
      required this.toId,
      required this.toType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['conversationId'] = Variable<String>(conversationId);
    map['conversationType'] = Variable<int>(conversationType);
    map['fromId'] = Variable<String>(fromId);
    map['fromType'] = Variable<String>(fromType);
    map['msg'] = Variable<String>(msg);
    map['msgId'] = Variable<String>(msgId);
    map['msgType'] = Variable<String>(msgType);
    map['msgMetadata'] = Variable<String>(msgMetadata);
    if (!nullToAbsent || sendStatus != null) {
      map['sendStatus'] = Variable<String>(sendStatus);
    }
    map['sendTime'] = Variable<DateTime>(sendTime);
    map['toId'] = Variable<String>(toId);
    map['toType'] = Variable<String>(toType);
    return map;
  }

  MessageCompanion toCompanion(bool nullToAbsent) {
    return MessageCompanion(
      id: Value(id),
      conversationId: Value(conversationId),
      conversationType: Value(conversationType),
      fromId: Value(fromId),
      fromType: Value(fromType),
      msg: Value(msg),
      msgId: Value(msgId),
      msgType: Value(msgType),
      msgMetadata: Value(msgMetadata),
      sendStatus: sendStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(sendStatus),
      sendTime: Value(sendTime),
      toId: Value(toId),
      toType: Value(toType),
    );
  }

  factory MessageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MessageData(
      id: serializer.fromJson<int>(json['id']),
      conversationId: serializer.fromJson<String>(json['conversationId']),
      conversationType: serializer.fromJson<int>(json['conversationType']),
      fromId: serializer.fromJson<String>(json['fromId']),
      fromType: serializer.fromJson<String>(json['fromType']),
      msg: serializer.fromJson<String>(json['msg']),
      msgId: serializer.fromJson<String>(json['msgId']),
      msgType: serializer.fromJson<String>(json['msgType']),
      msgMetadata: serializer.fromJson<String>(json['msgMetadata']),
      sendStatus: serializer.fromJson<String?>(json['sendStatus']),
      sendTime: serializer.fromJson<DateTime>(json['sendTime']),
      toId: serializer.fromJson<String>(json['toId']),
      toType: serializer.fromJson<String>(json['toType']),
    );
  }
  factory MessageData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      MessageData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'conversationId': serializer.toJson<String>(conversationId),
      'conversationType': serializer.toJson<int>(conversationType),
      'fromId': serializer.toJson<String>(fromId),
      'fromType': serializer.toJson<String>(fromType),
      'msg': serializer.toJson<String>(msg),
      'msgId': serializer.toJson<String>(msgId),
      'msgType': serializer.toJson<String>(msgType),
      'msgMetadata': serializer.toJson<String>(msgMetadata),
      'sendStatus': serializer.toJson<String?>(sendStatus),
      'sendTime': serializer.toJson<DateTime>(sendTime),
      'toId': serializer.toJson<String>(toId),
      'toType': serializer.toJson<String>(toType),
    };
  }

  MessageData copyWith(
          {int? id,
          String? conversationId,
          int? conversationType,
          String? fromId,
          String? fromType,
          String? msg,
          String? msgId,
          String? msgType,
          String? msgMetadata,
          Value<String?> sendStatus = const Value.absent(),
          DateTime? sendTime,
          String? toId,
          String? toType}) =>
      MessageData(
        id: id ?? this.id,
        conversationId: conversationId ?? this.conversationId,
        conversationType: conversationType ?? this.conversationType,
        fromId: fromId ?? this.fromId,
        fromType: fromType ?? this.fromType,
        msg: msg ?? this.msg,
        msgId: msgId ?? this.msgId,
        msgType: msgType ?? this.msgType,
        msgMetadata: msgMetadata ?? this.msgMetadata,
        sendStatus: sendStatus.present ? sendStatus.value : this.sendStatus,
        sendTime: sendTime ?? this.sendTime,
        toId: toId ?? this.toId,
        toType: toType ?? this.toType,
      );
  @override
  String toString() {
    return (StringBuffer('MessageData(')
          ..write('id: $id, ')
          ..write('conversationId: $conversationId, ')
          ..write('conversationType: $conversationType, ')
          ..write('fromId: $fromId, ')
          ..write('fromType: $fromType, ')
          ..write('msg: $msg, ')
          ..write('msgId: $msgId, ')
          ..write('msgType: $msgType, ')
          ..write('msgMetadata: $msgMetadata, ')
          ..write('sendStatus: $sendStatus, ')
          ..write('sendTime: $sendTime, ')
          ..write('toId: $toId, ')
          ..write('toType: $toType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      conversationId,
      conversationType,
      fromId,
      fromType,
      msg,
      msgId,
      msgType,
      msgMetadata,
      sendStatus,
      sendTime,
      toId,
      toType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MessageData &&
          other.id == this.id &&
          other.conversationId == this.conversationId &&
          other.conversationType == this.conversationType &&
          other.fromId == this.fromId &&
          other.fromType == this.fromType &&
          other.msg == this.msg &&
          other.msgId == this.msgId &&
          other.msgType == this.msgType &&
          other.msgMetadata == this.msgMetadata &&
          other.sendStatus == this.sendStatus &&
          other.sendTime == this.sendTime &&
          other.toId == this.toId &&
          other.toType == this.toType);
}

class MessageCompanion extends UpdateCompanion<MessageData> {
  final Value<int> id;
  final Value<String> conversationId;
  final Value<int> conversationType;
  final Value<String> fromId;
  final Value<String> fromType;
  final Value<String> msg;
  final Value<String> msgId;
  final Value<String> msgType;
  final Value<String> msgMetadata;
  final Value<String?> sendStatus;
  final Value<DateTime> sendTime;
  final Value<String> toId;
  final Value<String> toType;
  const MessageCompanion({
    this.id = const Value.absent(),
    this.conversationId = const Value.absent(),
    this.conversationType = const Value.absent(),
    this.fromId = const Value.absent(),
    this.fromType = const Value.absent(),
    this.msg = const Value.absent(),
    this.msgId = const Value.absent(),
    this.msgType = const Value.absent(),
    this.msgMetadata = const Value.absent(),
    this.sendStatus = const Value.absent(),
    this.sendTime = const Value.absent(),
    this.toId = const Value.absent(),
    this.toType = const Value.absent(),
  });
  MessageCompanion.insert({
    this.id = const Value.absent(),
    required String conversationId,
    required int conversationType,
    required String fromId,
    required String fromType,
    required String msg,
    required String msgId,
    required String msgType,
    required String msgMetadata,
    this.sendStatus = const Value.absent(),
    required DateTime sendTime,
    required String toId,
    required String toType,
  })  : conversationId = Value(conversationId),
        conversationType = Value(conversationType),
        fromId = Value(fromId),
        fromType = Value(fromType),
        msg = Value(msg),
        msgId = Value(msgId),
        msgType = Value(msgType),
        msgMetadata = Value(msgMetadata),
        sendTime = Value(sendTime),
        toId = Value(toId),
        toType = Value(toType);
  static Insertable<MessageData> custom({
    Expression<int>? id,
    Expression<String>? conversationId,
    Expression<int>? conversationType,
    Expression<String>? fromId,
    Expression<String>? fromType,
    Expression<String>? msg,
    Expression<String>? msgId,
    Expression<String>? msgType,
    Expression<String>? msgMetadata,
    Expression<String>? sendStatus,
    Expression<DateTime>? sendTime,
    Expression<String>? toId,
    Expression<String>? toType,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (conversationId != null) 'conversationId': conversationId,
      if (conversationType != null) 'conversationType': conversationType,
      if (fromId != null) 'fromId': fromId,
      if (fromType != null) 'fromType': fromType,
      if (msg != null) 'msg': msg,
      if (msgId != null) 'msgId': msgId,
      if (msgType != null) 'msgType': msgType,
      if (msgMetadata != null) 'msgMetadata': msgMetadata,
      if (sendStatus != null) 'sendStatus': sendStatus,
      if (sendTime != null) 'sendTime': sendTime,
      if (toId != null) 'toId': toId,
      if (toType != null) 'toType': toType,
    });
  }

  MessageCompanion copyWith(
      {Value<int>? id,
      Value<String>? conversationId,
      Value<int>? conversationType,
      Value<String>? fromId,
      Value<String>? fromType,
      Value<String>? msg,
      Value<String>? msgId,
      Value<String>? msgType,
      Value<String>? msgMetadata,
      Value<String?>? sendStatus,
      Value<DateTime>? sendTime,
      Value<String>? toId,
      Value<String>? toType}) {
    return MessageCompanion(
      id: id ?? this.id,
      conversationId: conversationId ?? this.conversationId,
      conversationType: conversationType ?? this.conversationType,
      fromId: fromId ?? this.fromId,
      fromType: fromType ?? this.fromType,
      msg: msg ?? this.msg,
      msgId: msgId ?? this.msgId,
      msgType: msgType ?? this.msgType,
      msgMetadata: msgMetadata ?? this.msgMetadata,
      sendStatus: sendStatus ?? this.sendStatus,
      sendTime: sendTime ?? this.sendTime,
      toId: toId ?? this.toId,
      toType: toType ?? this.toType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (conversationId.present) {
      map['conversationId'] = Variable<String>(conversationId.value);
    }
    if (conversationType.present) {
      map['conversationType'] = Variable<int>(conversationType.value);
    }
    if (fromId.present) {
      map['fromId'] = Variable<String>(fromId.value);
    }
    if (fromType.present) {
      map['fromType'] = Variable<String>(fromType.value);
    }
    if (msg.present) {
      map['msg'] = Variable<String>(msg.value);
    }
    if (msgId.present) {
      map['msgId'] = Variable<String>(msgId.value);
    }
    if (msgType.present) {
      map['msgType'] = Variable<String>(msgType.value);
    }
    if (msgMetadata.present) {
      map['msgMetadata'] = Variable<String>(msgMetadata.value);
    }
    if (sendStatus.present) {
      map['sendStatus'] = Variable<String>(sendStatus.value);
    }
    if (sendTime.present) {
      map['sendTime'] = Variable<DateTime>(sendTime.value);
    }
    if (toId.present) {
      map['toId'] = Variable<String>(toId.value);
    }
    if (toType.present) {
      map['toType'] = Variable<String>(toType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MessageCompanion(')
          ..write('id: $id, ')
          ..write('conversationId: $conversationId, ')
          ..write('conversationType: $conversationType, ')
          ..write('fromId: $fromId, ')
          ..write('fromType: $fromType, ')
          ..write('msg: $msg, ')
          ..write('msgId: $msgId, ')
          ..write('msgType: $msgType, ')
          ..write('msgMetadata: $msgMetadata, ')
          ..write('sendStatus: $sendStatus, ')
          ..write('sendTime: $sendTime, ')
          ..write('toId: $toId, ')
          ..write('toType: $toType')
          ..write(')'))
        .toString();
  }
}

class $CharacterTable extends Character
    with TableInfo<$CharacterTable, CharacterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharacterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userUniqueIdMeta =
      const VerificationMeta('userUniqueId');
  @override
  late final GeneratedColumn<String> userUniqueId = GeneratedColumn<String>(
      'user_unique_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _characterNameMeta =
      const VerificationMeta('characterName');
  @override
  late final GeneratedColumn<String> characterName = GeneratedColumn<String>(
      'character_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _promptMeta = const VerificationMeta('prompt');
  @override
  late final GeneratedColumn<String> prompt = GeneratedColumn<String>(
      'prompt', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _backgroundPathMeta =
      const VerificationMeta('backgroundPath');
  @override
  late final GeneratedColumn<String> backgroundPath = GeneratedColumn<String>(
      'background_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _avatarPathMeta =
      const VerificationMeta('avatarPath');
  @override
  late final GeneratedColumn<String> avatarPath = GeneratedColumn<String>(
      'avatar_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emotionPromptMeta =
      const VerificationMeta('emotionPrompt');
  @override
  late final GeneratedColumn<String> emotionPrompt = GeneratedColumn<String>(
      'emotion_prompt', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emotionJsonMeta =
      const VerificationMeta('emotionJson');
  @override
  late final GeneratedColumn<String> emotionJson = GeneratedColumn<String>(
      'emotion_json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _personalityMeta =
      const VerificationMeta('personality');
  @override
  late final GeneratedColumn<String> personality = GeneratedColumn<String>(
      'personality', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isSecretMeta =
      const VerificationMeta('isSecret');
  @override
  late final GeneratedColumn<String> isSecret = GeneratedColumn<String>(
      'is_secret', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant("0"));
  static const VerificationMeta _professionMeta =
      const VerificationMeta('profession');
  @override
  late final GeneratedColumn<String> profession = GeneratedColumn<String>(
      'profession', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mantraMeta = const VerificationMeta('mantra');
  @override
  late final GeneratedColumn<String> mantra = GeneratedColumn<String>(
      'mantra', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _languageStyleMeta =
      const VerificationMeta('languageStyle');
  @override
  late final GeneratedColumn<String> languageStyle = GeneratedColumn<String>(
      'language_style', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _storyMeta = const VerificationMeta('story');
  @override
  late final GeneratedColumn<String> story = GeneratedColumn<String>(
      'story', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _birthdayMeta =
      const VerificationMeta('birthday');
  @override
  late final GeneratedColumn<DateTime> birthday = GeneratedColumn<DateTime>(
      'birthday', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _astrologyMeta =
      const VerificationMeta('astrology');
  @override
  late final GeneratedColumn<String> astrology = GeneratedColumn<String>(
      'astrology', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _residenceMeta =
      const VerificationMeta('residence');
  @override
  late final GeneratedColumn<String> residence = GeneratedColumn<String>(
      'residence', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _spouseMeta = const VerificationMeta('spouse');
  @override
  late final GeneratedColumn<String> spouse = GeneratedColumn<String>(
      'spouse', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _economicConditionsMeta =
      const VerificationMeta('economicConditions');
  @override
  late final GeneratedColumn<String> economicConditions =
      GeneratedColumn<String>('economic_conditions', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _interestsMeta =
      const VerificationMeta('interests');
  @override
  late final GeneratedColumn<String> interests = GeneratedColumn<String>(
      'interests', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _frequentLocationsMeta =
      const VerificationMeta('frequentLocations');
  @override
  late final GeneratedColumn<String> frequentLocations =
      GeneratedColumn<String>('frequent_locations', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userUniqueId,
        characterName,
        prompt,
        backgroundPath,
        avatarPath,
        description,
        emotionPrompt,
        emotionJson,
        personality,
        isSecret,
        profession,
        gender,
        mantra,
        languageStyle,
        story,
        birthday,
        astrology,
        residence,
        spouse,
        economicConditions,
        interests,
        frequentLocations
      ];
  @override
  String get aliasedName => _alias ?? 'character';
  @override
  String get actualTableName => 'character';
  @override
  VerificationContext validateIntegrity(Insertable<CharacterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_unique_id')) {
      context.handle(
          _userUniqueIdMeta,
          userUniqueId.isAcceptableOrUnknown(
              data['user_unique_id']!, _userUniqueIdMeta));
    } else if (isInserting) {
      context.missing(_userUniqueIdMeta);
    }
    if (data.containsKey('character_name')) {
      context.handle(
          _characterNameMeta,
          characterName.isAcceptableOrUnknown(
              data['character_name']!, _characterNameMeta));
    } else if (isInserting) {
      context.missing(_characterNameMeta);
    }
    if (data.containsKey('prompt')) {
      context.handle(_promptMeta,
          prompt.isAcceptableOrUnknown(data['prompt']!, _promptMeta));
    } else if (isInserting) {
      context.missing(_promptMeta);
    }
    if (data.containsKey('background_path')) {
      context.handle(
          _backgroundPathMeta,
          backgroundPath.isAcceptableOrUnknown(
              data['background_path']!, _backgroundPathMeta));
    }
    if (data.containsKey('avatar_path')) {
      context.handle(
          _avatarPathMeta,
          avatarPath.isAcceptableOrUnknown(
              data['avatar_path']!, _avatarPathMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('emotion_prompt')) {
      context.handle(
          _emotionPromptMeta,
          emotionPrompt.isAcceptableOrUnknown(
              data['emotion_prompt']!, _emotionPromptMeta));
    }
    if (data.containsKey('emotion_json')) {
      context.handle(
          _emotionJsonMeta,
          emotionJson.isAcceptableOrUnknown(
              data['emotion_json']!, _emotionJsonMeta));
    }
    if (data.containsKey('personality')) {
      context.handle(
          _personalityMeta,
          personality.isAcceptableOrUnknown(
              data['personality']!, _personalityMeta));
    }
    if (data.containsKey('is_secret')) {
      context.handle(_isSecretMeta,
          isSecret.isAcceptableOrUnknown(data['is_secret']!, _isSecretMeta));
    }
    if (data.containsKey('profession')) {
      context.handle(
          _professionMeta,
          profession.isAcceptableOrUnknown(
              data['profession']!, _professionMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    }
    if (data.containsKey('mantra')) {
      context.handle(_mantraMeta,
          mantra.isAcceptableOrUnknown(data['mantra']!, _mantraMeta));
    }
    if (data.containsKey('language_style')) {
      context.handle(
          _languageStyleMeta,
          languageStyle.isAcceptableOrUnknown(
              data['language_style']!, _languageStyleMeta));
    }
    if (data.containsKey('story')) {
      context.handle(
          _storyMeta, story.isAcceptableOrUnknown(data['story']!, _storyMeta));
    }
    if (data.containsKey('birthday')) {
      context.handle(_birthdayMeta,
          birthday.isAcceptableOrUnknown(data['birthday']!, _birthdayMeta));
    }
    if (data.containsKey('astrology')) {
      context.handle(_astrologyMeta,
          astrology.isAcceptableOrUnknown(data['astrology']!, _astrologyMeta));
    }
    if (data.containsKey('residence')) {
      context.handle(_residenceMeta,
          residence.isAcceptableOrUnknown(data['residence']!, _residenceMeta));
    }
    if (data.containsKey('spouse')) {
      context.handle(_spouseMeta,
          spouse.isAcceptableOrUnknown(data['spouse']!, _spouseMeta));
    }
    if (data.containsKey('economic_conditions')) {
      context.handle(
          _economicConditionsMeta,
          economicConditions.isAcceptableOrUnknown(
              data['economic_conditions']!, _economicConditionsMeta));
    }
    if (data.containsKey('interests')) {
      context.handle(_interestsMeta,
          interests.isAcceptableOrUnknown(data['interests']!, _interestsMeta));
    }
    if (data.containsKey('frequent_locations')) {
      context.handle(
          _frequentLocationsMeta,
          frequentLocations.isAcceptableOrUnknown(
              data['frequent_locations']!, _frequentLocationsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CharacterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CharacterData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userUniqueId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_unique_id'])!,
      characterName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}character_name'])!,
      prompt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}prompt'])!,
      backgroundPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}background_path']),
      avatarPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar_path']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      emotionPrompt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}emotion_prompt']),
      emotionJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}emotion_json']),
      personality: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}personality']),
      isSecret: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}is_secret'])!,
      profession: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}profession']),
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender']),
      mantra: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mantra']),
      languageStyle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language_style']),
      story: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}story']),
      birthday: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birthday']),
      astrology: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}astrology']),
      residence: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}residence']),
      spouse: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}spouse']),
      economicConditions: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}economic_conditions']),
      interests: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}interests']),
      frequentLocations: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}frequent_locations']),
    );
  }

  @override
  $CharacterTable createAlias(String alias) {
    return $CharacterTable(attachedDatabase, alias);
  }
}

class CharacterData extends DataClass implements Insertable<CharacterData> {
  final int id;

  /// 用户唯一id
  final String userUniqueId;

  /// 角色名称
  final String characterName;

  ///特征标签
  final String prompt;

  /// 角色形象图
  final String? backgroundPath;

  /// 角色头像
  final String? avatarPath;

  ///角色描述
  final String? description;

  ///情感prompt
  final String? emotionPrompt;

  ///情感json
  final String? emotionJson;

  /// 性格
  final String? personality;

  ///是否公开 0:不公开 1:公开
  final String isSecret;

  /// 职业
  final String? profession;

  /// 性别
  final String? gender;

  /// 口头禅
  final String? mantra;

  /// 语言风格
  final String? languageStyle;

  /// 故事
  final String? story;

  /// 生日
  final DateTime? birthday;

  /// 星座
  final String? astrology;

  ///居住地
  final String? residence;

  /// 配偶
  final String? spouse;

  ///经济状况
  final String? economicConditions;

  /// 兴趣爱好
  final String? interests;

  ///常去地点
  final String? frequentLocations;
  const CharacterData(
      {required this.id,
      required this.userUniqueId,
      required this.characterName,
      required this.prompt,
      this.backgroundPath,
      this.avatarPath,
      this.description,
      this.emotionPrompt,
      this.emotionJson,
      this.personality,
      required this.isSecret,
      this.profession,
      this.gender,
      this.mantra,
      this.languageStyle,
      this.story,
      this.birthday,
      this.astrology,
      this.residence,
      this.spouse,
      this.economicConditions,
      this.interests,
      this.frequentLocations});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_unique_id'] = Variable<String>(userUniqueId);
    map['character_name'] = Variable<String>(characterName);
    map['prompt'] = Variable<String>(prompt);
    if (!nullToAbsent || backgroundPath != null) {
      map['background_path'] = Variable<String>(backgroundPath);
    }
    if (!nullToAbsent || avatarPath != null) {
      map['avatar_path'] = Variable<String>(avatarPath);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || emotionPrompt != null) {
      map['emotion_prompt'] = Variable<String>(emotionPrompt);
    }
    if (!nullToAbsent || emotionJson != null) {
      map['emotion_json'] = Variable<String>(emotionJson);
    }
    if (!nullToAbsent || personality != null) {
      map['personality'] = Variable<String>(personality);
    }
    map['is_secret'] = Variable<String>(isSecret);
    if (!nullToAbsent || profession != null) {
      map['profession'] = Variable<String>(profession);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    if (!nullToAbsent || mantra != null) {
      map['mantra'] = Variable<String>(mantra);
    }
    if (!nullToAbsent || languageStyle != null) {
      map['language_style'] = Variable<String>(languageStyle);
    }
    if (!nullToAbsent || story != null) {
      map['story'] = Variable<String>(story);
    }
    if (!nullToAbsent || birthday != null) {
      map['birthday'] = Variable<DateTime>(birthday);
    }
    if (!nullToAbsent || astrology != null) {
      map['astrology'] = Variable<String>(astrology);
    }
    if (!nullToAbsent || residence != null) {
      map['residence'] = Variable<String>(residence);
    }
    if (!nullToAbsent || spouse != null) {
      map['spouse'] = Variable<String>(spouse);
    }
    if (!nullToAbsent || economicConditions != null) {
      map['economic_conditions'] = Variable<String>(economicConditions);
    }
    if (!nullToAbsent || interests != null) {
      map['interests'] = Variable<String>(interests);
    }
    if (!nullToAbsent || frequentLocations != null) {
      map['frequent_locations'] = Variable<String>(frequentLocations);
    }
    return map;
  }

  CharacterCompanion toCompanion(bool nullToAbsent) {
    return CharacterCompanion(
      id: Value(id),
      userUniqueId: Value(userUniqueId),
      characterName: Value(characterName),
      prompt: Value(prompt),
      backgroundPath: backgroundPath == null && nullToAbsent
          ? const Value.absent()
          : Value(backgroundPath),
      avatarPath: avatarPath == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarPath),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      emotionPrompt: emotionPrompt == null && nullToAbsent
          ? const Value.absent()
          : Value(emotionPrompt),
      emotionJson: emotionJson == null && nullToAbsent
          ? const Value.absent()
          : Value(emotionJson),
      personality: personality == null && nullToAbsent
          ? const Value.absent()
          : Value(personality),
      isSecret: Value(isSecret),
      profession: profession == null && nullToAbsent
          ? const Value.absent()
          : Value(profession),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      mantra:
          mantra == null && nullToAbsent ? const Value.absent() : Value(mantra),
      languageStyle: languageStyle == null && nullToAbsent
          ? const Value.absent()
          : Value(languageStyle),
      story:
          story == null && nullToAbsent ? const Value.absent() : Value(story),
      birthday: birthday == null && nullToAbsent
          ? const Value.absent()
          : Value(birthday),
      astrology: astrology == null && nullToAbsent
          ? const Value.absent()
          : Value(astrology),
      residence: residence == null && nullToAbsent
          ? const Value.absent()
          : Value(residence),
      spouse:
          spouse == null && nullToAbsent ? const Value.absent() : Value(spouse),
      economicConditions: economicConditions == null && nullToAbsent
          ? const Value.absent()
          : Value(economicConditions),
      interests: interests == null && nullToAbsent
          ? const Value.absent()
          : Value(interests),
      frequentLocations: frequentLocations == null && nullToAbsent
          ? const Value.absent()
          : Value(frequentLocations),
    );
  }

  factory CharacterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CharacterData(
      id: serializer.fromJson<int>(json['id']),
      userUniqueId: serializer.fromJson<String>(json['userUniqueId']),
      characterName: serializer.fromJson<String>(json['characterName']),
      prompt: serializer.fromJson<String>(json['prompt']),
      backgroundPath: serializer.fromJson<String?>(json['backgroundPath']),
      avatarPath: serializer.fromJson<String?>(json['avatarPath']),
      description: serializer.fromJson<String?>(json['description']),
      emotionPrompt: serializer.fromJson<String?>(json['emotionPrompt']),
      emotionJson: serializer.fromJson<String?>(json['emotionJson']),
      personality: serializer.fromJson<String?>(json['personality']),
      isSecret: serializer.fromJson<String>(json['isSecret']),
      profession: serializer.fromJson<String?>(json['profession']),
      gender: serializer.fromJson<String?>(json['gender']),
      mantra: serializer.fromJson<String?>(json['mantra']),
      languageStyle: serializer.fromJson<String?>(json['languageStyle']),
      story: serializer.fromJson<String?>(json['story']),
      birthday: serializer.fromJson<DateTime?>(json['birthday']),
      astrology: serializer.fromJson<String?>(json['astrology']),
      residence: serializer.fromJson<String?>(json['residence']),
      spouse: serializer.fromJson<String?>(json['spouse']),
      economicConditions:
          serializer.fromJson<String?>(json['economicConditions']),
      interests: serializer.fromJson<String?>(json['interests']),
      frequentLocations:
          serializer.fromJson<String?>(json['frequentLocations']),
    );
  }
  factory CharacterData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      CharacterData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userUniqueId': serializer.toJson<String>(userUniqueId),
      'characterName': serializer.toJson<String>(characterName),
      'prompt': serializer.toJson<String>(prompt),
      'backgroundPath': serializer.toJson<String?>(backgroundPath),
      'avatarPath': serializer.toJson<String?>(avatarPath),
      'description': serializer.toJson<String?>(description),
      'emotionPrompt': serializer.toJson<String?>(emotionPrompt),
      'emotionJson': serializer.toJson<String?>(emotionJson),
      'personality': serializer.toJson<String?>(personality),
      'isSecret': serializer.toJson<String>(isSecret),
      'profession': serializer.toJson<String?>(profession),
      'gender': serializer.toJson<String?>(gender),
      'mantra': serializer.toJson<String?>(mantra),
      'languageStyle': serializer.toJson<String?>(languageStyle),
      'story': serializer.toJson<String?>(story),
      'birthday': serializer.toJson<DateTime?>(birthday),
      'astrology': serializer.toJson<String?>(astrology),
      'residence': serializer.toJson<String?>(residence),
      'spouse': serializer.toJson<String?>(spouse),
      'economicConditions': serializer.toJson<String?>(economicConditions),
      'interests': serializer.toJson<String?>(interests),
      'frequentLocations': serializer.toJson<String?>(frequentLocations),
    };
  }

  CharacterData copyWith(
          {int? id,
          String? userUniqueId,
          String? characterName,
          String? prompt,
          Value<String?> backgroundPath = const Value.absent(),
          Value<String?> avatarPath = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> emotionPrompt = const Value.absent(),
          Value<String?> emotionJson = const Value.absent(),
          Value<String?> personality = const Value.absent(),
          String? isSecret,
          Value<String?> profession = const Value.absent(),
          Value<String?> gender = const Value.absent(),
          Value<String?> mantra = const Value.absent(),
          Value<String?> languageStyle = const Value.absent(),
          Value<String?> story = const Value.absent(),
          Value<DateTime?> birthday = const Value.absent(),
          Value<String?> astrology = const Value.absent(),
          Value<String?> residence = const Value.absent(),
          Value<String?> spouse = const Value.absent(),
          Value<String?> economicConditions = const Value.absent(),
          Value<String?> interests = const Value.absent(),
          Value<String?> frequentLocations = const Value.absent()}) =>
      CharacterData(
        id: id ?? this.id,
        userUniqueId: userUniqueId ?? this.userUniqueId,
        characterName: characterName ?? this.characterName,
        prompt: prompt ?? this.prompt,
        backgroundPath:
            backgroundPath.present ? backgroundPath.value : this.backgroundPath,
        avatarPath: avatarPath.present ? avatarPath.value : this.avatarPath,
        description: description.present ? description.value : this.description,
        emotionPrompt:
            emotionPrompt.present ? emotionPrompt.value : this.emotionPrompt,
        emotionJson: emotionJson.present ? emotionJson.value : this.emotionJson,
        personality: personality.present ? personality.value : this.personality,
        isSecret: isSecret ?? this.isSecret,
        profession: profession.present ? profession.value : this.profession,
        gender: gender.present ? gender.value : this.gender,
        mantra: mantra.present ? mantra.value : this.mantra,
        languageStyle:
            languageStyle.present ? languageStyle.value : this.languageStyle,
        story: story.present ? story.value : this.story,
        birthday: birthday.present ? birthday.value : this.birthday,
        astrology: astrology.present ? astrology.value : this.astrology,
        residence: residence.present ? residence.value : this.residence,
        spouse: spouse.present ? spouse.value : this.spouse,
        economicConditions: economicConditions.present
            ? economicConditions.value
            : this.economicConditions,
        interests: interests.present ? interests.value : this.interests,
        frequentLocations: frequentLocations.present
            ? frequentLocations.value
            : this.frequentLocations,
      );
  @override
  String toString() {
    return (StringBuffer('CharacterData(')
          ..write('id: $id, ')
          ..write('userUniqueId: $userUniqueId, ')
          ..write('characterName: $characterName, ')
          ..write('prompt: $prompt, ')
          ..write('backgroundPath: $backgroundPath, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('description: $description, ')
          ..write('emotionPrompt: $emotionPrompt, ')
          ..write('emotionJson: $emotionJson, ')
          ..write('personality: $personality, ')
          ..write('isSecret: $isSecret, ')
          ..write('profession: $profession, ')
          ..write('gender: $gender, ')
          ..write('mantra: $mantra, ')
          ..write('languageStyle: $languageStyle, ')
          ..write('story: $story, ')
          ..write('birthday: $birthday, ')
          ..write('astrology: $astrology, ')
          ..write('residence: $residence, ')
          ..write('spouse: $spouse, ')
          ..write('economicConditions: $economicConditions, ')
          ..write('interests: $interests, ')
          ..write('frequentLocations: $frequentLocations')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        userUniqueId,
        characterName,
        prompt,
        backgroundPath,
        avatarPath,
        description,
        emotionPrompt,
        emotionJson,
        personality,
        isSecret,
        profession,
        gender,
        mantra,
        languageStyle,
        story,
        birthday,
        astrology,
        residence,
        spouse,
        economicConditions,
        interests,
        frequentLocations
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharacterData &&
          other.id == this.id &&
          other.userUniqueId == this.userUniqueId &&
          other.characterName == this.characterName &&
          other.prompt == this.prompt &&
          other.backgroundPath == this.backgroundPath &&
          other.avatarPath == this.avatarPath &&
          other.description == this.description &&
          other.emotionPrompt == this.emotionPrompt &&
          other.emotionJson == this.emotionJson &&
          other.personality == this.personality &&
          other.isSecret == this.isSecret &&
          other.profession == this.profession &&
          other.gender == this.gender &&
          other.mantra == this.mantra &&
          other.languageStyle == this.languageStyle &&
          other.story == this.story &&
          other.birthday == this.birthday &&
          other.astrology == this.astrology &&
          other.residence == this.residence &&
          other.spouse == this.spouse &&
          other.economicConditions == this.economicConditions &&
          other.interests == this.interests &&
          other.frequentLocations == this.frequentLocations);
}

class CharacterCompanion extends UpdateCompanion<CharacterData> {
  final Value<int> id;
  final Value<String> userUniqueId;
  final Value<String> characterName;
  final Value<String> prompt;
  final Value<String?> backgroundPath;
  final Value<String?> avatarPath;
  final Value<String?> description;
  final Value<String?> emotionPrompt;
  final Value<String?> emotionJson;
  final Value<String?> personality;
  final Value<String> isSecret;
  final Value<String?> profession;
  final Value<String?> gender;
  final Value<String?> mantra;
  final Value<String?> languageStyle;
  final Value<String?> story;
  final Value<DateTime?> birthday;
  final Value<String?> astrology;
  final Value<String?> residence;
  final Value<String?> spouse;
  final Value<String?> economicConditions;
  final Value<String?> interests;
  final Value<String?> frequentLocations;
  const CharacterCompanion({
    this.id = const Value.absent(),
    this.userUniqueId = const Value.absent(),
    this.characterName = const Value.absent(),
    this.prompt = const Value.absent(),
    this.backgroundPath = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.description = const Value.absent(),
    this.emotionPrompt = const Value.absent(),
    this.emotionJson = const Value.absent(),
    this.personality = const Value.absent(),
    this.isSecret = const Value.absent(),
    this.profession = const Value.absent(),
    this.gender = const Value.absent(),
    this.mantra = const Value.absent(),
    this.languageStyle = const Value.absent(),
    this.story = const Value.absent(),
    this.birthday = const Value.absent(),
    this.astrology = const Value.absent(),
    this.residence = const Value.absent(),
    this.spouse = const Value.absent(),
    this.economicConditions = const Value.absent(),
    this.interests = const Value.absent(),
    this.frequentLocations = const Value.absent(),
  });
  CharacterCompanion.insert({
    this.id = const Value.absent(),
    required String userUniqueId,
    required String characterName,
    required String prompt,
    this.backgroundPath = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.description = const Value.absent(),
    this.emotionPrompt = const Value.absent(),
    this.emotionJson = const Value.absent(),
    this.personality = const Value.absent(),
    this.isSecret = const Value.absent(),
    this.profession = const Value.absent(),
    this.gender = const Value.absent(),
    this.mantra = const Value.absent(),
    this.languageStyle = const Value.absent(),
    this.story = const Value.absent(),
    this.birthday = const Value.absent(),
    this.astrology = const Value.absent(),
    this.residence = const Value.absent(),
    this.spouse = const Value.absent(),
    this.economicConditions = const Value.absent(),
    this.interests = const Value.absent(),
    this.frequentLocations = const Value.absent(),
  })  : userUniqueId = Value(userUniqueId),
        characterName = Value(characterName),
        prompt = Value(prompt);
  static Insertable<CharacterData> custom({
    Expression<int>? id,
    Expression<String>? userUniqueId,
    Expression<String>? characterName,
    Expression<String>? prompt,
    Expression<String>? backgroundPath,
    Expression<String>? avatarPath,
    Expression<String>? description,
    Expression<String>? emotionPrompt,
    Expression<String>? emotionJson,
    Expression<String>? personality,
    Expression<String>? isSecret,
    Expression<String>? profession,
    Expression<String>? gender,
    Expression<String>? mantra,
    Expression<String>? languageStyle,
    Expression<String>? story,
    Expression<DateTime>? birthday,
    Expression<String>? astrology,
    Expression<String>? residence,
    Expression<String>? spouse,
    Expression<String>? economicConditions,
    Expression<String>? interests,
    Expression<String>? frequentLocations,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userUniqueId != null) 'user_unique_id': userUniqueId,
      if (characterName != null) 'character_name': characterName,
      if (prompt != null) 'prompt': prompt,
      if (backgroundPath != null) 'background_path': backgroundPath,
      if (avatarPath != null) 'avatar_path': avatarPath,
      if (description != null) 'description': description,
      if (emotionPrompt != null) 'emotion_prompt': emotionPrompt,
      if (emotionJson != null) 'emotion_json': emotionJson,
      if (personality != null) 'personality': personality,
      if (isSecret != null) 'is_secret': isSecret,
      if (profession != null) 'profession': profession,
      if (gender != null) 'gender': gender,
      if (mantra != null) 'mantra': mantra,
      if (languageStyle != null) 'language_style': languageStyle,
      if (story != null) 'story': story,
      if (birthday != null) 'birthday': birthday,
      if (astrology != null) 'astrology': astrology,
      if (residence != null) 'residence': residence,
      if (spouse != null) 'spouse': spouse,
      if (economicConditions != null) 'economic_conditions': economicConditions,
      if (interests != null) 'interests': interests,
      if (frequentLocations != null) 'frequent_locations': frequentLocations,
    });
  }

  CharacterCompanion copyWith(
      {Value<int>? id,
      Value<String>? userUniqueId,
      Value<String>? characterName,
      Value<String>? prompt,
      Value<String?>? backgroundPath,
      Value<String?>? avatarPath,
      Value<String?>? description,
      Value<String?>? emotionPrompt,
      Value<String?>? emotionJson,
      Value<String?>? personality,
      Value<String>? isSecret,
      Value<String?>? profession,
      Value<String?>? gender,
      Value<String?>? mantra,
      Value<String?>? languageStyle,
      Value<String?>? story,
      Value<DateTime?>? birthday,
      Value<String?>? astrology,
      Value<String?>? residence,
      Value<String?>? spouse,
      Value<String?>? economicConditions,
      Value<String?>? interests,
      Value<String?>? frequentLocations}) {
    return CharacterCompanion(
      id: id ?? this.id,
      userUniqueId: userUniqueId ?? this.userUniqueId,
      characterName: characterName ?? this.characterName,
      prompt: prompt ?? this.prompt,
      backgroundPath: backgroundPath ?? this.backgroundPath,
      avatarPath: avatarPath ?? this.avatarPath,
      description: description ?? this.description,
      emotionPrompt: emotionPrompt ?? this.emotionPrompt,
      emotionJson: emotionJson ?? this.emotionJson,
      personality: personality ?? this.personality,
      isSecret: isSecret ?? this.isSecret,
      profession: profession ?? this.profession,
      gender: gender ?? this.gender,
      mantra: mantra ?? this.mantra,
      languageStyle: languageStyle ?? this.languageStyle,
      story: story ?? this.story,
      birthday: birthday ?? this.birthday,
      astrology: astrology ?? this.astrology,
      residence: residence ?? this.residence,
      spouse: spouse ?? this.spouse,
      economicConditions: economicConditions ?? this.economicConditions,
      interests: interests ?? this.interests,
      frequentLocations: frequentLocations ?? this.frequentLocations,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userUniqueId.present) {
      map['user_unique_id'] = Variable<String>(userUniqueId.value);
    }
    if (characterName.present) {
      map['character_name'] = Variable<String>(characterName.value);
    }
    if (prompt.present) {
      map['prompt'] = Variable<String>(prompt.value);
    }
    if (backgroundPath.present) {
      map['background_path'] = Variable<String>(backgroundPath.value);
    }
    if (avatarPath.present) {
      map['avatar_path'] = Variable<String>(avatarPath.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (emotionPrompt.present) {
      map['emotion_prompt'] = Variable<String>(emotionPrompt.value);
    }
    if (emotionJson.present) {
      map['emotion_json'] = Variable<String>(emotionJson.value);
    }
    if (personality.present) {
      map['personality'] = Variable<String>(personality.value);
    }
    if (isSecret.present) {
      map['is_secret'] = Variable<String>(isSecret.value);
    }
    if (profession.present) {
      map['profession'] = Variable<String>(profession.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (mantra.present) {
      map['mantra'] = Variable<String>(mantra.value);
    }
    if (languageStyle.present) {
      map['language_style'] = Variable<String>(languageStyle.value);
    }
    if (story.present) {
      map['story'] = Variable<String>(story.value);
    }
    if (birthday.present) {
      map['birthday'] = Variable<DateTime>(birthday.value);
    }
    if (astrology.present) {
      map['astrology'] = Variable<String>(astrology.value);
    }
    if (residence.present) {
      map['residence'] = Variable<String>(residence.value);
    }
    if (spouse.present) {
      map['spouse'] = Variable<String>(spouse.value);
    }
    if (economicConditions.present) {
      map['economic_conditions'] = Variable<String>(economicConditions.value);
    }
    if (interests.present) {
      map['interests'] = Variable<String>(interests.value);
    }
    if (frequentLocations.present) {
      map['frequent_locations'] = Variable<String>(frequentLocations.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharacterCompanion(')
          ..write('id: $id, ')
          ..write('userUniqueId: $userUniqueId, ')
          ..write('characterName: $characterName, ')
          ..write('prompt: $prompt, ')
          ..write('backgroundPath: $backgroundPath, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('description: $description, ')
          ..write('emotionPrompt: $emotionPrompt, ')
          ..write('emotionJson: $emotionJson, ')
          ..write('personality: $personality, ')
          ..write('isSecret: $isSecret, ')
          ..write('profession: $profession, ')
          ..write('gender: $gender, ')
          ..write('mantra: $mantra, ')
          ..write('languageStyle: $languageStyle, ')
          ..write('story: $story, ')
          ..write('birthday: $birthday, ')
          ..write('astrology: $astrology, ')
          ..write('residence: $residence, ')
          ..write('spouse: $spouse, ')
          ..write('economicConditions: $economicConditions, ')
          ..write('interests: $interests, ')
          ..write('frequentLocations: $frequentLocations')
          ..write(')'))
        .toString();
  }
}

class $ConversationTable extends Conversation
    with TableInfo<$ConversationTable, ConversationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ConversationTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _conversationIdMeta =
      const VerificationMeta('conversationId');
  @override
  late final GeneratedColumn<String> conversationId = GeneratedColumn<String>(
      'conversationId', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _conversationTypeMeta =
      const VerificationMeta('conversationType');
  @override
  late final GeneratedColumn<int> conversationType = GeneratedColumn<int>(
      'conversationType', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _memberIdMeta =
      const VerificationMeta('memberId');
  @override
  late final GeneratedColumn<String> memberId = GeneratedColumn<String>(
      'memberId', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _memberTypeMeta =
      const VerificationMeta('memberType');
  @override
  late final GeneratedColumn<int> memberType = GeneratedColumn<int>(
      'memberType', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'userId', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _avatarPathMeta =
      const VerificationMeta('avatarPath');
  @override
  late final GeneratedColumn<String> avatarPath = GeneratedColumn<String>(
      'avatarPath', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _backgroundPathMeta =
      const VerificationMeta('backgroundPath');
  @override
  late final GeneratedColumn<String> backgroundPath = GeneratedColumn<String>(
      'backgroundPath', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _characterNameMeta =
      const VerificationMeta('characterName');
  @override
  late final GeneratedColumn<String> characterName = GeneratedColumn<String>(
      'characterName', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _toIdMeta = const VerificationMeta('toId');
  @override
  late final GeneratedColumn<String> toId = GeneratedColumn<String>(
      'toId', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _toUserNameMeta =
      const VerificationMeta('toUserName');
  @override
  late final GeneratedColumn<String> toUserName = GeneratedColumn<String>(
      'toUserName', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _toAvatarPathMeta =
      const VerificationMeta('toAvatarPath');
  @override
  late final GeneratedColumn<String> toAvatarPath = GeneratedColumn<String>(
      'toAvatarPath', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastMsgMeta =
      const VerificationMeta('lastMsg');
  @override
  late final GeneratedColumn<String> lastMsg = GeneratedColumn<String>(
      'lastMsg', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastMsgTypeMeta =
      const VerificationMeta('lastMsgType');
  @override
  late final GeneratedColumn<String> lastMsgType = GeneratedColumn<String>(
      'lastMsgType', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latestTimeMeta =
      const VerificationMeta('latestTime');
  @override
  late final GeneratedColumn<String> latestTime = GeneratedColumn<String>(
      'latestTime', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        conversationId,
        conversationType,
        memberId,
        memberType,
        userId,
        nickname,
        avatarPath,
        backgroundPath,
        characterName,
        toId,
        toUserName,
        toAvatarPath,
        lastMsg,
        lastMsgType,
        latestTime
      ];
  @override
  String get aliasedName => _alias ?? 'conversation';
  @override
  String get actualTableName => 'conversation';
  @override
  VerificationContext validateIntegrity(Insertable<ConversationData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('conversationId')) {
      context.handle(
          _conversationIdMeta,
          conversationId.isAcceptableOrUnknown(
              data['conversationId']!, _conversationIdMeta));
    } else if (isInserting) {
      context.missing(_conversationIdMeta);
    }
    if (data.containsKey('conversationType')) {
      context.handle(
          _conversationTypeMeta,
          conversationType.isAcceptableOrUnknown(
              data['conversationType']!, _conversationTypeMeta));
    } else if (isInserting) {
      context.missing(_conversationTypeMeta);
    }
    if (data.containsKey('memberId')) {
      context.handle(_memberIdMeta,
          memberId.isAcceptableOrUnknown(data['memberId']!, _memberIdMeta));
    } else if (isInserting) {
      context.missing(_memberIdMeta);
    }
    if (data.containsKey('memberType')) {
      context.handle(
          _memberTypeMeta,
          memberType.isAcceptableOrUnknown(
              data['memberType']!, _memberTypeMeta));
    } else if (isInserting) {
      context.missing(_memberTypeMeta);
    }
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    }
    if (data.containsKey('avatarPath')) {
      context.handle(
          _avatarPathMeta,
          avatarPath.isAcceptableOrUnknown(
              data['avatarPath']!, _avatarPathMeta));
    }
    if (data.containsKey('backgroundPath')) {
      context.handle(
          _backgroundPathMeta,
          backgroundPath.isAcceptableOrUnknown(
              data['backgroundPath']!, _backgroundPathMeta));
    }
    if (data.containsKey('characterName')) {
      context.handle(
          _characterNameMeta,
          characterName.isAcceptableOrUnknown(
              data['characterName']!, _characterNameMeta));
    }
    if (data.containsKey('toId')) {
      context.handle(
          _toIdMeta, toId.isAcceptableOrUnknown(data['toId']!, _toIdMeta));
    }
    if (data.containsKey('toUserName')) {
      context.handle(
          _toUserNameMeta,
          toUserName.isAcceptableOrUnknown(
              data['toUserName']!, _toUserNameMeta));
    }
    if (data.containsKey('toAvatarPath')) {
      context.handle(
          _toAvatarPathMeta,
          toAvatarPath.isAcceptableOrUnknown(
              data['toAvatarPath']!, _toAvatarPathMeta));
    }
    if (data.containsKey('lastMsg')) {
      context.handle(_lastMsgMeta,
          lastMsg.isAcceptableOrUnknown(data['lastMsg']!, _lastMsgMeta));
    }
    if (data.containsKey('lastMsgType')) {
      context.handle(
          _lastMsgTypeMeta,
          lastMsgType.isAcceptableOrUnknown(
              data['lastMsgType']!, _lastMsgTypeMeta));
    }
    if (data.containsKey('latestTime')) {
      context.handle(
          _latestTimeMeta,
          latestTime.isAcceptableOrUnknown(
              data['latestTime']!, _latestTimeMeta));
    } else if (isInserting) {
      context.missing(_latestTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ConversationData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ConversationData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      conversationId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}conversationId'])!,
      conversationType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}conversationType'])!,
      memberId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}memberId'])!,
      memberType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}memberType'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}userId'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname']),
      avatarPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatarPath']),
      backgroundPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}backgroundPath']),
      characterName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}characterName']),
      toId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}toId']),
      toUserName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}toUserName']),
      toAvatarPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}toAvatarPath']),
      lastMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lastMsg']),
      lastMsgType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lastMsgType']),
      latestTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}latestTime'])!,
    );
  }

  @override
  $ConversationTable createAlias(String alias) {
    return $ConversationTable(attachedDatabase, alias);
  }
}

class ConversationData extends DataClass
    implements Insertable<ConversationData> {
  /// 自增id
  final int id;
  final String conversationId;
  final int conversationType;
  final String memberId;
  final int memberType;
  final String userId;
  final String? nickname;
  final String? avatarPath;
  final String? backgroundPath;
  final String? characterName;
  final String? toId;
  final String? toUserName;
  final String? toAvatarPath;
  final String? lastMsg;
  final String? lastMsgType;
  final String latestTime;
  const ConversationData(
      {required this.id,
      required this.conversationId,
      required this.conversationType,
      required this.memberId,
      required this.memberType,
      required this.userId,
      this.nickname,
      this.avatarPath,
      this.backgroundPath,
      this.characterName,
      this.toId,
      this.toUserName,
      this.toAvatarPath,
      this.lastMsg,
      this.lastMsgType,
      required this.latestTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['conversationId'] = Variable<String>(conversationId);
    map['conversationType'] = Variable<int>(conversationType);
    map['memberId'] = Variable<String>(memberId);
    map['memberType'] = Variable<int>(memberType);
    map['userId'] = Variable<String>(userId);
    if (!nullToAbsent || nickname != null) {
      map['nickname'] = Variable<String>(nickname);
    }
    if (!nullToAbsent || avatarPath != null) {
      map['avatarPath'] = Variable<String>(avatarPath);
    }
    if (!nullToAbsent || backgroundPath != null) {
      map['backgroundPath'] = Variable<String>(backgroundPath);
    }
    if (!nullToAbsent || characterName != null) {
      map['characterName'] = Variable<String>(characterName);
    }
    if (!nullToAbsent || toId != null) {
      map['toId'] = Variable<String>(toId);
    }
    if (!nullToAbsent || toUserName != null) {
      map['toUserName'] = Variable<String>(toUserName);
    }
    if (!nullToAbsent || toAvatarPath != null) {
      map['toAvatarPath'] = Variable<String>(toAvatarPath);
    }
    if (!nullToAbsent || lastMsg != null) {
      map['lastMsg'] = Variable<String>(lastMsg);
    }
    if (!nullToAbsent || lastMsgType != null) {
      map['lastMsgType'] = Variable<String>(lastMsgType);
    }
    map['latestTime'] = Variable<String>(latestTime);
    return map;
  }

  ConversationCompanion toCompanion(bool nullToAbsent) {
    return ConversationCompanion(
      id: Value(id),
      conversationId: Value(conversationId),
      conversationType: Value(conversationType),
      memberId: Value(memberId),
      memberType: Value(memberType),
      userId: Value(userId),
      nickname: nickname == null && nullToAbsent
          ? const Value.absent()
          : Value(nickname),
      avatarPath: avatarPath == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarPath),
      backgroundPath: backgroundPath == null && nullToAbsent
          ? const Value.absent()
          : Value(backgroundPath),
      characterName: characterName == null && nullToAbsent
          ? const Value.absent()
          : Value(characterName),
      toId: toId == null && nullToAbsent ? const Value.absent() : Value(toId),
      toUserName: toUserName == null && nullToAbsent
          ? const Value.absent()
          : Value(toUserName),
      toAvatarPath: toAvatarPath == null && nullToAbsent
          ? const Value.absent()
          : Value(toAvatarPath),
      lastMsg: lastMsg == null && nullToAbsent
          ? const Value.absent()
          : Value(lastMsg),
      lastMsgType: lastMsgType == null && nullToAbsent
          ? const Value.absent()
          : Value(lastMsgType),
      latestTime: Value(latestTime),
    );
  }

  factory ConversationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ConversationData(
      id: serializer.fromJson<int>(json['id']),
      conversationId: serializer.fromJson<String>(json['conversationId']),
      conversationType: serializer.fromJson<int>(json['conversationType']),
      memberId: serializer.fromJson<String>(json['memberId']),
      memberType: serializer.fromJson<int>(json['memberType']),
      userId: serializer.fromJson<String>(json['userId']),
      nickname: serializer.fromJson<String?>(json['nickname']),
      avatarPath: serializer.fromJson<String?>(json['avatarPath']),
      backgroundPath: serializer.fromJson<String?>(json['backgroundPath']),
      characterName: serializer.fromJson<String?>(json['characterName']),
      toId: serializer.fromJson<String?>(json['toId']),
      toUserName: serializer.fromJson<String?>(json['toUserName']),
      toAvatarPath: serializer.fromJson<String?>(json['toAvatarPath']),
      lastMsg: serializer.fromJson<String?>(json['lastMsg']),
      lastMsgType: serializer.fromJson<String?>(json['lastMsgType']),
      latestTime: serializer.fromJson<String>(json['latestTime']),
    );
  }
  factory ConversationData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      ConversationData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'conversationId': serializer.toJson<String>(conversationId),
      'conversationType': serializer.toJson<int>(conversationType),
      'memberId': serializer.toJson<String>(memberId),
      'memberType': serializer.toJson<int>(memberType),
      'userId': serializer.toJson<String>(userId),
      'nickname': serializer.toJson<String?>(nickname),
      'avatarPath': serializer.toJson<String?>(avatarPath),
      'backgroundPath': serializer.toJson<String?>(backgroundPath),
      'characterName': serializer.toJson<String?>(characterName),
      'toId': serializer.toJson<String?>(toId),
      'toUserName': serializer.toJson<String?>(toUserName),
      'toAvatarPath': serializer.toJson<String?>(toAvatarPath),
      'lastMsg': serializer.toJson<String?>(lastMsg),
      'lastMsgType': serializer.toJson<String?>(lastMsgType),
      'latestTime': serializer.toJson<String>(latestTime),
    };
  }

  ConversationData copyWith(
          {int? id,
          String? conversationId,
          int? conversationType,
          String? memberId,
          int? memberType,
          String? userId,
          Value<String?> nickname = const Value.absent(),
          Value<String?> avatarPath = const Value.absent(),
          Value<String?> backgroundPath = const Value.absent(),
          Value<String?> characterName = const Value.absent(),
          Value<String?> toId = const Value.absent(),
          Value<String?> toUserName = const Value.absent(),
          Value<String?> toAvatarPath = const Value.absent(),
          Value<String?> lastMsg = const Value.absent(),
          Value<String?> lastMsgType = const Value.absent(),
          String? latestTime}) =>
      ConversationData(
        id: id ?? this.id,
        conversationId: conversationId ?? this.conversationId,
        conversationType: conversationType ?? this.conversationType,
        memberId: memberId ?? this.memberId,
        memberType: memberType ?? this.memberType,
        userId: userId ?? this.userId,
        nickname: nickname.present ? nickname.value : this.nickname,
        avatarPath: avatarPath.present ? avatarPath.value : this.avatarPath,
        backgroundPath:
            backgroundPath.present ? backgroundPath.value : this.backgroundPath,
        characterName:
            characterName.present ? characterName.value : this.characterName,
        toId: toId.present ? toId.value : this.toId,
        toUserName: toUserName.present ? toUserName.value : this.toUserName,
        toAvatarPath:
            toAvatarPath.present ? toAvatarPath.value : this.toAvatarPath,
        lastMsg: lastMsg.present ? lastMsg.value : this.lastMsg,
        lastMsgType: lastMsgType.present ? lastMsgType.value : this.lastMsgType,
        latestTime: latestTime ?? this.latestTime,
      );
  @override
  String toString() {
    return (StringBuffer('ConversationData(')
          ..write('id: $id, ')
          ..write('conversationId: $conversationId, ')
          ..write('conversationType: $conversationType, ')
          ..write('memberId: $memberId, ')
          ..write('memberType: $memberType, ')
          ..write('userId: $userId, ')
          ..write('nickname: $nickname, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('backgroundPath: $backgroundPath, ')
          ..write('characterName: $characterName, ')
          ..write('toId: $toId, ')
          ..write('toUserName: $toUserName, ')
          ..write('toAvatarPath: $toAvatarPath, ')
          ..write('lastMsg: $lastMsg, ')
          ..write('lastMsgType: $lastMsgType, ')
          ..write('latestTime: $latestTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      conversationId,
      conversationType,
      memberId,
      memberType,
      userId,
      nickname,
      avatarPath,
      backgroundPath,
      characterName,
      toId,
      toUserName,
      toAvatarPath,
      lastMsg,
      lastMsgType,
      latestTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ConversationData &&
          other.id == this.id &&
          other.conversationId == this.conversationId &&
          other.conversationType == this.conversationType &&
          other.memberId == this.memberId &&
          other.memberType == this.memberType &&
          other.userId == this.userId &&
          other.nickname == this.nickname &&
          other.avatarPath == this.avatarPath &&
          other.backgroundPath == this.backgroundPath &&
          other.characterName == this.characterName &&
          other.toId == this.toId &&
          other.toUserName == this.toUserName &&
          other.toAvatarPath == this.toAvatarPath &&
          other.lastMsg == this.lastMsg &&
          other.lastMsgType == this.lastMsgType &&
          other.latestTime == this.latestTime);
}

class ConversationCompanion extends UpdateCompanion<ConversationData> {
  final Value<int> id;
  final Value<String> conversationId;
  final Value<int> conversationType;
  final Value<String> memberId;
  final Value<int> memberType;
  final Value<String> userId;
  final Value<String?> nickname;
  final Value<String?> avatarPath;
  final Value<String?> backgroundPath;
  final Value<String?> characterName;
  final Value<String?> toId;
  final Value<String?> toUserName;
  final Value<String?> toAvatarPath;
  final Value<String?> lastMsg;
  final Value<String?> lastMsgType;
  final Value<String> latestTime;
  const ConversationCompanion({
    this.id = const Value.absent(),
    this.conversationId = const Value.absent(),
    this.conversationType = const Value.absent(),
    this.memberId = const Value.absent(),
    this.memberType = const Value.absent(),
    this.userId = const Value.absent(),
    this.nickname = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.backgroundPath = const Value.absent(),
    this.characterName = const Value.absent(),
    this.toId = const Value.absent(),
    this.toUserName = const Value.absent(),
    this.toAvatarPath = const Value.absent(),
    this.lastMsg = const Value.absent(),
    this.lastMsgType = const Value.absent(),
    this.latestTime = const Value.absent(),
  });
  ConversationCompanion.insert({
    this.id = const Value.absent(),
    required String conversationId,
    required int conversationType,
    required String memberId,
    required int memberType,
    required String userId,
    this.nickname = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.backgroundPath = const Value.absent(),
    this.characterName = const Value.absent(),
    this.toId = const Value.absent(),
    this.toUserName = const Value.absent(),
    this.toAvatarPath = const Value.absent(),
    this.lastMsg = const Value.absent(),
    this.lastMsgType = const Value.absent(),
    required String latestTime,
  })  : conversationId = Value(conversationId),
        conversationType = Value(conversationType),
        memberId = Value(memberId),
        memberType = Value(memberType),
        userId = Value(userId),
        latestTime = Value(latestTime);
  static Insertable<ConversationData> custom({
    Expression<int>? id,
    Expression<String>? conversationId,
    Expression<int>? conversationType,
    Expression<String>? memberId,
    Expression<int>? memberType,
    Expression<String>? userId,
    Expression<String>? nickname,
    Expression<String>? avatarPath,
    Expression<String>? backgroundPath,
    Expression<String>? characterName,
    Expression<String>? toId,
    Expression<String>? toUserName,
    Expression<String>? toAvatarPath,
    Expression<String>? lastMsg,
    Expression<String>? lastMsgType,
    Expression<String>? latestTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (conversationId != null) 'conversationId': conversationId,
      if (conversationType != null) 'conversationType': conversationType,
      if (memberId != null) 'memberId': memberId,
      if (memberType != null) 'memberType': memberType,
      if (userId != null) 'userId': userId,
      if (nickname != null) 'nickname': nickname,
      if (avatarPath != null) 'avatarPath': avatarPath,
      if (backgroundPath != null) 'backgroundPath': backgroundPath,
      if (characterName != null) 'characterName': characterName,
      if (toId != null) 'toId': toId,
      if (toUserName != null) 'toUserName': toUserName,
      if (toAvatarPath != null) 'toAvatarPath': toAvatarPath,
      if (lastMsg != null) 'lastMsg': lastMsg,
      if (lastMsgType != null) 'lastMsgType': lastMsgType,
      if (latestTime != null) 'latestTime': latestTime,
    });
  }

  ConversationCompanion copyWith(
      {Value<int>? id,
      Value<String>? conversationId,
      Value<int>? conversationType,
      Value<String>? memberId,
      Value<int>? memberType,
      Value<String>? userId,
      Value<String?>? nickname,
      Value<String?>? avatarPath,
      Value<String?>? backgroundPath,
      Value<String?>? characterName,
      Value<String?>? toId,
      Value<String?>? toUserName,
      Value<String?>? toAvatarPath,
      Value<String?>? lastMsg,
      Value<String?>? lastMsgType,
      Value<String>? latestTime}) {
    return ConversationCompanion(
      id: id ?? this.id,
      conversationId: conversationId ?? this.conversationId,
      conversationType: conversationType ?? this.conversationType,
      memberId: memberId ?? this.memberId,
      memberType: memberType ?? this.memberType,
      userId: userId ?? this.userId,
      nickname: nickname ?? this.nickname,
      avatarPath: avatarPath ?? this.avatarPath,
      backgroundPath: backgroundPath ?? this.backgroundPath,
      characterName: characterName ?? this.characterName,
      toId: toId ?? this.toId,
      toUserName: toUserName ?? this.toUserName,
      toAvatarPath: toAvatarPath ?? this.toAvatarPath,
      lastMsg: lastMsg ?? this.lastMsg,
      lastMsgType: lastMsgType ?? this.lastMsgType,
      latestTime: latestTime ?? this.latestTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (conversationId.present) {
      map['conversationId'] = Variable<String>(conversationId.value);
    }
    if (conversationType.present) {
      map['conversationType'] = Variable<int>(conversationType.value);
    }
    if (memberId.present) {
      map['memberId'] = Variable<String>(memberId.value);
    }
    if (memberType.present) {
      map['memberType'] = Variable<int>(memberType.value);
    }
    if (userId.present) {
      map['userId'] = Variable<String>(userId.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (avatarPath.present) {
      map['avatarPath'] = Variable<String>(avatarPath.value);
    }
    if (backgroundPath.present) {
      map['backgroundPath'] = Variable<String>(backgroundPath.value);
    }
    if (characterName.present) {
      map['characterName'] = Variable<String>(characterName.value);
    }
    if (toId.present) {
      map['toId'] = Variable<String>(toId.value);
    }
    if (toUserName.present) {
      map['toUserName'] = Variable<String>(toUserName.value);
    }
    if (toAvatarPath.present) {
      map['toAvatarPath'] = Variable<String>(toAvatarPath.value);
    }
    if (lastMsg.present) {
      map['lastMsg'] = Variable<String>(lastMsg.value);
    }
    if (lastMsgType.present) {
      map['lastMsgType'] = Variable<String>(lastMsgType.value);
    }
    if (latestTime.present) {
      map['latestTime'] = Variable<String>(latestTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConversationCompanion(')
          ..write('id: $id, ')
          ..write('conversationId: $conversationId, ')
          ..write('conversationType: $conversationType, ')
          ..write('memberId: $memberId, ')
          ..write('memberType: $memberType, ')
          ..write('userId: $userId, ')
          ..write('nickname: $nickname, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('backgroundPath: $backgroundPath, ')
          ..write('characterName: $characterName, ')
          ..write('toId: $toId, ')
          ..write('toUserName: $toUserName, ')
          ..write('toAvatarPath: $toAvatarPath, ')
          ..write('lastMsg: $lastMsg, ')
          ..write('lastMsgType: $lastMsgType, ')
          ..write('latestTime: $latestTime')
          ..write(')'))
        .toString();
  }
}

class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _uniqueIdMeta =
      const VerificationMeta('uniqueId');
  @override
  late final GeneratedColumn<String> uniqueId = GeneratedColumn<String>(
      'unique_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _interestsMeta =
      const VerificationMeta('interests');
  @override
  late final GeneratedColumn<Uint8List> interests = GeneratedColumn<Uint8List>(
      'interests', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _birthdayMeta =
      const VerificationMeta('birthday');
  @override
  late final GeneratedColumn<String> birthday = GeneratedColumn<String>(
      'birthday', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _avatarPathMeta =
      const VerificationMeta('avatarPath');
  @override
  late final GeneratedColumn<String> avatarPath = GeneratedColumn<String>(
      'avatar_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _personalSignatureMeta =
      const VerificationMeta('personalSignature');
  @override
  late final GeneratedColumn<String> personalSignature =
      GeneratedColumn<String>('personal_signature', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _characterNumberCreatedMeta =
      const VerificationMeta('characterNumberCreated');
  @override
  late final GeneratedColumn<int> characterNumberCreated = GeneratedColumn<int>(
      'character_number_created', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _characterNumberMaxMeta =
      const VerificationMeta('characterNumberMax');
  @override
  late final GeneratedColumn<int> characterNumberMax = GeneratedColumn<int>(
      'character_number_max', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(2));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        nickname,
        username,
        password,
        uniqueId,
        interests,
        gender,
        birthday,
        avatarPath,
        personalSignature,
        characterNumberCreated,
        characterNumberMax
      ];
  @override
  String get aliasedName => _alias ?? 'user';
  @override
  String get actualTableName => 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('unique_id')) {
      context.handle(_uniqueIdMeta,
          uniqueId.isAcceptableOrUnknown(data['unique_id']!, _uniqueIdMeta));
    } else if (isInserting) {
      context.missing(_uniqueIdMeta);
    }
    if (data.containsKey('interests')) {
      context.handle(_interestsMeta,
          interests.isAcceptableOrUnknown(data['interests']!, _interestsMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    }
    if (data.containsKey('birthday')) {
      context.handle(_birthdayMeta,
          birthday.isAcceptableOrUnknown(data['birthday']!, _birthdayMeta));
    }
    if (data.containsKey('avatar_path')) {
      context.handle(
          _avatarPathMeta,
          avatarPath.isAcceptableOrUnknown(
              data['avatar_path']!, _avatarPathMeta));
    }
    if (data.containsKey('personal_signature')) {
      context.handle(
          _personalSignatureMeta,
          personalSignature.isAcceptableOrUnknown(
              data['personal_signature']!, _personalSignatureMeta));
    }
    if (data.containsKey('character_number_created')) {
      context.handle(
          _characterNumberCreatedMeta,
          characterNumberCreated.isAcceptableOrUnknown(
              data['character_number_created']!, _characterNumberCreatedMeta));
    }
    if (data.containsKey('character_number_max')) {
      context.handle(
          _characterNumberMaxMeta,
          characterNumberMax.isAcceptableOrUnknown(
              data['character_number_max']!, _characterNumberMaxMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      uniqueId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unique_id'])!,
      interests: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}interests']),
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender']),
      birthday: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}birthday']),
      avatarPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar_path']),
      personalSignature: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}personal_signature']),
      characterNumberCreated: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}character_number_created'])!,
      characterNumberMax: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}character_number_max'])!,
    );
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }
}

class UserData extends DataClass implements Insertable<UserData> {
  final int id;
  final String nickname;
  final String username;
  final String password;
  final String uniqueId;
  final Uint8List? interests;
  final String? gender;
  final String? birthday;
  final String? avatarPath;
  final String? personalSignature;
  final int characterNumberCreated;
  final int characterNumberMax;
  const UserData(
      {required this.id,
      required this.nickname,
      required this.username,
      required this.password,
      required this.uniqueId,
      this.interests,
      this.gender,
      this.birthday,
      this.avatarPath,
      this.personalSignature,
      required this.characterNumberCreated,
      required this.characterNumberMax});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nickname'] = Variable<String>(nickname);
    map['username'] = Variable<String>(username);
    map['password'] = Variable<String>(password);
    map['unique_id'] = Variable<String>(uniqueId);
    if (!nullToAbsent || interests != null) {
      map['interests'] = Variable<Uint8List>(interests);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    if (!nullToAbsent || birthday != null) {
      map['birthday'] = Variable<String>(birthday);
    }
    if (!nullToAbsent || avatarPath != null) {
      map['avatar_path'] = Variable<String>(avatarPath);
    }
    if (!nullToAbsent || personalSignature != null) {
      map['personal_signature'] = Variable<String>(personalSignature);
    }
    map['character_number_created'] = Variable<int>(characterNumberCreated);
    map['character_number_max'] = Variable<int>(characterNumberMax);
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      nickname: Value(nickname),
      username: Value(username),
      password: Value(password),
      uniqueId: Value(uniqueId),
      interests: interests == null && nullToAbsent
          ? const Value.absent()
          : Value(interests),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      birthday: birthday == null && nullToAbsent
          ? const Value.absent()
          : Value(birthday),
      avatarPath: avatarPath == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarPath),
      personalSignature: personalSignature == null && nullToAbsent
          ? const Value.absent()
          : Value(personalSignature),
      characterNumberCreated: Value(characterNumberCreated),
      characterNumberMax: Value(characterNumberMax),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<int>(json['id']),
      nickname: serializer.fromJson<String>(json['nickname']),
      username: serializer.fromJson<String>(json['username']),
      password: serializer.fromJson<String>(json['password']),
      uniqueId: serializer.fromJson<String>(json['uniqueId']),
      interests: serializer.fromJson<Uint8List?>(json['interests']),
      gender: serializer.fromJson<String?>(json['gender']),
      birthday: serializer.fromJson<String?>(json['birthday']),
      avatarPath: serializer.fromJson<String?>(json['avatarPath']),
      personalSignature:
          serializer.fromJson<String?>(json['personalSignature']),
      characterNumberCreated:
          serializer.fromJson<int>(json['characterNumberCreated']),
      characterNumberMax: serializer.fromJson<int>(json['characterNumberMax']),
    );
  }
  factory UserData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      UserData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nickname': serializer.toJson<String>(nickname),
      'username': serializer.toJson<String>(username),
      'password': serializer.toJson<String>(password),
      'uniqueId': serializer.toJson<String>(uniqueId),
      'interests': serializer.toJson<Uint8List?>(interests),
      'gender': serializer.toJson<String?>(gender),
      'birthday': serializer.toJson<String?>(birthday),
      'avatarPath': serializer.toJson<String?>(avatarPath),
      'personalSignature': serializer.toJson<String?>(personalSignature),
      'characterNumberCreated': serializer.toJson<int>(characterNumberCreated),
      'characterNumberMax': serializer.toJson<int>(characterNumberMax),
    };
  }

  UserData copyWith(
          {int? id,
          String? nickname,
          String? username,
          String? password,
          String? uniqueId,
          Value<Uint8List?> interests = const Value.absent(),
          Value<String?> gender = const Value.absent(),
          Value<String?> birthday = const Value.absent(),
          Value<String?> avatarPath = const Value.absent(),
          Value<String?> personalSignature = const Value.absent(),
          int? characterNumberCreated,
          int? characterNumberMax}) =>
      UserData(
        id: id ?? this.id,
        nickname: nickname ?? this.nickname,
        username: username ?? this.username,
        password: password ?? this.password,
        uniqueId: uniqueId ?? this.uniqueId,
        interests: interests.present ? interests.value : this.interests,
        gender: gender.present ? gender.value : this.gender,
        birthday: birthday.present ? birthday.value : this.birthday,
        avatarPath: avatarPath.present ? avatarPath.value : this.avatarPath,
        personalSignature: personalSignature.present
            ? personalSignature.value
            : this.personalSignature,
        characterNumberCreated:
            characterNumberCreated ?? this.characterNumberCreated,
        characterNumberMax: characterNumberMax ?? this.characterNumberMax,
      );
  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('nickname: $nickname, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('uniqueId: $uniqueId, ')
          ..write('interests: $interests, ')
          ..write('gender: $gender, ')
          ..write('birthday: $birthday, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('personalSignature: $personalSignature, ')
          ..write('characterNumberCreated: $characterNumberCreated, ')
          ..write('characterNumberMax: $characterNumberMax')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      nickname,
      username,
      password,
      uniqueId,
      $driftBlobEquality.hash(interests),
      gender,
      birthday,
      avatarPath,
      personalSignature,
      characterNumberCreated,
      characterNumberMax);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.nickname == this.nickname &&
          other.username == this.username &&
          other.password == this.password &&
          other.uniqueId == this.uniqueId &&
          $driftBlobEquality.equals(other.interests, this.interests) &&
          other.gender == this.gender &&
          other.birthday == this.birthday &&
          other.avatarPath == this.avatarPath &&
          other.personalSignature == this.personalSignature &&
          other.characterNumberCreated == this.characterNumberCreated &&
          other.characterNumberMax == this.characterNumberMax);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<int> id;
  final Value<String> nickname;
  final Value<String> username;
  final Value<String> password;
  final Value<String> uniqueId;
  final Value<Uint8List?> interests;
  final Value<String?> gender;
  final Value<String?> birthday;
  final Value<String?> avatarPath;
  final Value<String?> personalSignature;
  final Value<int> characterNumberCreated;
  final Value<int> characterNumberMax;
  final Value<int> rowid;
  const UserCompanion({
    this.id = const Value.absent(),
    this.nickname = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
    this.uniqueId = const Value.absent(),
    this.interests = const Value.absent(),
    this.gender = const Value.absent(),
    this.birthday = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.personalSignature = const Value.absent(),
    this.characterNumberCreated = const Value.absent(),
    this.characterNumberMax = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserCompanion.insert({
    required int id,
    required String nickname,
    required String username,
    required String password,
    required String uniqueId,
    this.interests = const Value.absent(),
    this.gender = const Value.absent(),
    this.birthday = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.personalSignature = const Value.absent(),
    this.characterNumberCreated = const Value.absent(),
    this.characterNumberMax = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        nickname = Value(nickname),
        username = Value(username),
        password = Value(password),
        uniqueId = Value(uniqueId);
  static Insertable<UserData> custom({
    Expression<int>? id,
    Expression<String>? nickname,
    Expression<String>? username,
    Expression<String>? password,
    Expression<String>? uniqueId,
    Expression<Uint8List>? interests,
    Expression<String>? gender,
    Expression<String>? birthday,
    Expression<String>? avatarPath,
    Expression<String>? personalSignature,
    Expression<int>? characterNumberCreated,
    Expression<int>? characterNumberMax,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nickname != null) 'nickname': nickname,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (uniqueId != null) 'unique_id': uniqueId,
      if (interests != null) 'interests': interests,
      if (gender != null) 'gender': gender,
      if (birthday != null) 'birthday': birthday,
      if (avatarPath != null) 'avatar_path': avatarPath,
      if (personalSignature != null) 'personal_signature': personalSignature,
      if (characterNumberCreated != null)
        'character_number_created': characterNumberCreated,
      if (characterNumberMax != null)
        'character_number_max': characterNumberMax,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserCompanion copyWith(
      {Value<int>? id,
      Value<String>? nickname,
      Value<String>? username,
      Value<String>? password,
      Value<String>? uniqueId,
      Value<Uint8List?>? interests,
      Value<String?>? gender,
      Value<String?>? birthday,
      Value<String?>? avatarPath,
      Value<String?>? personalSignature,
      Value<int>? characterNumberCreated,
      Value<int>? characterNumberMax,
      Value<int>? rowid}) {
    return UserCompanion(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      username: username ?? this.username,
      password: password ?? this.password,
      uniqueId: uniqueId ?? this.uniqueId,
      interests: interests ?? this.interests,
      gender: gender ?? this.gender,
      birthday: birthday ?? this.birthday,
      avatarPath: avatarPath ?? this.avatarPath,
      personalSignature: personalSignature ?? this.personalSignature,
      characterNumberCreated:
          characterNumberCreated ?? this.characterNumberCreated,
      characterNumberMax: characterNumberMax ?? this.characterNumberMax,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (uniqueId.present) {
      map['unique_id'] = Variable<String>(uniqueId.value);
    }
    if (interests.present) {
      map['interests'] = Variable<Uint8List>(interests.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (birthday.present) {
      map['birthday'] = Variable<String>(birthday.value);
    }
    if (avatarPath.present) {
      map['avatar_path'] = Variable<String>(avatarPath.value);
    }
    if (personalSignature.present) {
      map['personal_signature'] = Variable<String>(personalSignature.value);
    }
    if (characterNumberCreated.present) {
      map['character_number_created'] =
          Variable<int>(characterNumberCreated.value);
    }
    if (characterNumberMax.present) {
      map['character_number_max'] = Variable<int>(characterNumberMax.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('nickname: $nickname, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('uniqueId: $uniqueId, ')
          ..write('interests: $interests, ')
          ..write('gender: $gender, ')
          ..write('birthday: $birthday, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('personalSignature: $personalSignature, ')
          ..write('characterNumberCreated: $characterNumberCreated, ')
          ..write('characterNumberMax: $characterNumberMax, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $MessageTable message = $MessageTable(this);
  late final $CharacterTable character = $CharacterTable(this);
  late final $ConversationTable conversation = $ConversationTable(this);
  late final $UserTable user = $UserTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [message, character, conversation, user];
}
