import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/text_field_icon.dart';
import 'package:flutter_base_clean_architecture/generated/l10n.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';
import '../../../../../../core/components/extensions/context_extensions.dart';

class FillYourProfileScreen extends StatefulWidget {
  final String? imageUrl;
  const FillYourProfileScreen({super.key, this.imageUrl});

  @override
  State<FillYourProfileScreen> createState() => _FillYourProfileScreenState();
}

class _FillYourProfileScreenState extends State<FillYourProfileScreen> {
  TextEditingController fullNameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();

  @override
  void dispose() {
    fullNameCtrl.dispose();
    phoneCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widthDevice = context.widthDevice;

    return OnboardingStepLayout(
      title: S.of(context).fillYourProfile,
      description: S.of(context).alwayChangeItLater,
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  (widget.imageUrl == null)
                      ? Container(
                          width: widthDevice * 0.4,
                          height: widthDevice * 0.4,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/brain.png',
                              ),
                            ),
                          ),
                        )
                      : SizedBox(
                          width: widthDevice * 0.4,
                          height: widthDevice * 0.4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              widget.imageUrl!,
                              width: widthDevice * 0.4,
                              height: widthDevice * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: InkWell(
                  onTap: () async {},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: context.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 80),
          TextFieldWithIconWidget(
            hintText: S.of(context).fullname,
            controller: fullNameCtrl,
            icon: Icons.account_circle_rounded,
          ),
          const SizedBox(height: 20),
          TextFieldWithIconWidget(
            hintText: S.of(context).phoneNumber,
            controller: phoneCtrl,
            icon: Icons.phone,
          ),
        ],
      ),
    );
  }
}
