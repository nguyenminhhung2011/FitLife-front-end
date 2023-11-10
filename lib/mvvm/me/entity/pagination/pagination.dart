class Pagination<T> {
  final List<T> items;
  final int currentPage;
  final int totalPage;
  Pagination({
    required this.items,
    this.currentPage = 0,
    this.totalPage = 0,
  });
}
