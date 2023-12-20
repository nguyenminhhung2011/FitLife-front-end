import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RenderOverviewAppBar extends StatefulWidget {
  const RenderOverviewAppBar({super.key});
  @override
  State<RenderOverviewAppBar> createState() => _RenderOverviewAppBarState();
}

class _RenderOverviewAppBarState extends State<RenderOverviewAppBar> {
  SettingBloc get _bloc => context.read<SettingBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      bloc: _bloc,
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back to FitLife',
                    style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).hintColor,
                      fontSize: 12.0,
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    state.data.currentUser?.username ?? "",
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () =>
                  context.openListPageWithRoute(Routes.notification),
              icon: Icon(CupertinoIcons.bell,
                  size: 20.0, color: context.titleLarge.color!),
            )
          ],
        );
      },
    );
  }
}
