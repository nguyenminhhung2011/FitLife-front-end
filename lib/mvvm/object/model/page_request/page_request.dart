class PageRequest {
  final int perPage;
  final int page;
  const PageRequest({
    required this.perPage,
    required this.page,
  });

  Map get toJson => {"page": page, "perPage": perPage};
}
