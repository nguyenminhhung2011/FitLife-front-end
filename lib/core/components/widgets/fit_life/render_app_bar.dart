import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/configurations/env/env_prod.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:flutter_base_clean_architecture/core/components/layout/setting_layout/utils/setting_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RenderAppBar extends StatefulWidget {
  const RenderAppBar({super.key});

  @override
  State<RenderAppBar> createState() => _RenderAppBarState();
}

class _RenderAppBarState extends State<RenderAppBar> {
  SettingBloc get _settingBloc => context.read<SettingBloc>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(ImageConst.icon, height: 30.0, width: 30.0),
        const SizedBox(width: 5),
        Text.rich(
          TextSpan(
            style: context.titleSmall.copyWith(fontSize: 14.0),
            children: [
              const TextSpan(text: 'Hello, I am '),
              TextSpan(
                text: environmentProd['name'],
                style: TextStyle(color: Theme.of(context).primaryColor),
              )
            ],
          ),
        ),
        const Spacer(),
        BlocBuilder<SettingBloc, SettingState>(
          bloc: _settingBloc,
          builder: (_, state) {
            final lang = state.data.langCode;

            final langImage = SettingUtils.locals
                    .firstWhere(
                      (element) =>
                          element.langCode.toUpperCase() == lang.toUpperCase(),
                    )
                    .image ??
                ImageConst.baseImageView;

            return Container(
              width: 35.0,
              padding: const EdgeInsets.all(5.0),
              height: 35.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(width: 1, color: Theme.of(context).hintColor),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(langImage, fit: BoxFit.cover),
              ),
            );
          },
        )
      ],
    );
  }
}
