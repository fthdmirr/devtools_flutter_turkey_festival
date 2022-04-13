part of '../flutter_inspector.dart';

class _PopulerListView extends StatelessWidget {
  const _PopulerListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) => _PopulerImageWidget(
          imagePath: 'assets/island$index.jpg',
          place: 'Penisula',
          location: 'South Africa'),
    );
  }
}

class _PopulerImageWidget extends StatelessWidget {
  const _PopulerImageWidget({
    Key? key,
    required this.imagePath,
    required this.place,
    required this.location,
  }) : super(key: key);

  final String imagePath;
  final String place;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingLow,
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    FlutterInspectorDetail(imagePath: imagePath))),
        child: Hero(
          tag: imagePath,
          child: Stack(
            children: [
              SizedBox(
                height: context.dynamicHeight(0.25),
                width: context.dynamicWidth(0.9),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(context.normalValue),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: context.lowValue,
                child: Padding(
                  padding: context.paddingLow,
                  child: Column(
                    children: [
                      Text(
                        '$place ',
                        style: context.textTheme.headline6
                            ?.copyWith(color: Colors.white),
                      ),
                      Text(location,
                          style: context.textTheme.bodyText1
                              ?.copyWith(color: Colors.white)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
