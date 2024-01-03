import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/ui/favorite_exercise/widget/favorite_exercise_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteExerciseView extends StatefulWidget {
  const FavoriteExerciseView({super.key});

  @override
  State<FavoriteExerciseView> createState() => _FavoriteExerciseViewState();
}

class _FavoriteExerciseViewState extends State<FavoriteExerciseView> {
  void _listenStateChange(_, SettingState state) {
    state.maybeWhen(orElse: () {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingBloc, SettingState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final favoriteEx =
            state.data.currentUser?.userProfile?.favoriteExercises ??
                List<Exercise>.empty();
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
            ),
            title: Text(
              S.of(context).favorite,
              style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
          body: favoriteEx.isNotEmpty
              ? ListView.separated(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                  itemCount: favoriteEx.length,
                  itemBuilder: (_, index) {
                    final exercise = favoriteEx[index];

                    return FavoriteExerciseItem(exercise: exercise);
                  },
                )
              : Center(
                  child: Text("⚠️ You don't have any favorite exercise",
                      style: context.titleMedium),
                ),
        );
      },
    );
  }
}
