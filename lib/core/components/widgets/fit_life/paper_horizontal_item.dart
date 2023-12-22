import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:fit_life/mvvm/me/entity/news_health/news_health.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaperHorizontalItem extends StatefulWidget {
  final bool isFirstItem;
  final NewsHealth news;
  const PaperHorizontalItem({
    super.key,
    required this.isFirstItem,
    required this.news,
  });

  @override
  State<PaperHorizontalItem> createState() => _PaperHorizontalItemState();
}

class _PaperHorizontalItemState extends State<PaperHorizontalItem> {
  SettingBloc get _bloc => context.read<SettingBloc>();

  EdgeInsetsGeometry get _margin => EdgeInsets.only(
      left: widget.isFirstItem ? 15 : 0, right: 10.0, bottom: 10.0);

  BorderRadiusGeometry get _radius => BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.openPageWithRouteAndParams(Routes.newsDetail, widget.news.id),
      child: BlocBuilder<SettingBloc, SettingState>(
        bloc: _bloc,
        builder: (context, state) {
          return _body(context, state);
        },
      ),
    );
  }

  Stack _body(BuildContext context, SettingState state) {
    final favoritesNews = state.data.currentUser?.userProfile?.favoriteNews ??
        List.empty(growable: true);
    final isFavorite = favoritesNews
        .where((element) => element.id == widget.news.id)
        .isNotEmpty;
    return Stack(
      children: [
        Container(
          width: context.widthDevice * 0.35,
          height: double.infinity,
          margin: _margin,
          decoration: BoxDecoration(
            borderRadius: _radius,
            image: DecorationImage(
              image: NetworkImage(
                (widget.news.urlToImage.isEmpty)
                    ? ImageConst.baseImageView
                    : widget.news.urlToImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: context.widthDevice * 0.35,
          height: double.infinity,
          padding: const EdgeInsets.all(10.0),
          margin: _margin,
          decoration:
              BoxDecoration(borderRadius: _radius, color: Colors.black26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(flex: 4, child: SizedBox()),
              Expanded(
                flex: 1,
                child: Text(
                  widget.news.author,
                  style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  widget.news.title,
                  style: context.titleSmall.copyWith(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
        if (isFavorite)
          Positioned(
            top: 5.0,
            left: widget.isFirstItem ? 20.0 : 5.0,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black12,
              ),
              child: Icon(Icons.favorite, size: 12.0, color: Colors.red[400]),
            ),
          ),
      ],
    );
  }
}
