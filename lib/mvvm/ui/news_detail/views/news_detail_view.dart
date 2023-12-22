import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/me/entity/news_health/news_health.dart';
import 'package:fit_life/mvvm/ui/news_detail/view_model/news_detail_data.dart';
import 'package:fit_life/mvvm/ui/news_detail/view_model/news_detail_view_model.dart';
import 'package:fit_life/mvvm/ui/overview/views/widgets/paper_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailView extends ConsumerStatefulWidget {
  final int newsI;
  const NewsDetailView({super.key, required this.newsI});

  @override
  ConsumerState<NewsDetailView> createState() => _NewsDetailViewState();
}

class _NewsDetailViewState extends ConsumerState<NewsDetailView> {
  NewsDetailViewModel get _vm => ref.read(newsDetailStateNotifier.notifier);

  NewsDetailData get _data => ref.watch(newsDetailStateNotifier).data;

  NewsHealth? get _detail => _data.detail;

  NewsDetailState get _state => ref.watch(newsDetailStateNotifier);

  String get image => (_detail?.urlToImage.isNotEmpty ?? false)
      ? _detail!.urlToImage
      : ImageConst.baseImageView;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await _vm.getNewsById(widget.newsI);
      await _vm.getTopNews();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (_detail != null) _body(context) else const SizedBox(),
        if (_state.loading)
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.black45,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: StyleLoadingWidget.foldingCube.renderWidget(
                  size: 40.0, color: Theme.of(context).primaryColor),
            ),
          )
      ],
    );
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(Icons.arrow_back, color: context.titleLarge.color)),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () async {
                  if (_detail?.url.isNotEmpty ?? false) {
                    final Uri url = Uri.parse(_detail!.url);
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch');
                    }
                  }
                },
                child: Text(
                  "Visit web",
                  style: context.titleSmall.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        ...[
          SizedBox(
            width: double.infinity,
            height: context.heightDevice * 0.25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ImageCustom(
                imageUrl: image,
                isNetworkImage: true,
                width: double.infinity,
                height: context.heightDevice * 0.25,
              ),
            ),
          ),
          Text(
            _detail?.title ?? "",
            style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).dividerColor),
                child: Icon(Icons.person, color: context.titleLarge.color),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...[
                      "by ${_detail?.author ?? "Generate"}",
                      getYmdFormat(_detail?.publishedAt ?? DateTime.now())
                    ].map((e) => Text(
                          e,
                          style: context.titleSmall
                              .copyWith(fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
              ),
            ],
          ),
          if (_detail?.content.isNotEmpty ?? false)
            _headerAndTitle(context,
                header: "Content", title: _detail!.content),
          if (_detail?.description.isNotEmpty ?? false)
            _headerAndTitle(context,
                header: "Description", title: _detail!.description),
          Text(
            "Things you might love",
            style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
          ),
        ].expandIndexed((index, element) => [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0)
                      .copyWith(bottom: 15.0),
                  child: element)
            ]),
        if (_data.isLoadingTopNews)
          Center(
            child: StyleLoadingWidget.foldingCube.renderWidget(
                size: 40.0, color: Theme.of(context).primaryColor),
          )
        else
          PaperSliderView(news: _data.news ?? []),
      ]),
    );
  }

  Column _headerAndTitle(BuildContext context,
      {required String header, required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5.0),
        Text(title, style: context.titleMedium)
      ],
    );
  }
}
