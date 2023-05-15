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
  static const VerificationMeta _userUniqueIdMeta =
      const VerificationMeta('userUniqueId');
  @override
  late final GeneratedColumn<String> userUniqueId = GeneratedColumn<String>(
      'user_unique_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _characterIdMeta =
      const VerificationMeta('characterId');
  @override
  late final GeneratedColumn<int> characterId = GeneratedColumn<int>(
      'character_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userMessageMeta =
      const VerificationMeta('userMessage');
  @override
  late final GeneratedColumn<String> userMessage = GeneratedColumn<String>(
      'user_message', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _aiMessageMeta =
      const VerificationMeta('aiMessage');
  @override
  late final GeneratedColumn<String> aiMessage = GeneratedColumn<String>(
      'ai_message', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timestatmpMeta =
      const VerificationMeta('timestatmp');
  @override
  late final GeneratedColumn<DateTime> timestatmp = GeneratedColumn<DateTime>(
      'timestatmp', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _gradeMeta = const VerificationMeta('grade');
  @override
  late final GeneratedColumn<String> grade = GeneratedColumn<String>(
      'grade', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userUniqueId,
        characterId,
        userMessage,
        aiMessage,
        timestatmp,
        grade
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
    if (data.containsKey('user_unique_id')) {
      context.handle(
          _userUniqueIdMeta,
          userUniqueId.isAcceptableOrUnknown(
              data['user_unique_id']!, _userUniqueIdMeta));
    } else if (isInserting) {
      context.missing(_userUniqueIdMeta);
    }
    if (data.containsKey('character_id')) {
      context.handle(
          _characterIdMeta,
          characterId.isAcceptableOrUnknown(
              data['character_id']!, _characterIdMeta));
    } else if (isInserting) {
      context.missing(_characterIdMeta);
    }
    if (data.containsKey('user_message')) {
      context.handle(
          _userMessageMeta,
          userMessage.isAcceptableOrUnknown(
              data['user_message']!, _userMessageMeta));
    } else if (isInserting) {
      context.missing(_userMessageMeta);
    }
    if (data.containsKey('ai_message')) {
      context.handle(_aiMessageMeta,
          aiMessage.isAcceptableOrUnknown(data['ai_message']!, _aiMessageMeta));
    } else if (isInserting) {
      context.missing(_aiMessageMeta);
    }
    if (data.containsKey('timestatmp')) {
      context.handle(
          _timestatmpMeta,
          timestatmp.isAcceptableOrUnknown(
              data['timestatmp']!, _timestatmpMeta));
    } else if (isInserting) {
      context.missing(_timestatmpMeta);
    }
    if (data.containsKey('grade')) {
      context.handle(
          _gradeMeta, grade.isAcceptableOrUnknown(data['grade']!, _gradeMeta));
    } else if (isInserting) {
      context.missing(_gradeMeta);
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
      userUniqueId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_unique_id'])!,
      characterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}character_id'])!,
      userMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_message'])!,
      aiMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ai_message'])!,
      timestatmp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestatmp'])!,
      grade: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}grade'])!,
    );
  }

  @override
  $MessageTable createAlias(String alias) {
    return $MessageTable(attachedDatabase, alias);
  }
}

class MessageData extends DataClass implements Insertable<MessageData> {
  final int id;
  final String userUniqueId;
  final int characterId;
  final String userMessage;
  final String aiMessage;
  final DateTime timestatmp;
  final String grade;
  const MessageData(
      {required this.id,
      required this.userUniqueId,
      required this.characterId,
      required this.userMessage,
      required this.aiMessage,
      required this.timestatmp,
      required this.grade});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_unique_id'] = Variable<String>(userUniqueId);
    map['character_id'] = Variable<int>(characterId);
    map['user_message'] = Variable<String>(userMessage);
    map['ai_message'] = Variable<String>(aiMessage);
    map['timestatmp'] = Variable<DateTime>(timestatmp);
    map['grade'] = Variable<String>(grade);
    return map;
  }

  MessageCompanion toCompanion(bool nullToAbsent) {
    return MessageCompanion(
      id: Value(id),
      userUniqueId: Value(userUniqueId),
      characterId: Value(characterId),
      userMessage: Value(userMessage),
      aiMessage: Value(aiMessage),
      timestatmp: Value(timestatmp),
      grade: Value(grade),
    );
  }

  factory MessageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MessageData(
      id: serializer.fromJson<int>(json['id']),
      userUniqueId: serializer.fromJson<String>(json['userUniqueId']),
      characterId: serializer.fromJson<int>(json['characterId']),
      userMessage: serializer.fromJson<String>(json['userMessage']),
      aiMessage: serializer.fromJson<String>(json['aiMessage']),
      timestatmp: serializer.fromJson<DateTime>(json['timestatmp']),
      grade: serializer.fromJson<String>(json['grade']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userUniqueId': serializer.toJson<String>(userUniqueId),
      'characterId': serializer.toJson<int>(characterId),
      'userMessage': serializer.toJson<String>(userMessage),
      'aiMessage': serializer.toJson<String>(aiMessage),
      'timestatmp': serializer.toJson<DateTime>(timestatmp),
      'grade': serializer.toJson<String>(grade),
    };
  }

  MessageData copyWith(
          {int? id,
          String? userUniqueId,
          int? characterId,
          String? userMessage,
          String? aiMessage,
          DateTime? timestatmp,
          String? grade}) =>
      MessageData(
        id: id ?? this.id,
        userUniqueId: userUniqueId ?? this.userUniqueId,
        characterId: characterId ?? this.characterId,
        userMessage: userMessage ?? this.userMessage,
        aiMessage: aiMessage ?? this.aiMessage,
        timestatmp: timestatmp ?? this.timestatmp,
        grade: grade ?? this.grade,
      );
  @override
  String toString() {
    return (StringBuffer('MessageData(')
          ..write('id: $id, ')
          ..write('userUniqueId: $userUniqueId, ')
          ..write('characterId: $characterId, ')
          ..write('userMessage: $userMessage, ')
          ..write('aiMessage: $aiMessage, ')
          ..write('timestatmp: $timestatmp, ')
          ..write('grade: $grade')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, userUniqueId, characterId, userMessage, aiMessage, timestatmp, grade);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MessageData &&
          other.id == this.id &&
          other.userUniqueId == this.userUniqueId &&
          other.characterId == this.characterId &&
          other.userMessage == this.userMessage &&
          other.aiMessage == this.aiMessage &&
          other.timestatmp == this.timestatmp &&
          other.grade == this.grade);
}

class MessageCompanion extends UpdateCompanion<MessageData> {
  final Value<int> id;
  final Value<String> userUniqueId;
  final Value<int> characterId;
  final Value<String> userMessage;
  final Value<String> aiMessage;
  final Value<DateTime> timestatmp;
  final Value<String> grade;
  const MessageCompanion({
    this.id = const Value.absent(),
    this.userUniqueId = const Value.absent(),
    this.characterId = const Value.absent(),
    this.userMessage = const Value.absent(),
    this.aiMessage = const Value.absent(),
    this.timestatmp = const Value.absent(),
    this.grade = const Value.absent(),
  });
  MessageCompanion.insert({
    this.id = const Value.absent(),
    required String userUniqueId,
    required int characterId,
    required String userMessage,
    required String aiMessage,
    required DateTime timestatmp,
    required String grade,
  })  : userUniqueId = Value(userUniqueId),
        characterId = Value(characterId),
        userMessage = Value(userMessage),
        aiMessage = Value(aiMessage),
        timestatmp = Value(timestatmp),
        grade = Value(grade);
  static Insertable<MessageData> custom({
    Expression<int>? id,
    Expression<String>? userUniqueId,
    Expression<int>? characterId,
    Expression<String>? userMessage,
    Expression<String>? aiMessage,
    Expression<DateTime>? timestatmp,
    Expression<String>? grade,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userUniqueId != null) 'user_unique_id': userUniqueId,
      if (characterId != null) 'character_id': characterId,
      if (userMessage != null) 'user_message': userMessage,
      if (aiMessage != null) 'ai_message': aiMessage,
      if (timestatmp != null) 'timestatmp': timestatmp,
      if (grade != null) 'grade': grade,
    });
  }

  MessageCompanion copyWith(
      {Value<int>? id,
      Value<String>? userUniqueId,
      Value<int>? characterId,
      Value<String>? userMessage,
      Value<String>? aiMessage,
      Value<DateTime>? timestatmp,
      Value<String>? grade}) {
    return MessageCompanion(
      id: id ?? this.id,
      userUniqueId: userUniqueId ?? this.userUniqueId,
      characterId: characterId ?? this.characterId,
      userMessage: userMessage ?? this.userMessage,
      aiMessage: aiMessage ?? this.aiMessage,
      timestatmp: timestatmp ?? this.timestatmp,
      grade: grade ?? this.grade,
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
    if (characterId.present) {
      map['character_id'] = Variable<int>(characterId.value);
    }
    if (userMessage.present) {
      map['user_message'] = Variable<String>(userMessage.value);
    }
    if (aiMessage.present) {
      map['ai_message'] = Variable<String>(aiMessage.value);
    }
    if (timestatmp.present) {
      map['timestatmp'] = Variable<DateTime>(timestatmp.value);
    }
    if (grade.present) {
      map['grade'] = Variable<String>(grade.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MessageCompanion(')
          ..write('id: $id, ')
          ..write('userUniqueId: $userUniqueId, ')
          ..write('characterId: $characterId, ')
          ..write('userMessage: $userMessage, ')
          ..write('aiMessage: $aiMessage, ')
          ..write('timestatmp: $timestatmp, ')
          ..write('grade: $grade')
          ..write(')'))
        .toString();
  }
}

class $ChatItemTable extends ChatItem
    with TableInfo<$ChatItemTable, ChatItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChatItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<String> avatar = GeneratedColumn<String>(
      'avatar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
      'role', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastMsgMeta =
      const VerificationMeta('lastMsg');
  @override
  late final GeneratedColumn<String> lastMsg = GeneratedColumn<String>(
      'lastMsg', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _characterNameMeta =
      const VerificationMeta('characterName');
  @override
  late final GeneratedColumn<String> characterName = GeneratedColumn<String>(
      'characterName', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, avatar, role, lastMsg, date, characterName];
  @override
  String get aliasedName => _alias ?? 'chat_item';
  @override
  String get actualTableName => 'chat_item';
  @override
  VerificationContext validateIntegrity(Insertable<ChatItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
          _roleMeta, role.isAcceptableOrUnknown(data['role']!, _roleMeta));
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('lastMsg')) {
      context.handle(_lastMsgMeta,
          lastMsg.isAcceptableOrUnknown(data['lastMsg']!, _lastMsgMeta));
    } else if (isInserting) {
      context.missing(_lastMsgMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('characterName')) {
      context.handle(
          _characterNameMeta,
          characterName.isAcceptableOrUnknown(
              data['characterName']!, _characterNameMeta));
    } else if (isInserting) {
      context.missing(_characterNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChatItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChatItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar'])!,
      role: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}role'])!,
      lastMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lastMsg'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      characterName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}characterName'])!,
    );
  }

  @override
  $ChatItemTable createAlias(String alias) {
    return $ChatItemTable(attachedDatabase, alias);
  }
}

