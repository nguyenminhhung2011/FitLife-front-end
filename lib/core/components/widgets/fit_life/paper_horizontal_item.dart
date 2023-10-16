import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class PaperHorizontalItem extends StatelessWidget {
  final bool isFirstItem;
  const PaperHorizontalItem({
    super.key,
    required this.isFirstItem,
  });
  EdgeInsetsGeometry get _margin =>
      EdgeInsets.only(left: isFirstItem ? 15 : 0, right: 10.0, bottom: 10.0);
  BorderRadiusGeometry get _radius => BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: context.widthDevice * 0.35,
            height: double.infinity,
            margin: _margin,
            decoration: BoxDecoration(
              borderRadius: _radius,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                  blurRadius: 5.0,
                )
              ],
              image: const DecorationImage(
                // Change here
                image: AssetImage(ImageConst.banner1),
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
                    'Yoga and health',
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
                    'This is description yea this is decription',
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
          Positioned(
            top: 5.0,
            left: isFirstItem ? 20.0 : 5.0,
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
      ),
    );
  }
}
