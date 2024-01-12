import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/object/entity/news_health/news_health.dart';
import 'package:fit_life/mvvm/ui/list_news/views/widget/news_health_vertical_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteNewsView extends StatefulWidget {
  const FavoriteNewsView({super.key});

  @override
  State<FavoriteNewsView> createState() => _FavoriteNewsViewState();
}

class _FavoriteNewsViewState extends State<FavoriteNewsView> {
  void _listenStateChange(_, SettingState state) {
    state.maybeWhen(orElse: () {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingBloc, SettingState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final favoriteNews =
            state.data.currentUser?.userProfile?.favoriteNews ??
                List<NewsHealth>.empty();
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
            ),
            title: Text(
              S.of(context).favoriteNews,
              style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
          body: favoriteNews.isNotEmpty
              ? ListView.separated(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                  itemCount: favoriteNews.length,
                  itemBuilder: (_, index) {
                    final item = favoriteNews[index];

                    return NewsHealthVerticalItem(item: item);
                  },
                )
              : Center(
                  child: Text("⚠️ You don't have any favorite news",
                      style: context.titleMedium),
                ),
        );
      },
    );
  }
}
