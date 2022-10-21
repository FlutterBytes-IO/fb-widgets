class FBNotification {
  FBNotification._();
  static FBNotification? _instance;
  factory FBNotification() => _instance ??= FBNotification._();
}
