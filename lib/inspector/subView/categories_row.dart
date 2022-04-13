part of '../flutter_inspector.dart';

class _CategoriesRowWidget extends StatelessWidget {
  const _CategoriesRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _CategoriesContainer(
          title: 'Hepsi',
          icon: Icons.align_horizontal_left_rounded,
        ),
        _CategoriesContainer(
          title: 'Dağlar',
          icon: Icons.height_outlined,
        ),
        _CategoriesContainer(
          title: 'Denizler',
          icon: Icons.anchor_sharp,
        ),
      ],
    );
  }
}

class _CategoriesContainer extends StatelessWidget {
  const _CategoriesContainer({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.075),
      width: context.dynamicWidth(0.25),
      decoration: BoxDecoration(
        color: AppColors.delicateBlueMist,
        borderRadius: BorderRadius.circular(context.lowValue),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            child: Icon(icon),
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
