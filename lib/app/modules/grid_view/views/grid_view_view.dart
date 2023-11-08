import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/grid_view_controller.dart';

class GridViewView extends GetView<GridViewController> {
  const GridViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: Get.width * .5,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        // const SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 12,
        //   mainAxisSpacing: 12,
        // ),
        padding: const EdgeInsets.fromLTRB(12, 24, 12, 150),
        itemBuilder: (context, index) {
          Faker faker = Faker();
          return InkWell(
            onTap: () {
              //
            },
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage('assets/blob-scene-haikei-02.png'),
                      fit: BoxFit.cover,
                      opacity: .16,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(2, 4),
                        blurRadius: 6,
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                          child: AspectRatio(
                            aspectRatio: 4 / 2,
                            child: Image.network(
                              faker.image.image(random: true),
                              fit: BoxFit.cover,
                              height: 100,
                              width: Get.width,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.verified_rounded,
                                    size: 14,
                                    color: Colors.blue,
                                  ),
                                  const SizedBox(width: 4),
                                  const Icon(
                                    Icons.verified_rounded,
                                    size: 14,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(width: 4),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.red,
                                          Colors.red.shade600,
                                          Colors.red.shade500,
                                          Colors.red.shade400,
                                          Colors.red.shade300,
                                          Colors.red.shade200,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.radio_button_on_sharp,
                                          size: 9,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          '10 km',
                                          style: Get.textTheme.labelMedium?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Flexible(
                                child: Text(
                                  'Toko ${faker.person.name()}',
                                  maxLines: 1,
                                  style: Get.textTheme.labelLarge?.copyWith(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...[
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.grey.shade400,
                                      size: 12,
                                    ),
                                    Flexible(
                                      // width: Get.width * .3,
                                      child: Text(
                                        'Jl. Retawu No.30, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65115',
                                        maxLines: 2,
                                        style: Get.textTheme.labelLarge?.copyWith(
                                          overflow: TextOverflow.fade,
                                          color: Colors.grey,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.7),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey.shade200)),
                        child: Text(
                          'Retail',
                          maxLines: 1,
                          style: Get.textTheme.labelLarge?.copyWith(fontSize: 11),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
