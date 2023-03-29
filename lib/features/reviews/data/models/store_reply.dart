import 'package:equatable/equatable.dart';

class StoreReply extends Equatable {
  final int? storeId;
  final String? storeName;
  final String? reply;

  const StoreReply({this.storeId, this.storeName, this.reply});

  @override
  List<Object?> get props => [storeId, storeName, reply];
}
