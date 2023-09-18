import 'package:flutter/cupertino.dart';

class Voucher extends StatelessWidget {
  const Voucher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:const DecorationImage(
                    image: NetworkImage('https://www.ruthdelacruz.com/wp-content/uploads/2022/02/Pandamart-Valentines-Vouchers.png'),
                    fit: BoxFit.cover
                )
            ),
          )
        ],
      ),
    );
  }
}