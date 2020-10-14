// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MisskeyNote _$MisskeyNoteFromJson(Map<String, dynamic> json) {
  return MisskeyNote(
    id: json['id'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    text: json['text'] as String,
    cw: json['cw'] as String,
    userId: json['userId'] as String,
    user: json['user'] == null
        ? null
        : MisskeyUser.fromJson(json['user'] as Map<String, dynamic>),
    replyId: json['replyId'] as String,
    renoteId: json['renoteId'] as String,
    reply: json['reply'] == null
        ? null
        : MisskeyNote.fromJson(json['reply'] as Map<String, dynamic>),
    renote: json['renote'] == null
        ? null
        : MisskeyNote.fromJson(json['renote'] as Map<String, dynamic>),
    viaMobile: json['viaMobile'] as bool,
    isHidden: json['isHidden'] as bool,
    visibility: json['visibility'] as String,
    mentions: (json['mentions'] as List)?.map((e) => e as String),
    visibleUserIds: (json['visibleUserIds'] as List)?.map((e) => e as String),
    fileIds: (json['fileIds'] as List)?.map((e) => e as String),
    files: (json['files'] as List)?.map((e) =>
        e == null ? null : MisskeyFile.fromJson(e as Map<String, dynamic>)),
    tags: (json['tags'] as List)?.map((e) => e as String),
    poll: json['poll'],
    channelId: json['channelId'] as String,
    channel: json['channel'] == null
        ? null
        : MisskeyChannel.fromJson(json['channel'] as Map<String, dynamic>),
    myReaction: json['myReaction'] as String,
    reactions: (json['reactions'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    emojis: (json['emojis'] as List)?.map((e) =>
        e == null ? null : MisskeyEmoji.fromJson(e as Map<String, dynamic>)),
  );
}

Map<String, dynamic> _$MisskeyNoteToJson(MisskeyNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'text': instance.text,
      'cw': instance.cw,
      'userId': instance.userId,
      'user': instance.user,
      'replyId': instance.replyId,
      'renoteId': instance.renoteId,
      'reply': instance.reply,
      'renote': instance.renote,
      'viaMobile': instance.viaMobile,
      'isHidden': instance.isHidden,
      'visibility': instance.visibility,
      'mentions': instance.mentions?.toList(),
      'visibleUserIds': instance.visibleUserIds?.toList(),
      'fileIds': instance.fileIds?.toList(),
      'files': instance.files?.toList(),
      'tags': instance.tags?.toList(),
      'poll': instance.poll,
      'channelId': instance.channelId,
      'channel': instance.channel,
      'myReaction': instance.myReaction,
      'reactions': instance.reactions,
      'emojis': instance.emojis?.toList(),
    };
