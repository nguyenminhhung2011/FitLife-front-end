class TrainerMessageRequest {
  final String message;
  final String? threadId;
  final String trainerId;

  TrainerMessageRequest({
    this.threadId,
    required this.message,
    required this.trainerId,
  });

  Map<String, dynamic> get toMap => {
        "trainerId": trainerId,
        if (threadId != null) "threadId": threadId,
        "message": message,
      };
}
