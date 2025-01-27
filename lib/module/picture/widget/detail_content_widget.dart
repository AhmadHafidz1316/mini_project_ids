import 'package:mini_project_ids/core.dart';

class DetailContentWidget extends StatelessWidget {
  final String imagePath;
  final String caption;

  const DetailContentWidget(
      {super.key, required this.imagePath, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Image.network(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerRight,
              child: Text(
            caption,
          )),
        )
      ],
    );
  }
}
