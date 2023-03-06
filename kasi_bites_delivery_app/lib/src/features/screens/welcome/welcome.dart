import 'package:flutter/material.dart';
import 'package:kasi_bites_delivery_app/src/constants/image_strings.dart';
import 'package:kasi_bites_delivery_app/src/constants/sizes.dart';
import 'package:kasi_bites_delivery_app/src/constants/text_strings.dart';
import 'package:kasi_bites_delivery_app/src/features/screens/admin_screens/admin_login.dart';
import 'package:kasi_bites_delivery_app/src/features/screens/driver_screens/driver_login.dart';
import 'package:kasi_bites_delivery_app/src/features/screens/seller_screens/seller_login.dart';
import 'package:kasi_bites_delivery_app/src/features/screens/user_screens/user_login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(tDefaultSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: const AssetImage(tWelcomeImage), height: height * 0.4),
          Column(
            children: [
              Text(
                tWelcomeTitle,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                tWelcomeSubTitle,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginUser();
                      },
                    ),
                  );
                },
                child: const Text(tUser),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginSeller();
                      },
                    ),
                  );
                },
                child: const Text(tSeller),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginDriver();
                      },
                    ),
                  );
                },
                child: const Text(tDriver),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginAdmin();
                      },
                    ),
                  );
                },
                child: const Text(tAdmin),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
