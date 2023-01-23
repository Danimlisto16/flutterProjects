import '../main.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
        elevation: 10.0,
        child: Column(
          children: [
            const ListTile(
              title: Text("Soy un titulo"),
              leading: Icon(
                Icons.photo_album,
                color: AppTheme.primary,
              ),
              subtitle: Text(
                  "Laaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Cancel"),
                    
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Ok"),
                    
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
