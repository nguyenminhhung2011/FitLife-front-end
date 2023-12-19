class GetChartRequest {
  final int startDate;
  final int endDate;
  GetChartRequest({required this.startDate, required this.endDate});

  Map<String, dynamic> get toJson =>
      {"startDate": startDate, "endDate": endDate};
}
