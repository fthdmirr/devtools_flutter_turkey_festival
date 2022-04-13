part of '../flutter_inspector.dart';

class _RecomandedListViewWidget extends StatelessWidget {
  const _RecomandedListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.3),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) => _RecomandedContainerWidget(
              imagePath: 'assets/island$index.jpg',
              place: 'Bali Island',
              location: 'Indonesia')),
    );
  }
}

class _RecomandedContainerWidget extends StatelessWidget {
  const _RecomandedContainerWidget(
      {Key? key,
      required this.imagePath,
      required this.place,
      required this.location})
      : super(key: key);

  final String imagePath;
  final String place;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: Container(
        height: context.dynamicHeight(0.275),
        width: context.dynamicWidth(0.6),
        decoration: BoxDecoration(
          color: AppColors.delicateBlueMist,
          borderRadius: BorderRadius.circular(context.normalValue),
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(context.normalValue),
                child: Image.asset(
                  imagePath,
                  height: context.dynamicHeight(0.2),
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: context.paddingLow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place,
                    style: context.textTheme.headline6
                        ?.copyWith(color: Colors.white),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.white70,
                      ),
                      Text(
                        location,
                        style: context.textTheme.bodyText1
                            ?.copyWith(color: Colors.white70),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
