import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:fit_life/mvvm/me/entity/news_health/news_health.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsHealthVerticalItem extends StatefulWidget {
  const NewsHealthVerticalItem({
    super.key,
    required this.item,
  });

  final NewsHealth item;

  @override
  State<NewsHealthVerticalItem> createState() => _NewsHealthVerticalItemState();
}

class _NewsHealthVerticalItemState extends State<NewsHealthVerticalItem> {
  SettingBloc get _bloc => context.read<SettingBloc>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                color: Theme.of(context).shadowColor.withOpacity(0.1),
              )
            ],
            color: Theme.of(context).cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: ImageCustom(
                      imageUrl: widget.item.urlToImage,
                      isNetworkImage: true,
                      width: double.infinity),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            widget.item.author.isEmpty
                                ? "Empty author"
                                : widget.item.author,
                            style: context.titleMedium
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          getYmdFormat(widget.item.publishedAt),
                          style: context.titleSmall
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      widget.item.description,
                      style: context.titleSmall
                          .copyWith(color: Theme.of(context).hintColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        BlocBuilder<SettingBloc, SettingState>(
          bloc: _bloc,
          builder: (_, state) {
            final favoritesNews =
                state.data.currentUser?.userProfile?.favoriteNews ??
                    List.empty(growable: true);
            final isFavorite = favoritesNews
                .where((element) => element.id == widget.item.id)
                .isNotEmpty;
            final icon = isFavorite
                ? Icon(Icons.favorite, color: Colors.red[400])
                : Icon(Icons.favorite_border, color: context.titleLarge.color);
            return Positioned(
              top: 5.0,
              right: 15.0,
              child: IconButton(
                  onPressed: () =>
                      _bloc.add(SettingEvent.addFavoriteNews(widget.item)),
                  icon: icon),
            );
          },
        )
      ],
    );
  }
}
