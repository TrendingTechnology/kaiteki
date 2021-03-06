import 'dart:async';

import 'package:kaiteki/account_container.dart';
import 'package:kaiteki/api/clients/fediverse_client_base.dart';
import 'package:kaiteki/auth/login_typedefs.dart';
import 'package:kaiteki/model/auth/login_result.dart';
import 'package:kaiteki/model/fediverse/emoji_category.dart';
import 'package:kaiteki/model/fediverse/notification.dart';
import 'package:kaiteki/model/fediverse/post.dart';
import 'package:kaiteki/model/fediverse/timeline_type.dart';
import 'package:kaiteki/model/fediverse/user.dart';

/// An adapter containing a backing Fediverse client that.
abstract class FediverseAdapter<Client extends FediverseClientBase> {
  /// The original client/backend that is being adapted.
  Client client;

  FediverseAdapter(this.client);

  /// Retrieves the profile of the currently authenticated user. If null gets
  /// provided we may assume there was an error.
  Future<User> getMyself();

  /// Attempts to sign into an instance. Additionally, mfaCallback can be used
  /// to request more data from the user, if required.
  Future<LoginResult> login(
    String instance,
    String username,
    String password,
    MfaCallback mfaCallback,
    AccountContainer accounts,
  );

  /// Retrieves an user of another instance
  Future<User> getUser(String username, [String instance]);

  /// Retrieves an user using an instance specific ID.
  Future<User> getUserById(String id);

  /// Posts a status, optionally in reply to another post.
  Future<Post> postStatus(Post post, {Post parentPost});

  Future<Iterable<Post>> getTimeline(TimelineType type);

  Future<Iterable<Notification>> getNotifications();

  Future<Iterable<Post>> getStatusesOfUserById(String id);

  Future<Iterable<EmojiCategory>> getEmojis();
}
