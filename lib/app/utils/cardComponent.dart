import 'package:flutter/material.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';

class CardComponentWidget extends StatelessWidget {
  final String shopName, location;
  final double ratings;
  final ImageProvider image;
  Function()? onTap;
  CardComponentWidget(
      {super.key,
      required this.shopName,
      required this.location,
      required this.ratings,
      required this.image,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
            image: DecorationImage(image: image, fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shopName,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: AppColors.buttonColor,
                              size: 18,
                            ),
                            Text(
                              location,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_outline,
                          color: AppColors.buttonColor,
                          size: 15,
                        ),
                        Text(
                          '$ratings',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
