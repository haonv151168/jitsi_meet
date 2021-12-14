class MBFMeetingResponse {
  final bool isSuccess;
  final String? message;
  final dynamic? error;

  MBFMeetingResponse({
    required this.isSuccess,
    this.message,
    this.error,
  });

  @override
  String toString() {
    return 'MBFMeetingResponse{isSuccess: $isSuccess, '
        'message: $message, error: $error}';
  }
}
