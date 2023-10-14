import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/constant.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/button_custom.dart';

class BannerItemBuilder extends StatelessWidget {
  const BannerItemBuilder({
    super.key,
    required this.banner,
    required this.onPress,
  });

  final BannerContent banner;

  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image.asset(
            banner.imageUrl,
            width: double.infinity,
            fit: BoxFit.fill,
            height: double.infinity,
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.black38,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                banner.content,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.titleMedium
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                banner.subContent,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.titleSmall
                    .copyWith(color: Colors.white, fontSize: 12.0),
              ),
              const SizedBox(height: 10.0),
              ButtonCustom(
                radius: 5.0,
                enableWidth: false,
                height: 30.0,
                onPress: onPress,
                child: Text(
                  'View detail',
                  style: context.titleSmall.copyWith(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
