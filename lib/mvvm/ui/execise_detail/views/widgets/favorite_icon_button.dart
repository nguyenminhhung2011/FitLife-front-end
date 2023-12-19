import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteIconButton extends StatefulWidget {
  const FavoriteIconButton({super.key, required Exercise data, this.size = 20})
      : _data = data;
  final double size;
  final Exercise _data;

  @override
  State<FavoriteIconButton> createState() => _FavoriteIconButtonState();
}

class _FavoriteIconButtonState extends State<FavoriteIconButton> {
  SettingBloc get _bloc => context.read<SettingBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      bloc: _bloc,
      builder: (context, state) {
        final favoritesExercise =
            state.data.currentUser?.userProfile?.favoriteExercises ??
                List.empty(growable: true);
        final isFavorite = favoritesExercise
            .where((element) => element.id == widget._data.id)
            .isNotEmpty;

        final favIcon = isFavorite
            ? Icon(
                Icons.favorite,
                color: Colors.red,
                size: widget.size,
              )
            : Icon(
                Icons.favorite_border,
                color: context.titleMedium.color,
                size: widget.size,
              );
        return IconButton(
            onPressed: () =>
                _bloc.add(SettingEvent.addFavoriteExercise(widget._data)),
            icon: favIcon);
      },
    );
  }
}
