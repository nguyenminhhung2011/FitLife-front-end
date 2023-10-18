import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/handle_time.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class MessageItem extends StatefulWidget {
  final bool isBot;
  final String content;
  final DateTime time;
  final bool loading;
  const MessageItem({
    super.key,
    required this.isBot,
    required this.content,
    required this.time,
    required this.loading,
  });

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
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
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: widget.isBot
                    ? Theme.of(context).scaffoldBackgroundColor
                    : Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0),
                  bottomRight: widget.isBot
                      ? const Radius.circular(10.0)
                      : const Radius.circular(0.0),
                  bottomLeft: widget.isBot
                      ? const Radius.circular(0.0)
                      : const Radius.circular(10.0),
                ),
              ),
              child: Text(
                widget.content,
                style: context.titleSmall.copyWith(
                  fontSize: 13.0,
                  color: widget.isBot ? context.titleLarge.color : Colors.black,
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
      if (widget.isBot)
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
      if (!widget.isBot) SizedBox(width: context.widthDevice * 0.1),
      SizedBox(width: context.widthDevice * 0.05)
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: widget.isBot ? content : content.reversed.toList(),
      ),
    );
  }
}
