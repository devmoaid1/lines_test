import 'package:equatable/equatable.dart';
import 'package:lines_test/features/reviews/data/models/store_reply.dart';

import 'user.dart';

class Review extends Equatable {
  final String? comment;
  final StoreReply? storeReply;
  final List<String> images;
  final String? date;
  final User? user;

  const Review(
      {this.comment,
      this.storeReply,
      this.images = const [],
      this.date,
      this.user});

  @override
  List<Object?> get props => [comment, storeReply, images, date, user];
}
