class TransferListState {
  late List listData;
  late List uploadingListData;
  late List uploadCompletedListData;
  late List downloadingListData;
  late List downloadCompletedListData;

  TransferListState({
    required this.listData,
    required this.uploadingListData,
    required this.uploadCompletedListData,
    required this.downloadingListData,
    required this.downloadCompletedListData,
  });
}
