class SearchPlanRequest {
  final String name;
  final int? startDate;
  final int? endDate;
  final int page;
  final int size;

  SearchPlanRequest({
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.page,
    required this.size,
  });

  Map<String, dynamic> get toJson => {
        "name": name,
        "startDate": startDate ?? 0,
        "endDate": endDate ?? 0,
        "page": page,
        "size": size,
      };
}
