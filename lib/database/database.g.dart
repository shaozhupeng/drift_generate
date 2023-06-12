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
  static const VerificationMeta _avatarLocalPathMeta =
      const VerificationMeta('avatarLocalPath');
  @override
  late final GeneratedColumn<String> avatarLocalPath = GeneratedColumn<String>(
      'avatarLocalPath', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, avatar, role, lastMsg, date, characterName, avatarLocalPath];
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
    if (data.containsKey('avatarLocalPath')) {
      context.handle(
          _avatarLocalPathMeta,
          avatarLocalPath.isAcceptableOrUnknown(
              data['avatarLocalPath']!, _avatarLocalPathMeta));
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
      avatarLocalPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatarLocalPath']),
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
  final String? avatarLocalPath;
  const ChatItemData(
      {required this.id,
      required this.avatar,
      required this.role,
      required this.lastMsg,
      required this.date,
      required this.characterName,
      this.avatarLocalPath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['avatar'] = Variable<String>(avatar);
    map['role'] = Variable<String>(role);
    map['lastMsg'] = Variable<String>(lastMsg);
    map['date'] = Variable<String>(date);
    map['characterName'] = Variable<String>(characterName);
    if (!nullToAbsent || avatarLocalPath != null) {
      map['avatarLocalPath'] = Variable<String>(avatarLocalPath);
    }
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
      avatarLocalPath: avatarLocalPath == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarLocalPath),
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
      avatarLocalPath: serializer.fromJson<String?>(json['avatarLocalPath']),
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
      'avatarLocalPath': serializer.toJson<String?>(avatarLocalPath),
    };
  }

  ChatItemData copyWith(
          {int? id,
          String? avatar,
          String? role,
          String? lastMsg,
          String? date,
          String? characterName,
          Value<String?> avatarLocalPath = const Value.absent()}) =>
      ChatItemData(
        id: id ?? this.id,
        avatar: avatar ?? this.avatar,
        role: role ?? this.role,
        lastMsg: lastMsg ?? this.lastMsg,
        date: date ?? this.date,
        characterName: characterName ?? this.characterName,
        avatarLocalPath: avatarLocalPath.present
            ? avatarLocalPath.value
            : this.avatarLocalPath,
      );
  @override
  String toString() {
    return (StringBuffer('ChatItemData(')
          ..write('id: $id, ')
          ..write('avatar: $avatar, ')
          ..write('role: $role, ')
          ..write('lastMsg: $lastMsg, ')
          ..write('date: $date, ')
          ..write('characterName: $characterName, ')
          ..write('avatarLocalPath: $avatarLocalPath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, avatar, role, lastMsg, date, characterName, avatarLocalPath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChatItemData &&
          other.id == this.id &&
          other.avatar == this.avatar &&
          other.role == this.role &&
          other.lastMsg == this.lastMsg &&
          other.date == this.date &&
          other.characterName == this.characterName &&
          other.avatarLocalPath == this.avatarLocalPath);
}

class ChatItemCompanion extends UpdateCompanion<ChatItemData> {
  final Value<int> id;
  final Value<String> avatar;
  final Value<String> role;
  final Value<String> lastMsg;
  final Value<String> date;
  final Value<String> characterName;
  final Value<String?> avatarLocalPath;
  const ChatItemCompanion({
    this.id = const Value.absent(),
    this.avatar = const Value.absent(),
    this.role = const Value.absent(),
    this.lastMsg = const Value.absent(),
    this.date = const Value.absent(),
    this.characterName = const Value.absent(),
    this.avatarLocalPath = const Value.absent(),
  });
  ChatItemCompanion.insert({
    this.id = const Value.absent(),
    required String avatar,
    required String role,
    required String lastMsg,
    required String date,
    required String characterName,
    this.avatarLocalPath = const Value.absent(),
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
    Expression<String>? avatarLocalPath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (avatar != null) 'avatar': avatar,
      if (role != null) 'role': role,
      if (lastMsg != null) 'lastMsg': lastMsg,
      if (date != null) 'date': date,
      if (characterName != null) 'characterName': characterName,
      if (avatarLocalPath != null) 'avatarLocalPath': avatarLocalPath,
    });
  }

  ChatItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? avatar,
      Value<String>? role,
      Value<String>? lastMsg,
      Value<String>? date,
      Value<String>? characterName,
      Value<String?>? avatarLocalPath}) {
    return ChatItemCompanion(
      id: id ?? this.id,
      avatar: avatar ?? this.avatar,
      role: role ?? this.role,
      lastMsg: lastMsg ?? this.lastMsg,
      date: date ?? this.date,
      characterName: characterName ?? this.characterName,
      avatarLocalPath: avatarLocalPath ?? this.avatarLocalPath,
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
    if (avatarLocalPath.present) {
      map['avatarLocalPath'] = Variable<String>(avatarLocalPath.value);
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
          ..write('characterName: $characterName, ')
          ..write('avatarLocalPath: $avatarLocalPath')
          ..write(')'))
        .toString();
  }
}