class ChatItemData extends DataClass implements Insertable<ChatItemData> {
  final int id;
  final String avatar;
  final String role;
  final String lastMsg;
  final String date;
  final String characterName;
  const ChatItemData(
      {required this.id,
      required this.avatar,
      required this.role,
      required this.lastMsg,
      required this.date,
      required this.characterName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['avatar'] = Variable<String>(avatar);
    map['role'] = Variable<String>(role);
    map['lastMsg'] = Variable<String>(lastMsg);
    map['date'] = Variable<String>(date);
    map['characterName'] = Variable<String>(characterName);
    return map;
  }

  ChatItemCompanion toCompanion(bool nullToAbsent) {
    return ChatItemCompanion(
      id: Value(id),
      avatar: Value(avatar),
      role: Value(role),
      lastMsg: Value(lastMsg),
      date: Value(date),
      characterName: Value(characterName),
    );
  }

  factory ChatItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChatItemData(
      id: serializer.fromJson<int>(json['id']),
      avatar: serializer.fromJson<String>(json['avatar']),
      role: serializer.fromJson<String>(json['role']),
      lastMsg: serializer.fromJson<String>(json['lastMsg']),
      date: serializer.fromJson<String>(json['date']),
      characterName: serializer.fromJson<String>(json['characterName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'avatar': serializer.toJson<String>(avatar),
      'role': serializer.toJson<String>(role),
      'lastMsg': serializer.toJson<String>(lastMsg),
      'date': serializer.toJson<String>(date),
      'characterName': serializer.toJson<String>(characterName),
    };
  }

  ChatItemData copyWith(
          {int? id,
          String? avatar,
          String? role,
          String? lastMsg,
          String? date,
          String? characterName}) =>
      ChatItemData(
        id: id ?? this.id,
        avatar: avatar ?? this.avatar,
        role: role ?? this.role,
        lastMsg: lastMsg ?? this.lastMsg,
        date: date ?? this.date,
        characterName: characterName ?? this.characterName,
      );
  @override
  String toString() {
    return (StringBuffer('ChatItemData(')
          ..write('id: $id, ')
          ..write('avatar: $avatar, ')
          ..write('role: $role, ')
          ..write('lastMsg: $lastMsg, ')
          ..write('date: $date, ')
          ..write('characterName: $characterName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, avatar, role, lastMsg, date, characterName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChatItemData &&
          other.id == this.id &&
          other.avatar == this.avatar &&
          other.role == this.role &&
          other.lastMsg == this.lastMsg &&
          other.date == this.date &&
          other.characterName == this.characterName);
}

class ChatItemCompanion extends UpdateCompanion<ChatItemData> {
  final Value<int> id;
  final Value<String> avatar;
  final Value<String> role;
  final Value<String> lastMsg;
  final Value<String> date;
  final Value<String> characterName;
  const ChatItemCompanion({
    this.id = const Value.absent(),
    this.avatar = const Value.absent(),
    this.role = const Value.absent(),
    this.lastMsg = const Value.absent(),
    this.date = const Value.absent(),
    this.characterName = const Value.absent(),
  });
  ChatItemCompanion.insert({
    this.id = const Value.absent(),
    required String avatar,
    required String role,
    required String lastMsg,
    required String date,
    required String characterName,
  })  : avatar = Value(avatar),
        role = Value(role),
        lastMsg = Value(lastMsg),
        date = Value(date),
        characterName = Value(characterName);
  static Insertable<ChatItemData> custom({
    Expression<int>? id,
    Expression<String>? avatar,
    Expression<String>? role,
    Expression<String>? lastMsg,
    Expression<String>? date,
    Expression<String>? characterName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (avatar != null) 'avatar': avatar,
      if (role != null) 'role': role,
      if (lastMsg != null) 'lastMsg': lastMsg,
      if (date != null) 'date': date,
      if (characterName != null) 'characterName': characterName,
    });
  }

  ChatItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? avatar,
      Value<String>? role,
      Value<String>? lastMsg,
      Value<String>? date,
      Value<String>? characterName}) {
    return ChatItemCompanion(
      id: id ?? this.id,
      avatar: avatar ?? this.avatar,
      role: role ?? this.role,
      lastMsg: lastMsg ?? this.lastMsg,
      date: date ?? this.date,
      characterName: characterName ?? this.characterName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<String>(avatar.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (lastMsg.present) {
      map['lastMsg'] = Variable<String>(lastMsg.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (characterName.present) {
      map['characterName'] = Variable<String>(characterName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChatItemCompanion(')
          ..write('id: $id, ')
          ..write('avatar: $avatar, ')
          ..write('role: $role, ')
          ..write('lastMsg: $lastMsg, ')
          ..write('date: $date, ')
          ..write('characterName: $characterName')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $MessageTable message = $MessageTable(this);
  late final $ChatItemTable chatItem = $ChatItemTable(this);
  late final MessageDao messageDao = MessageDao(this as MyDatabase);
  late final ChatItemDao chatItemDao = ChatItemDao(this as MyDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [message, chatItem];
}
