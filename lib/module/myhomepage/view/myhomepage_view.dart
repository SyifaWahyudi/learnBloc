import 'package:design_ui_bloc/bloc/home/counter_cubit.dart';
import 'package:design_ui_bloc/util/theme/theme_color.dart';
import 'package:design_ui_bloc/util/widgets/circular.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:design_ui_bloc/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../controller/myhomepage_controller.dart';

class MyhomepageView extends StatefulWidget {
  const MyhomepageView({super.key});

  Widget build(context, MyhomepageController controller) {
    CounterCubit mycounter = CounterCubit();
    controller.view = this;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: decorHome,
          child: BlocConsumer<CounterCubit, int>(
            bloc: mycounter,
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                  "text",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ));
            },
            listenWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("$state", style: txtU1),
                  Text("${mycounter.curState}", style: txtU1),
                ],
              );
            },
          ),
        ),
        const Gap(25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: MaterialButton(
                onPressed: () {
                  mycounter.kurang();
                },
                child: const Icon(
                  Icons.remove_sharp,
                  size: 24.0,
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: MaterialButton(
                onPressed: () {
                  mycounter.tambahData();
                },
                child: const Icon(
                  Icons.add,
                  size: 24.0,
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }

  @override
  State<MyhomepageView> createState() => MyhomepageController();
}
