part of '../flutter_inspector.dart';


class _TitleTextWidget extends StatelessWidget {
  const _TitleTextWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style:
            context.textTheme.headline5?.copyWith(fontWeight: FontWeight.w500));
  }
}