class $CharactersTable extends Characters
    with TableInfo<$CharactersTable, Character> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharactersTable(this.attachedDatabase, [this._alias]);
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
  String get aliasedName => _alias ?? 'characters';
  @override
  String get actualTableName => 'characters';
  @override
  VerificationContext validateIntegrity(Insertable<Character> instance,
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
  Character map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Character(
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
  $CharactersTable createAlias(String alias) {
    return $CharactersTable(attachedDatabase, alias);
  }
}

class Character extends DataClass implements Insertable<Character> {
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
  const Character(
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

  CharactersCompanion toCompanion(bool nullToAbsent) {
    return CharactersCompanion(
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

  factory Character.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Character(
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

  Character copyWith(
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
      Character(
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
    return (StringBuffer('Character(')
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
      (other is Character &&
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

class CharactersCompanion extends UpdateCompanion<Character> {
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
  const CharactersCompanion({
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
  CharactersCompanion.insert({
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
  static Insertable<Character> custom({
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

  CharactersCompanion copyWith(
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
    return CharactersCompanion(
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
    return (StringBuffer('CharactersCompanion(')
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

class $ChatHistoryTable extends ChatHistory
    with TableInfo<$ChatHistoryTable, ChatHistoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChatHistoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _msgIdMeta = const VerificationMeta('msgId');
  @override
  late final GeneratedColumn<String> msgId = GeneratedColumn<String>(
      'msg_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fromMeta = const VerificationMeta('from');
  @override
  late final GeneratedColumn<String> from = GeneratedColumn<String>(
      'from', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fromAvatarMeta =
      const VerificationMeta('fromAvatar');
  @override
  late final GeneratedColumn<String> fromAvatar = GeneratedColumn<String>(
      'from_avatar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fromNameMeta =
      const VerificationMeta('fromName');
  @override
  late final GeneratedColumn<String> fromName = GeneratedColumn<String>(
      'from_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _toMeta = const VerificationMeta('to');
  @override
  late final GeneratedColumn<String> to = GeneratedColumn<String>(
      'to', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _toAvatarMeta =
      const VerificationMeta('toAvatar');
  @override
  late final GeneratedColumn<String> toAvatar = GeneratedColumn<String>(
      'to_avatar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _toNameMeta = const VerificationMeta('toName');
  @override
  late final GeneratedColumn<String> toName = GeneratedColumn<String>(
      'to_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _chatTypeMeta =
      const VerificationMeta('chatType');
  @override
  late final GeneratedColumn<int> chatType = GeneratedColumn<int>(
      'chat_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _msgTypeMeta =
      const VerificationMeta('msgType');
  @override
  late final GeneratedColumn<int> msgType = GeneratedColumn<int>(
      'msg_type', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _msgMeta = const VerificationMeta('msg');
  @override
  late final GeneratedColumn<String> msg = GeneratedColumn<String>(
      'msg', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _msgInfoMeta =
      const VerificationMeta('msgInfo');
  @override
  late final GeneratedColumn<String> msgInfo = GeneratedColumn<String>(
      'msg_info', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sendTimeMeta =
      const VerificationMeta('sendTime');
  @override
  late final GeneratedColumn<DateTime> sendTime = GeneratedColumn<DateTime>(
      'send_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _sendStatusMeta =
      const VerificationMeta('sendStatus');
  @override
  late final GeneratedColumn<int> sendStatus = GeneratedColumn<int>(
      'send_status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sessionIdMeta =
      const VerificationMeta('sessionId');
  @override
  late final GeneratedColumn<int> sessionId = GeneratedColumn<int>(
      'session_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        msgId,
        from,
        fromAvatar,
        fromName,
        to,
        toAvatar,
        toName,
        chatType,
        msgType,
        msg,
        msgInfo,
        sendTime,
        sendStatus,
        sessionId
      ];
  @override
  String get aliasedName => _alias ?? 'chat_history';
  @override
  String get actualTableName => 'chat_history';
  @override
  VerificationContext validateIntegrity(Insertable<ChatHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('msg_id')) {
      context.handle(
          _msgIdMeta, msgId.isAcceptableOrUnknown(data['msg_id']!, _msgIdMeta));
    } else if (isInserting) {
      context.missing(_msgIdMeta);
    }
    if (data.containsKey('from')) {
      context.handle(
          _fromMeta, from.isAcceptableOrUnknown(data['from']!, _fromMeta));
    } else if (isInserting) {
      context.missing(_fromMeta);
    }
    if (data.containsKey('from_avatar')) {
      context.handle(
          _fromAvatarMeta,
          fromAvatar.isAcceptableOrUnknown(
              data['from_avatar']!, _fromAvatarMeta));
    } else if (isInserting) {
      context.missing(_fromAvatarMeta);
    }
    if (data.containsKey('from_name')) {
      context.handle(_fromNameMeta,
          fromName.isAcceptableOrUnknown(data['from_name']!, _fromNameMeta));
    } else if (isInserting) {
      context.missing(_fromNameMeta);
    }
    if (data.containsKey('to')) {
      context.handle(_toMeta, to.isAcceptableOrUnknown(data['to']!, _toMeta));
    } else if (isInserting) {
      context.missing(_toMeta);
    }
    if (data.containsKey('to_avatar')) {
      context.handle(_toAvatarMeta,
          toAvatar.isAcceptableOrUnknown(data['to_avatar']!, _toAvatarMeta));
    } else if (isInserting) {
      context.missing(_toAvatarMeta);
    }
    if (data.containsKey('to_name')) {
      context.handle(_toNameMeta,
          toName.isAcceptableOrUnknown(data['to_name']!, _toNameMeta));
    } else if (isInserting) {
      context.missing(_toNameMeta);
    }
    if (data.containsKey('chat_type')) {
      context.handle(_chatTypeMeta,
          chatType.isAcceptableOrUnknown(data['chat_type']!, _chatTypeMeta));
    } else if (isInserting) {
      context.missing(_chatTypeMeta);
    }
    if (data.containsKey('msg_type')) {
      context.handle(_msgTypeMeta,
          msgType.isAcceptableOrUnknown(data['msg_type']!, _msgTypeMeta));
    }
    if (data.containsKey('msg')) {
      context.handle(
          _msgMeta, msg.isAcceptableOrUnknown(data['msg']!, _msgMeta));
    } else if (isInserting) {
      context.missing(_msgMeta);
    }
    if (data.containsKey('msg_info')) {
      context.handle(_msgInfoMeta,
          msgInfo.isAcceptableOrUnknown(data['msg_info']!, _msgInfoMeta));
    }
    if (data.containsKey('send_time')) {
      context.handle(_sendTimeMeta,
          sendTime.isAcceptableOrUnknown(data['send_time']!, _sendTimeMeta));
    } else if (isInserting) {
      context.missing(_sendTimeMeta);
    }
    if (data.containsKey('send_status')) {
      context.handle(
          _sendStatusMeta,
          sendStatus.isAcceptableOrUnknown(
              data['send_status']!, _sendStatusMeta));
    } else if (isInserting) {
      context.missing(_sendStatusMeta);
    }
    if (data.containsKey('session_id')) {
      context.handle(_sessionIdMeta,
          sessionId.isAcceptableOrUnknown(data['session_id']!, _sessionIdMeta));
    } else if (isInserting) {
      context.missing(_sessionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChatHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChatHistoryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      msgId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}msg_id'])!,
      from: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}from'])!,
      fromAvatar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}from_avatar'])!,
      fromName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}from_name'])!,
      to: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}to'])!,
      toAvatar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}to_avatar'])!,
      toName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}to_name'])!,
      chatType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chat_type'])!,
      msgType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}msg_type'])!,
      msg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}msg'])!,
      msgInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}msg_info']),
      sendTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}send_time'])!,
      sendStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}send_status'])!,
      sessionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}session_id'])!,
    );
  }

  @override
  $ChatHistoryTable createAlias(String alias) {
    return $ChatHistoryTable(attachedDatabase, alias);
  }
}

class ChatHistoryData extends DataClass implements Insertable<ChatHistoryData> {
  /// 自增id
  final int id;

  /// 消息id
  final String msgId;
  final String from;

  /// 发送者头像
  final String fromAvatar;

  /// 发送者名称
  final String fromName;

  /// 接收者
  final String to;

  /// 接收者头像
  final String toAvatar;

  /// 接收者名称
  final String toName;
  final int chatType;

  /// 0: text, 1: image, 2: audio, 3: video, 4: file, 5: location, 6: contact, 7: link, 8: system
  final int msgType;

  /// 消息内容
  final String msg;

  /// 非文本消息内容
  final String? msgInfo;

  ///发送时间
  final DateTime sendTime;

  ///发送状态
  final int sendStatus;

  ///会话id
  final int sessionId;
  const ChatHistoryData(
      {required this.id,
      required this.msgId,
      required this.from,
      required this.fromAvatar,
      required this.fromName,
      required this.to,
      required this.toAvatar,
      required this.toName,
      required this.chatType,
      required this.msgType,
      required this.msg,
      this.msgInfo,
      required this.sendTime,
      required this.sendStatus,
      required this.sessionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['msg_id'] = Variable<String>(msgId);
    map['from'] = Variable<String>(from);
    map['from_avatar'] = Variable<String>(fromAvatar);
    map['from_name'] = Variable<String>(fromName);
    map['to'] = Variable<String>(to);
    map['to_avatar'] = Variable<String>(toAvatar);
    map['to_name'] = Variable<String>(toName);
    map['chat_type'] = Variable<int>(chatType);
    map['msg_type'] = Variable<int>(msgType);
    map['msg'] = Variable<String>(msg);
    if (!nullToAbsent || msgInfo != null) {
      map['msg_info'] = Variable<String>(msgInfo);
    }
    map['send_time'] = Variable<DateTime>(sendTime);
    map['send_status'] = Variable<int>(sendStatus);
    map['session_id'] = Variable<int>(sessionId);
    return map;
  }

  ChatHistoryCompanion toCompanion(bool nullToAbsent) {
    return ChatHistoryCompanion(
      id: Value(id),
      msgId: Value(msgId),
      from: Value(from),
      fromAvatar: Value(fromAvatar),
      fromName: Value(fromName),
      to: Value(to),
      toAvatar: Value(toAvatar),
      toName: Value(toName),
      chatType: Value(chatType),
      msgType: Value(msgType),
      msg: Value(msg),
      msgInfo: msgInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(msgInfo),
      sendTime: Value(sendTime),
      sendStatus: Value(sendStatus),
      sessionId: Value(sessionId),
    );
  }

  factory ChatHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChatHistoryData(
      id: serializer.fromJson<int>(json['id']),
      msgId: serializer.fromJson<String>(json['msgId']),
      from: serializer.fromJson<String>(json['from']),
      fromAvatar: serializer.fromJson<String>(json['fromAvatar']),
      fromName: serializer.fromJson<String>(json['fromName']),
      to: serializer.fromJson<String>(json['to']),
      toAvatar: serializer.fromJson<String>(json['toAvatar']),
      toName: serializer.fromJson<String>(json['toName']),
      chatType: serializer.fromJson<int>(json['chatType']),
      msgType: serializer.fromJson<int>(json['msgType']),
      msg: serializer.fromJson<String>(json['msg']),
      msgInfo: serializer.fromJson<String?>(json['msgInfo']),
      sendTime: serializer.fromJson<DateTime>(json['sendTime']),
      sendStatus: serializer.fromJson<int>(json['sendStatus']),
      sessionId: serializer.fromJson<int>(json['sessionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'msgId': serializer.toJson<String>(msgId),
      'from': serializer.toJson<String>(from),
      'fromAvatar': serializer.toJson<String>(fromAvatar),
      'fromName': serializer.toJson<String>(fromName),
      'to': serializer.toJson<String>(to),
      'toAvatar': serializer.toJson<String>(toAvatar),
      'toName': serializer.toJson<String>(toName),
      'chatType': serializer.toJson<int>(chatType),
      'msgType': serializer.toJson<int>(msgType),
      'msg': serializer.toJson<String>(msg),
      'msgInfo': serializer.toJson<String?>(msgInfo),
      'sendTime': serializer.toJson<DateTime>(sendTime),
      'sendStatus': serializer.toJson<int>(sendStatus),
      'sessionId': serializer.toJson<int>(sessionId),
    };
  }

  ChatHistoryData copyWith(
          {int? id,
          String? msgId,
          String? from,
          String? fromAvatar,
          String? fromName,
          String? to,
          String? toAvatar,
          String? toName,
          int? chatType,
          int? msgType,
          String? msg,
          Value<String?> msgInfo = const Value.absent(),
          DateTime? sendTime,
          int? sendStatus,
          int? sessionId}) =>
      ChatHistoryData(
        id: id ?? this.id,
        msgId: msgId ?? this.msgId,
        from: from ?? this.from,
        fromAvatar: fromAvatar ?? this.fromAvatar,
        fromName: fromName ?? this.fromName,
        to: to ?? this.to,
        toAvatar: toAvatar ?? this.toAvatar,
        toName: toName ?? this.toName,
        chatType: chatType ?? this.chatType,
        msgType: msgType ?? this.msgType,
        msg: msg ?? this.msg,
        msgInfo: msgInfo.present ? msgInfo.value : this.msgInfo,
        sendTime: sendTime ?? this.sendTime,
        sendStatus: sendStatus ?? this.sendStatus,
        sessionId: sessionId ?? this.sessionId,
      );
  @override
  String toString() {
    return (StringBuffer('ChatHistoryData(')
          ..write('id: $id, ')
          ..write('msgId: $msgId, ')
          ..write('from: $from, ')
          ..write('fromAvatar: $fromAvatar, ')
          ..write('fromName: $fromName, ')
          ..write('to: $to, ')
          ..write('toAvatar: $toAvatar, ')
          ..write('toName: $toName, ')
          ..write('chatType: $chatType, ')
          ..write('msgType: $msgType, ')
          ..write('msg: $msg, ')
          ..write('msgInfo: $msgInfo, ')
          ..write('sendTime: $sendTime, ')
          ..write('sendStatus: $sendStatus, ')
          ..write('sessionId: $sessionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      msgId,
      from,
      fromAvatar,
      fromName,
      to,
      toAvatar,
      toName,
      chatType,
      msgType,
      msg,
      msgInfo,
      sendTime,
      sendStatus,
      sessionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChatHistoryData &&
          other.id == this.id &&
          other.msgId == this.msgId &&
          other.from == this.from &&
          other.fromAvatar == this.fromAvatar &&
          other.fromName == this.fromName &&
          other.to == this.to &&
          other.toAvatar == this.toAvatar &&
          other.toName == this.toName &&
          other.chatType == this.chatType &&
          other.msgType == this.msgType &&
          other.msg == this.msg &&
          other.msgInfo == this.msgInfo &&
          other.sendTime == this.sendTime &&
          other.sendStatus == this.sendStatus &&
          other.sessionId == this.sessionId);
}

class ChatHistoryCompanion extends UpdateCompanion<ChatHistoryData> {
  final Value<int> id;
  final Value<String> msgId;
  final Value<String> from;
  final Value<String> fromAvatar;
  final Value<String> fromName;
  final Value<String> to;
  final Value<String> toAvatar;
  final Value<String> toName;
  final Value<int> chatType;
  final Value<int> msgType;
  final Value<String> msg;
  final Value<String?> msgInfo;
  final Value<DateTime> sendTime;
  final Value<int> sendStatus;
  final Value<int> sessionId;
  const ChatHistoryCompanion({
    this.id = const Value.absent(),
    this.msgId = const Value.absent(),
    this.from = const Value.absent(),
    this.fromAvatar = const Value.absent(),
    this.fromName = const Value.absent(),
    this.to = const Value.absent(),
    this.toAvatar = const Value.absent(),
    this.toName = const Value.absent(),
    this.chatType = const Value.absent(),
    this.msgType = const Value.absent(),
    this.msg = const Value.absent(),
    this.msgInfo = const Value.absent(),
    this.sendTime = const Value.absent(),
    this.sendStatus = const Value.absent(),
    this.sessionId = const Value.absent(),
  });
  ChatHistoryCompanion.insert({
    this.id = const Value.absent(),
    required String msgId,
    required String from,
    required String fromAvatar,
    required String fromName,
    required String to,
    required String toAvatar,
    required String toName,
    required int chatType,
    this.msgType = const Value.absent(),
    required String msg,
    this.msgInfo = const Value.absent(),
    required DateTime sendTime,
    required int sendStatus,
    required int sessionId,
  })  : msgId = Value(msgId),
        from = Value(from),
        fromAvatar = Value(fromAvatar),
        fromName = Value(fromName),
        to = Value(to),
        toAvatar = Value(toAvatar),
        toName = Value(toName),
        chatType = Value(chatType),
        msg = Value(msg),
        sendTime = Value(sendTime),
        sendStatus = Value(sendStatus),
        sessionId = Value(sessionId);
  static Insertable<ChatHistoryData> custom({
    Expression<int>? id,
    Expression<String>? msgId,
    Expression<String>? from,
    Expression<String>? fromAvatar,
    Expression<String>? fromName,
    Expression<String>? to,
    Expression<String>? toAvatar,
    Expression<String>? toName,
    Expression<int>? chatType,
    Expression<int>? msgType,
    Expression<String>? msg,
    Expression<String>? msgInfo,
    Expression<DateTime>? sendTime,
    Expression<int>? sendStatus,
    Expression<int>? sessionId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (msgId != null) 'msg_id': msgId,
      if (from != null) 'from': from,
      if (fromAvatar != null) 'from_avatar': fromAvatar,
      if (fromName != null) 'from_name': fromName,
      if (to != null) 'to': to,
      if (toAvatar != null) 'to_avatar': toAvatar,
      if (toName != null) 'to_name': toName,
      if (chatType != null) 'chat_type': chatType,
      if (msgType != null) 'msg_type': msgType,
      if (msg != null) 'msg': msg,
      if (msgInfo != null) 'msg_info': msgInfo,
      if (sendTime != null) 'send_time': sendTime,
      if (sendStatus != null) 'send_status': sendStatus,
      if (sessionId != null) 'session_id': sessionId,
    });
  }

  ChatHistoryCompanion copyWith(
      {Value<int>? id,
      Value<String>? msgId,
      Value<String>? from,
      Value<String>? fromAvatar,
      Value<String>? fromName,
      Value<String>? to,
      Value<String>? toAvatar,
      Value<String>? toName,
      Value<int>? chatType,
      Value<int>? msgType,
      Value<String>? msg,
      Value<String?>? msgInfo,
      Value<DateTime>? sendTime,
      Value<int>? sendStatus,
      Value<int>? sessionId}) {
    return ChatHistoryCompanion(
      id: id ?? this.id,
      msgId: msgId ?? this.msgId,
      from: from ?? this.from,
      fromAvatar: fromAvatar ?? this.fromAvatar,
      fromName: fromName ?? this.fromName,
      to: to ?? this.to,
      toAvatar: toAvatar ?? this.toAvatar,
      toName: toName ?? this.toName,
      chatType: chatType ?? this.chatType,
      msgType: msgType ?? this.msgType,
      msg: msg ?? this.msg,
      msgInfo: msgInfo ?? this.msgInfo,
      sendTime: sendTime ?? this.sendTime,
      sendStatus: sendStatus ?? this.sendStatus,
      sessionId: sessionId ?? this.sessionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (msgId.present) {
      map['msg_id'] = Variable<String>(msgId.value);
    }
    if (from.present) {
      map['from'] = Variable<String>(from.value);
    }
    if (fromAvatar.present) {
      map['from_avatar'] = Variable<String>(fromAvatar.value);
    }
    if (fromName.present) {
      map['from_name'] = Variable<String>(fromName.value);
    }
    if (to.present) {
      map['to'] = Variable<String>(to.value);
    }
    if (toAvatar.present) {
      map['to_avatar'] = Variable<String>(toAvatar.value);
    }
    if (toName.present) {
      map['to_name'] = Variable<String>(toName.value);
    }
    if (chatType.present) {
      map['chat_type'] = Variable<int>(chatType.value);
    }
    if (msgType.present) {
      map['msg_type'] = Variable<int>(msgType.value);
    }
    if (msg.present) {
      map['msg'] = Variable<String>(msg.value);
    }
    if (msgInfo.present) {
      map['msg_info'] = Variable<String>(msgInfo.value);
    }
    if (sendTime.present) {
      map['send_time'] = Variable<DateTime>(sendTime.value);
    }
    if (sendStatus.present) {
      map['send_status'] = Variable<int>(sendStatus.value);
    }
    if (sessionId.present) {
      map['session_id'] = Variable<int>(sessionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChatHistoryCompanion(')
          ..write('id: $id, ')
          ..write('msgId: $msgId, ')
          ..write('from: $from, ')
          ..write('fromAvatar: $fromAvatar, ')
          ..write('fromName: $fromName, ')
          ..write('to: $to, ')
          ..write('toAvatar: $toAvatar, ')
          ..write('toName: $toName, ')
          ..write('chatType: $chatType, ')
          ..write('msgType: $msgType, ')
          ..write('msg: $msg, ')
          ..write('msgInfo: $msgInfo, ')
          ..write('sendTime: $sendTime, ')
          ..write('sendStatus: $sendStatus, ')
          ..write('sessionId: $sessionId')
          ..write(')'))
        .toString();
  }
}

class $ChatSessionsTable extends ChatSessions
    with TableInfo<$ChatSessionsTable, ChatSession> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChatSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sessionidMeta =
      const VerificationMeta('sessionid');
  @override
  late final GeneratedColumn<String> sessionid = GeneratedColumn<String>(
      'sessionid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _characterIdMeta =
      const VerificationMeta('characterId');
  @override
  late final GeneratedColumn<int> characterId = GeneratedColumn<int>(
      'character_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _characterAvatarMeta =
      const VerificationMeta('characterAvatar');
  @override
  late final GeneratedColumn<String> characterAvatar = GeneratedColumn<String>(
      'character_avatar', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastMsgMeta =
      const VerificationMeta('lastMsg');
  @override
  late final GeneratedColumn<String> lastMsg = GeneratedColumn<String>(
      'last_msg', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latestTimeMeta =
      const VerificationMeta('latestTime');
  @override
  late final GeneratedColumn<DateTime> latestTime = GeneratedColumn<DateTime>(
      'latest_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastMsgTypeMeta =
      const VerificationMeta('lastMsgType');
  @override
  late final GeneratedColumn<String> lastMsgType = GeneratedColumn<String>(
      'last_msg_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _characterNameMeta =
      const VerificationMeta('characterName');
  @override
  late final GeneratedColumn<String> characterName = GeneratedColumn<String>(
      'character_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        sessionid,
        userId,
        characterId,
        characterAvatar,
        lastMsg,
        latestTime,
        lastMsgType,
        characterName
      ];
  @override
  String get aliasedName => _alias ?? 'chat_sessions';
  @override
  String get actualTableName => 'chat_sessions';
  @override
  VerificationContext validateIntegrity(Insertable<ChatSession> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('sessionid')) {
      context.handle(_sessionidMeta,
          sessionid.isAcceptableOrUnknown(data['sessionid']!, _sessionidMeta));
    } else if (isInserting) {
      context.missing(_sessionidMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('character_id')) {
      context.handle(
          _characterIdMeta,
          characterId.isAcceptableOrUnknown(
              data['character_id']!, _characterIdMeta));
    } else if (isInserting) {
      context.missing(_characterIdMeta);
    }
    if (data.containsKey('character_avatar')) {
      context.handle(
          _characterAvatarMeta,
          characterAvatar.isAcceptableOrUnknown(
              data['character_avatar']!, _characterAvatarMeta));
    }
    if (data.containsKey('last_msg')) {
      context.handle(_lastMsgMeta,
          lastMsg.isAcceptableOrUnknown(data['last_msg']!, _lastMsgMeta));
    }
    if (data.containsKey('latest_time')) {
      context.handle(
          _latestTimeMeta,
          latestTime.isAcceptableOrUnknown(
              data['latest_time']!, _latestTimeMeta));
    }
    if (data.containsKey('last_msg_type')) {
      context.handle(
          _lastMsgTypeMeta,
          lastMsgType.isAcceptableOrUnknown(
              data['last_msg_type']!, _lastMsgTypeMeta));
    }
    if (data.containsKey('character_name')) {
      context.handle(
          _characterNameMeta,
          characterName.isAcceptableOrUnknown(
              data['character_name']!, _characterNameMeta));
    } else if (isInserting) {
      context.missing(_characterNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChatSession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChatSession(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sessionid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sessionid'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      characterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}character_id'])!,
      characterAvatar: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}character_avatar']),
      lastMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_msg']),
      latestTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}latest_time']),
      lastMsgType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_msg_type']),
      characterName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}character_name'])!,
    );
  }

  @override
  $ChatSessionsTable createAlias(String alias) {
    return $ChatSessionsTable(attachedDatabase, alias);
  }
}

class ChatSession extends DataClass implements Insertable<ChatSession> {
  /// 自增id
  final int id;

  /// 会话id
  final String sessionid;

  /// 用户id
  final String userId;

  /// 角色id
  final int characterId;

  /// 角色头像
  final String? characterAvatar;

  /// 最新一条消息
  final String? lastMsg;

  /// 最新一条消息时间
  final DateTime? latestTime;

  /// 最新一条消息类型
  final String? lastMsgType;

  /// 角色名称
  final String characterName;
  const ChatSession(
      {required this.id,
      required this.sessionid,
      required this.userId,
      required this.characterId,
      this.characterAvatar,
      this.lastMsg,
      this.latestTime,
      this.lastMsgType,
      required this.characterName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['sessionid'] = Variable<String>(sessionid);
    map['user_id'] = Variable<String>(userId);
    map['character_id'] = Variable<int>(characterId);
    if (!nullToAbsent || characterAvatar != null) {
      map['character_avatar'] = Variable<String>(characterAvatar);
    }
    if (!nullToAbsent || lastMsg != null) {
      map['last_msg'] = Variable<String>(lastMsg);
    }
    if (!nullToAbsent || latestTime != null) {
      map['latest_time'] = Variable<DateTime>(latestTime);
    }
    if (!nullToAbsent || lastMsgType != null) {
      map['last_msg_type'] = Variable<String>(lastMsgType);
    }
    map['character_name'] = Variable<String>(characterName);
    return map;
  }

  ChatSessionsCompanion toCompanion(bool nullToAbsent) {
    return ChatSessionsCompanion(
      id: Value(id),
      sessionid: Value(sessionid),
      userId: Value(userId),
      characterId: Value(characterId),
      characterAvatar: characterAvatar == null && nullToAbsent
          ? const Value.absent()
          : Value(characterAvatar),
      lastMsg: lastMsg == null && nullToAbsent
          ? const Value.absent()
          : Value(lastMsg),
      latestTime: latestTime == null && nullToAbsent
          ? const Value.absent()
          : Value(latestTime),
      lastMsgType: lastMsgType == null && nullToAbsent
          ? const Value.absent()
          : Value(lastMsgType),
      characterName: Value(characterName),
    );
  }

  factory ChatSession.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChatSession(
      id: serializer.fromJson<int>(json['id']),
      sessionid: serializer.fromJson<String>(json['sessionid']),
      userId: serializer.fromJson<String>(json['userId']),
      characterId: serializer.fromJson<int>(json['characterId']),
      characterAvatar: serializer.fromJson<String?>(json['characterAvatar']),
      lastMsg: serializer.fromJson<String?>(json['lastMsg']),
      latestTime: serializer.fromJson<DateTime?>(json['latestTime']),
      lastMsgType: serializer.fromJson<String?>(json['lastMsgType']),
      characterName: serializer.fromJson<String>(json['characterName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sessionid': serializer.toJson<String>(sessionid),
      'userId': serializer.toJson<String>(userId),
      'characterId': serializer.toJson<int>(characterId),
      'characterAvatar': serializer.toJson<String?>(characterAvatar),
      'lastMsg': serializer.toJson<String?>(lastMsg),
      'latestTime': serializer.toJson<DateTime?>(latestTime),
      'lastMsgType': serializer.toJson<String?>(lastMsgType),
      'characterName': serializer.toJson<String>(characterName),
    };
  }

  ChatSession copyWith(
          {int? id,
          String? sessionid,
          String? userId,
          int? characterId,
          Value<String?> characterAvatar = const Value.absent(),
          Value<String?> lastMsg = const Value.absent(),
          Value<DateTime?> latestTime = const Value.absent(),
          Value<String?> lastMsgType = const Value.absent(),
          String? characterName}) =>
      ChatSession(
        id: id ?? this.id,
        sessionid: sessionid ?? this.sessionid,
        userId: userId ?? this.userId,
        characterId: characterId ?? this.characterId,
        characterAvatar: characterAvatar.present
            ? characterAvatar.value
            : this.characterAvatar,
        lastMsg: lastMsg.present ? lastMsg.value : this.lastMsg,
        latestTime: latestTime.present ? latestTime.value : this.latestTime,
        lastMsgType: lastMsgType.present ? lastMsgType.value : this.lastMsgType,
        characterName: characterName ?? this.characterName,
      );
  @override
  String toString() {
    return (StringBuffer('ChatSession(')
          ..write('id: $id, ')
          ..write('sessionid: $sessionid, ')
          ..write('userId: $userId, ')
          ..write('characterId: $characterId, ')
          ..write('characterAvatar: $characterAvatar, ')
          ..write('lastMsg: $lastMsg, ')
          ..write('latestTime: $latestTime, ')
          ..write('lastMsgType: $lastMsgType, ')
          ..write('characterName: $characterName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, sessionid, userId, characterId,
      characterAvatar, lastMsg, latestTime, lastMsgType, characterName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChatSession &&
          other.id == this.id &&
          other.sessionid == this.sessionid &&
          other.userId == this.userId &&
          other.characterId == this.characterId &&
          other.characterAvatar == this.characterAvatar &&
          other.lastMsg == this.lastMsg &&
          other.latestTime == this.latestTime &&
          other.lastMsgType == this.lastMsgType &&
          other.characterName == this.characterName);
}

class ChatSessionsCompanion extends UpdateCompanion<ChatSession> {
  final Value<int> id;
  final Value<String> sessionid;
  final Value<String> userId;
  final Value<int> characterId;
  final Value<String?> characterAvatar;
  final Value<String?> lastMsg;
  final Value<DateTime?> latestTime;
  final Value<String?> lastMsgType;
  final Value<String> characterName;
  const ChatSessionsCompanion({
    this.id = const Value.absent(),
    this.sessionid = const Value.absent(),
    this.userId = const Value.absent(),
    this.characterId = const Value.absent(),
    this.characterAvatar = const Value.absent(),
    this.lastMsg = const Value.absent(),
    this.latestTime = const Value.absent(),
    this.lastMsgType = const Value.absent(),
    this.characterName = const Value.absent(),
  });
  ChatSessionsCompanion.insert({
    this.id = const Value.absent(),
    required String sessionid,
    required String userId,
    required int characterId,
    this.characterAvatar = const Value.absent(),
    this.lastMsg = const Value.absent(),
    this.latestTime = const Value.absent(),
    this.lastMsgType = const Value.absent(),
    required String characterName,
  })  : sessionid = Value(sessionid),
        userId = Value(userId),
        characterId = Value(characterId),
        characterName = Value(characterName);
  static Insertable<ChatSession> custom({
    Expression<int>? id,
    Expression<String>? sessionid,
    Expression<String>? userId,
    Expression<int>? characterId,
    Expression<String>? characterAvatar,
    Expression<String>? lastMsg,
    Expression<DateTime>? latestTime,
    Expression<String>? lastMsgType,
    Expression<String>? characterName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sessionid != null) 'sessionid': sessionid,
      if (userId != null) 'user_id': userId,
      if (characterId != null) 'character_id': characterId,
      if (characterAvatar != null) 'character_avatar': characterAvatar,
      if (lastMsg != null) 'last_msg': lastMsg,
      if (latestTime != null) 'latest_time': latestTime,
      if (lastMsgType != null) 'last_msg_type': lastMsgType,
      if (characterName != null) 'character_name': characterName,
    });
  }

  ChatSessionsCompanion copyWith(
      {Value<int>? id,
      Value<String>? sessionid,
      Value<String>? userId,
      Value<int>? characterId,
      Value<String?>? characterAvatar,
      Value<String?>? lastMsg,
      Value<DateTime?>? latestTime,
      Value<String?>? lastMsgType,
      Value<String>? characterName}) {
    return ChatSessionsCompanion(
      id: id ?? this.id,
      sessionid: sessionid ?? this.sessionid,
      userId: userId ?? this.userId,
      characterId: characterId ?? this.characterId,
      characterAvatar: characterAvatar ?? this.characterAvatar,
      lastMsg: lastMsg ?? this.lastMsg,
      latestTime: latestTime ?? this.latestTime,
      lastMsgType: lastMsgType ?? this.lastMsgType,
      characterName: characterName ?? this.characterName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sessionid.present) {
      map['sessionid'] = Variable<String>(sessionid.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (characterId.present) {
      map['character_id'] = Variable<int>(characterId.value);
    }
    if (characterAvatar.present) {
      map['character_avatar'] = Variable<String>(characterAvatar.value);
    }
    if (lastMsg.present) {
      map['last_msg'] = Variable<String>(lastMsg.value);
    }
    if (latestTime.present) {
      map['latest_time'] = Variable<DateTime>(latestTime.value);
    }
    if (lastMsgType.present) {
      map['last_msg_type'] = Variable<String>(lastMsgType.value);
    }
    if (characterName.present) {
      map['character_name'] = Variable<String>(characterName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChatSessionsCompanion(')
          ..write('id: $id, ')
          ..write('sessionid: $sessionid, ')
          ..write('userId: $userId, ')
          ..write('characterId: $characterId, ')
          ..write('characterAvatar: $characterAvatar, ')
          ..write('lastMsg: $lastMsg, ')
          ..write('latestTime: $latestTime, ')
          ..write('lastMsgType: $lastMsgType, ')
          ..write('characterName: $characterName')
          ..write(')'))
        .toString();
  }
}

class $UserBehaviorTable extends UserBehavior
    with TableInfo<$UserBehaviorTable, UserBehaviorData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserBehaviorTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastSessionIdMeta =
      const VerificationMeta('lastSessionId');
  @override
  late final GeneratedColumn<String> lastSessionId = GeneratedColumn<String>(
      'last_session_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastChatTimeMeta =
      const VerificationMeta('lastChatTime');
  @override
  late final GeneratedColumn<DateTime> lastChatTime = GeneratedColumn<DateTime>(
      'last_chat_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, lastSessionId, lastChatTime];
  @override
  String get aliasedName => _alias ?? 'user_behavior';
  @override
  String get actualTableName => 'user_behavior';
  @override
  VerificationContext validateIntegrity(Insertable<UserBehaviorData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('last_session_id')) {
      context.handle(
          _lastSessionIdMeta,
          lastSessionId.isAcceptableOrUnknown(
              data['last_session_id']!, _lastSessionIdMeta));
    } else if (isInserting) {
      context.missing(_lastSessionIdMeta);
    }
    if (data.containsKey('last_chat_time')) {
      context.handle(
          _lastChatTimeMeta,
          lastChatTime.isAcceptableOrUnknown(
              data['last_chat_time']!, _lastChatTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  UserBehaviorData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserBehaviorData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      lastSessionId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_session_id'])!,
      lastChatTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_chat_time']),
    );
  }

  @override
  $UserBehaviorTable createAlias(String alias) {
    return $UserBehaviorTable(attachedDatabase, alias);
  }
}

class UserBehaviorData extends DataClass
    implements Insertable<UserBehaviorData> {
  /// 自增id
  final int id;

  /// 用户id
  final String userId;

  ///最后一次会话id
  final String lastSessionId;

  ///最后一次会话时间
  final DateTime? lastChatTime;
  const UserBehaviorData(
      {required this.id,
      required this.userId,
      required this.lastSessionId,
      this.lastChatTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<String>(userId);
    map['last_session_id'] = Variable<String>(lastSessionId);
    if (!nullToAbsent || lastChatTime != null) {
      map['last_chat_time'] = Variable<DateTime>(lastChatTime);
    }
    return map;
  }

  UserBehaviorCompanion toCompanion(bool nullToAbsent) {
    return UserBehaviorCompanion(
      id: Value(id),
      userId: Value(userId),
      lastSessionId: Value(lastSessionId),
      lastChatTime: lastChatTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastChatTime),
    );
  }

  factory UserBehaviorData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserBehaviorData(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      lastSessionId: serializer.fromJson<String>(json['lastSessionId']),
      lastChatTime: serializer.fromJson<DateTime?>(json['lastChatTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<String>(userId),
      'lastSessionId': serializer.toJson<String>(lastSessionId),
      'lastChatTime': serializer.toJson<DateTime?>(lastChatTime),
    };
  }

  UserBehaviorData copyWith(
          {int? id,
          String? userId,
          String? lastSessionId,
          Value<DateTime?> lastChatTime = const Value.absent()}) =>
      UserBehaviorData(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        lastSessionId: lastSessionId ?? this.lastSessionId,
        lastChatTime:
            lastChatTime.present ? lastChatTime.value : this.lastChatTime,
      );
  @override
  String toString() {
    return (StringBuffer('UserBehaviorData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lastSessionId: $lastSessionId, ')
          ..write('lastChatTime: $lastChatTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, lastSessionId, lastChatTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserBehaviorData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.lastSessionId == this.lastSessionId &&
          other.lastChatTime == this.lastChatTime);
}

class UserBehaviorCompanion extends UpdateCompanion<UserBehaviorData> {
  final Value<int> id;
  final Value<String> userId;
  final Value<String> lastSessionId;
  final Value<DateTime?> lastChatTime;
  final Value<int> rowid;
  const UserBehaviorCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.lastSessionId = const Value.absent(),
    this.lastChatTime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserBehaviorCompanion.insert({
    required int id,
    required String userId,
    required String lastSessionId,
    this.lastChatTime = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        lastSessionId = Value(lastSessionId);
  static Insertable<UserBehaviorData> custom({
    Expression<int>? id,
    Expression<String>? userId,
    Expression<String>? lastSessionId,
    Expression<DateTime>? lastChatTime,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (lastSessionId != null) 'last_session_id': lastSessionId,
      if (lastChatTime != null) 'last_chat_time': lastChatTime,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserBehaviorCompanion copyWith(
      {Value<int>? id,
      Value<String>? userId,
      Value<String>? lastSessionId,
      Value<DateTime?>? lastChatTime,
      Value<int>? rowid}) {
    return UserBehaviorCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      lastSessionId: lastSessionId ?? this.lastSessionId,
      lastChatTime: lastChatTime ?? this.lastChatTime,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (lastSessionId.present) {
      map['last_session_id'] = Variable<String>(lastSessionId.value);
    }
    if (lastChatTime.present) {
      map['last_chat_time'] = Variable<DateTime>(lastChatTime.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserBehaviorCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lastSessionId: $lastSessionId, ')
          ..write('lastChatTime: $lastChatTime, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserInteractionsTable extends UserInteractions
    with TableInfo<$UserInteractionsTable, UserInteraction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserInteractionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  @override
  late final GeneratedColumn<int> typeId = GeneratedColumn<int>(
      'type_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, userId, typeId, type, status];
  @override
  String get aliasedName => _alias ?? 'user_interactions';
  @override
  String get actualTableName => 'user_interactions';
  @override
  VerificationContext validateIntegrity(Insertable<UserInteraction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(_typeIdMeta,
          typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta));
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserInteraction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserInteraction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      typeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type_id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $UserInteractionsTable createAlias(String alias) {
    return $UserInteractionsTable(attachedDatabase, alias);
  }
}

class UserInteraction extends DataClass implements Insertable<UserInteraction> {
  /// 自增id
  final int id;

  /// 用户id
  final int userId;

  /// 角色id/作品id
  final int typeId;

  /// 给角色点赞：0/给作品点赞：1
  final int type;

  ///点赞状态
  final int status;
  const UserInteraction(
      {required this.id,
      required this.userId,
      required this.typeId,
      required this.type,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['type_id'] = Variable<int>(typeId);
    map['type'] = Variable<int>(type);
    map['status'] = Variable<int>(status);
    return map;
  }

  UserInteractionsCompanion toCompanion(bool nullToAbsent) {
    return UserInteractionsCompanion(
      id: Value(id),
      userId: Value(userId),
      typeId: Value(typeId),
      type: Value(type),
      status: Value(status),
    );
  }

  factory UserInteraction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserInteraction(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      typeId: serializer.fromJson<int>(json['typeId']),
      type: serializer.fromJson<int>(json['type']),
      status: serializer.fromJson<int>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'typeId': serializer.toJson<int>(typeId),
      'type': serializer.toJson<int>(type),
      'status': serializer.toJson<int>(status),
    };
  }

  UserInteraction copyWith(
          {int? id, int? userId, int? typeId, int? type, int? status}) =>
      UserInteraction(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        typeId: typeId ?? this.typeId,
        type: type ?? this.type,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('UserInteraction(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('typeId: $typeId, ')
          ..write('type: $type, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, typeId, type, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserInteraction &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.typeId == this.typeId &&
          other.type == this.type &&
          other.status == this.status);
}

class UserInteractionsCompanion extends UpdateCompanion<UserInteraction> {
  final Value<int> id;
  final Value<int> userId;
  final Value<int> typeId;
  final Value<int> type;
  final Value<int> status;
  const UserInteractionsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.typeId = const Value.absent(),
    this.type = const Value.absent(),
    this.status = const Value.absent(),
  });
  UserInteractionsCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required int typeId,
    required int type,
    this.status = const Value.absent(),
  })  : userId = Value(userId),
        typeId = Value(typeId),
        type = Value(type);
  static Insertable<UserInteraction> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<int>? typeId,
    Expression<int>? type,
    Expression<int>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (typeId != null) 'type_id': typeId,
      if (type != null) 'type': type,
      if (status != null) 'status': status,
    });
  }

  UserInteractionsCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<int>? typeId,
      Value<int>? type,
      Value<int>? status}) {
    return UserInteractionsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      typeId: typeId ?? this.typeId,
      type: type ?? this.type,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserInteractionsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('typeId: $typeId, ')
          ..write('type: $type, ')
          ..write('status: $status')
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
  late final $ChatItemTable chatItem = $ChatItemTable(this);
  late final $CharactersTable characters = $CharactersTable(this);
  late final $ChatHistoryTable chatHistory = $ChatHistoryTable(this);
  late final $ChatSessionsTable chatSessions = $ChatSessionsTable(this);
  late final $UserBehaviorTable userBehavior = $UserBehaviorTable(this);
  late final $UserInteractionsTable userInteractions =
      $UserInteractionsTable(this);
  late final $UserTable user = $UserTable(this);
  late final MessageDao messageDao = MessageDao(this as MyDatabase);
  late final ChatItemDao chatItemDao = ChatItemDao(this as MyDatabase);
  late final CharactersDao charactersDao = CharactersDao(this as MyDatabase);
  late final ChatHistoryDao chatHistoryDao = ChatHistoryDao(this as MyDatabase);
  late final ChatSessionsDao chatSessionsDao =
      ChatSessionsDao(this as MyDatabase);
  late final UserBehaviorDao userBehaviorDao =
      UserBehaviorDao(this as MyDatabase);
  late final UserDao userDao = UserDao(this as MyDatabase);
  late final UserInteractionsDao userInteractionsDao =
      UserInteractionsDao(this as MyDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        message,
        chatItem,
        characters,
        chatHistory,
        chatSessions,
        userBehavior,
        userInteractions,
        user
      ];
}
