import 'package:fit_life/core/components/widgets/fit_life/dot_waiting.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/speech_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
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
    final borderRadius = BorderRadius.only(
      topLeft: const Radius.circular(10.0),
      topRight: const Radius.circular(10.0),
      bottomRight: widget.isBot
          ? const Radius.circular(10.0)
          : const Radius.circular(0.0),
      bottomLeft: widget.isBot
          ? const Radius.circular(0.0)
          : const Radius.circular(10.0),
    );

    var content = [
      if (widget.isBot) ...[
        Container(
          width: 35.0,
          height: 35.0,
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
      ],
      Flexible(
        flex: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment:
              widget.isBot ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            InkWell(
              borderRadius: borderRadius,
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
                  borderRadius: borderRadius,
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
            const SizedBox(height: 3.0),
            Text(
              gemmFormat(widget.time),
              style: context.titleSmall.copyWith(fontSize: 12.0),
            )
          ],
        ),
      ),
      if (widget.isBot) ...[
        const SizedBox(width: 10.0),
        InkWell(
          onTap: widget.speechOnPress,
          child: widget.isSpeechText
              ? SpeechIcon()
              : const Icon(CupertinoIcons.volume_mute, size: 18),
        ),
      ],
      if (!widget.isBot) SizedBox(width: context.widthDevice * 0.1),
      SizedBox(width: context.widthDevice * 0.05)
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment:
            widget.isBot ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: widget.isBot ? content : content.reversed.toList(),
      ),
    );
  }
}
