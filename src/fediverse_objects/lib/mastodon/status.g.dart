// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MastodonStatus _$MastodonStatusFromJson(Map<String, dynamic> json) {
  return MastodonStatus(
    account: json['account'] == null
        ? null
        : MastodonAccount.fromJson(json['account'] as Map<String, dynamic>),
    application: json['application'] == null
        ? null
        : MastodonApplication.fromJson(
            json['application'] as Map<String, dynamic>),
    bookmarked: json['bookmarked'] as bool,
    card: json['card'] == null
        ? null
        : MastodonCard.fromJson(json['card'] as Map<String, dynamic>),
    content: json['content'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    emojis: (json['emojis'] as List)?.map((e) =>
        e == null ? null : MastodonEmoji.fromJson(e as Map<String, dynamic>)),
    favourited: json['favourited'] as bool,
    favouritesCount: json['favourites_count'] as int,
    id: json['id'] as String,
    inReplyToAccountId: json['in_reply_to_account_id'] as String,
    inReplyToId: json['in_reply_to_id'] as String,
    language: json['language'] as String,
    mediaAttachments: (json['media_attachments'] as List)?.map((e) => e == null
        ? null
        : MastodonMediaAttachment.fromJson(e as Map<String, dynamic>)),
    mentions: (json['mentions'] as List)?.map((e) =>
        e == null ? null : MastodonMention.fromJson(e as Map<String, dynamic>)),
    muted: json['muted'] as bool,
    pinned: json['pinned'] as bool,
    pleroma: json['pleroma'] == null
        ? null
        : PleromaStatus.fromJson(json['pleroma'] as Map<String, dynamic>),
    reblog: json['reblog'] == null
        ? null
        : MastodonStatus.fromJson(json['reblog'] as Map<String, dynamic>),
    reblogged: json['reblogged'] as bool,
    reblogsCount: json['reblogs_count'] as int,
    repliesCount: json['replies_count'] as int,
    sensitive: json['sensitive'] as bool,
    spoilerText: json['spoiler_text'] as String,
    tags: (json['tags'] as List)?.map((e) =>
        e == null ? null : MastodonTag.fromJson(e as Map<String, dynamic>)),
    uri: json['uri'] as String,
    url: json['url'] as String,
    visibility: json['visibility'] as String,
  );
}
