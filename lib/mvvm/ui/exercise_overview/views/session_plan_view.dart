import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/appbar.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/mvvm/me/entity/session/add_session_dto.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/view_model/session_plan_data.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/view_model/session_plan_view_model.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/views/widgets/today_exercise_item.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readmore/readmore.dart';

class SessionPlanView extends ConsumerStatefulWidget {
  const SessionPlanView({super.key});

  @override
  ConsumerState<SessionPlanView> createState() => _SessionPlanViewState();
}

class _SessionPlanViewState extends ConsumerState<SessionPlanView> {
  SessionPlanData get _data => ref.watch(sessionPlanStateNotifier).data;

  SessionPlanViewModel get _vm => ref.read(sessionPlanStateNotifier.notifier);

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  EdgeInsets get _padding => const EdgeInsets.symmetric(horizontal: 15.0);

  TextStyle get _smallStyle => context.titleSmall
      .copyWith(fontSize: 12.0, color: Theme.of(context).hintColor);

  bool isLoadingCreated = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _vm.getAllSession();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ButtonCustom(
          height: 45.0,
          radius: 5.0,
          loading: isLoadingCreated,
          child: Text(
            "Create session plan",
            style: context.titleMedium
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPress: () async {
            setState(() {
              isLoadingCreated = true;
            });
            final dto = await context.openPageWithRouteAndParams(
                Routes.addSessionPlan, _data.id);
            if (dto is AddSessionDTO) {
              await _vm.createSession(id: _data.id!, dto: dto);
            }
            setState(() {
              isLoadingCreated = false;
            });
          },
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: <Widget>[
          AppBarCustom(
            backgroundColor: _primaryColor,
            pinned: true,
            widgetExpanded: _sessionOverview(context),
            expandedHeight: context.heightDevice * 0.25,
            title: <Widget>[
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              ),
            ],
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz, color: Colors.white),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                const SizedBox(height: 10.0),
                const DividerDot(),
                const SizedBox(height: 15.0),
                if (_data.time != null)
                  Padding(
                    padding: _padding,
                    child: Text(
                        '♻️ ${getMMMMEEEd(DateTime.fromMillisecondsSinceEpoch(_data.time!))}',
                        style: _smallStyle),
                  ),
                _header(
                  context,
                  header: _data.title ?? "",
                ),
                Padding(
                  padding: _padding,
                  child: ReadMoreText(
                    _data.description ?? "",
                    trimLines: 2,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    lessStyle: _smallStyle.copyWith(color: _primaryColor),
                    moreStyle: _smallStyle.copyWith(color: _primaryColor),
                    style: _smallStyle.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 20),
                _header(context, header: "Select sessions"),
                const SizedBox(height: 10.0),
                if (_data.sessions?.isEmpty ?? true)
                  Padding(
                    padding: _padding,
                    child: Center(
                      child: Text(
                        "No session found. Create a new session now!",
                        style: _smallStyle,
                      ),
                    ),
                  ),
                if (_data.sessions?.isNotEmpty ?? false)
                  ..._data.sessions!
                      .map(
                        (e) => TodayExerciseItem(
                          header: e.name ?? "",
                          level: e.level ?? "",
                          id: e.id,
                          description: e.description ?? "",
                        ),
                      )
                      .expand(
                        (e) => [e, const SizedBox(height: 10.0)],
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _header(BuildContext context, {required String header}) {
    return Padding(
      padding: _padding.copyWith(top: 10.0, bottom: 10.0),
      child: Text(
        header,
        style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Container _sessionOverview(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: kToolbarHeight),
          Text(
            "Select session plan",
            style: context.titleLarge.copyWith(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 5.0),
          Text(
            "Choose a session to start your workout",
            style: _smallStyle.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text.rich(
              TextSpan(
                style: _smallStyle.copyWith(color: Colors.grey),
                children: [
                  "🌄 Morning exercise | 🌍 Afternoom exercise |\n 🌆 Evening exercise"
                ].map((element) => TextSpan(text: element)).toList(),
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
