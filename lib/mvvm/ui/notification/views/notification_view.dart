import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationView extends ConsumerStatefulWidget {
  const NotificationView({super.key});

  @override
  ConsumerState<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends ConsumerState<NotificationView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _backgroundColor,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
        ),
        title: Text(
          "Notification",
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () => context.pop(),
            icon: Icon(
              Icons.more_horiz,
              color: context.titleLarge.color,
            ),
          )
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (_, __) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Divider(),
        ),
        itemBuilder: (_, index) {
          return ListTile(
            leading: Container(
              padding: const EdgeInsets.all(7.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor.withOpacity(0.3),
              ),
              child: Image.asset(ImageConst.icon, width: 40.0, height: 40.0),
            ),
            title: Text(
              'You miss a exercise',
              style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Exercise start in ${getMMMMEEEd(DateTime.now())}",
              style: context.titleSmall
                  .copyWith(color: Theme.of(context).hintColor, fontSize: 12.0),
            ),
            trailing: Icon(Icons.notifications_active_outlined,
                color: context.titleLarge.color),
          );
        },
      ),
    );
  }
}
