import 'package:fit_life/core/components/widgets/fit_life/dot_waiting.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/speech_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';

class MessageItem extends StatefulWidget {
  final bool isBot;
  final String content;
  final DateTime time;
  final bool loading;
  final bool isErrorMessage;
  final bool isSpeechText;
  final Function() longPressText;
  final Function() speechOnPress;
  const MessageItem({
    super.key,
    this.isErrorMessage = false,
    this.isSpeechText = false,
    required this.isBot,
    required this.content,
    required this.time,
    required this.loading,
    required this.speechOnPress,
    required this.longPressText,
  });

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    var content = [
      Flexible(
        flex: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment:
              widget.isBot ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            if (widget.isBot) ...[
              _chatBotInformation(context),
              const SizedBox(height: 5.0),
            ],
            InkWell(
              borderRadius: BorderRadius.circular(10.0),
              onLongPress: () {
                if (!widget.isErrorMessage) {
                  widget.longPressText();
                }
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: widget.isErrorMessage
                      ? Colors.red
                      : widget.isBot
                          ? Theme.of(context).scaffoldBackgroundColor
                          : Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: widget.loading
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SizedBox(
                          width: 80,
                          child: DotWaiting(
                            radius: 6,
                            animationDuration:
                                const Duration(milliseconds: 300),
                            innerPadding: 2,
                            color: context.titleLarge.color!,
                          ),
                        ),
                      )
                    : Text(
                        widget.content,
                        style: context.titleSmall.copyWith(
                          fontSize: 13.0,
                          color: widget.isBot
                              ? context.titleLarge.color
                              : Colors.black,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
      if (widget.isBot) ...[
        const SizedBox(width: 10.0),
        InkWell(
          onTap: widget.speechOnPress,
          child: widget.isSpeechText
              ? SpeechIcon()
              : const Icon(CupertinoIcons.volume_mute, size: 16),
        ),
      ],
      if (!widget.isBot) SizedBox(width: context.widthDevice * 0.1),
      SizedBox(width: context.widthDevice * 0.05)
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            widget.isBot ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: widget.isBot ? content : content.reversed.toList(),
      ),
    );
  }

  Row _chatBotInformation(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 5.0),
        Container(
          width: 18.0,
          height: 18.0,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            image: const DecorationImage(
              image: AssetImage(ImageConst.brainIcon),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 5.0),
        Text(
          "NIS_AI_Coach",
          style: context.titleSmall.copyWith(fontSize: 12.0),
        ),
        const SizedBox(width: 5.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(width: 1, color: Theme.of(context).hintColor),
          ),
          child: Text(
            "Yoga",
            style: context.titleSmall.copyWith(
                fontSize: 10.0,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
