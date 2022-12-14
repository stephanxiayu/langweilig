import 'package:flutter/material.dart';
import 'package:zero_to_hero/Applicatio/bloc/advicer_bloc.dart';
import 'package:zero_to_hero/Presentation/Adviser/adviverfield.dart';
import 'package:zero_to_hero/Presentation/Adviser/constumbutton.dart';
import 'package:zero_to_hero/Presentation/Adviser/error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdviserPage extends StatelessWidget {
  const AdviserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final adviceBloc = AdvicerBloc();
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "adviser",
          style: themeData.textTheme.headline1,
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Expanded(
              child: Center(
                  child: BlocBuilder<AdvicerBloc, AdvicerState>(
                bloc: adviceBloc,
                builder: (context, adviceState) {
                  if (adviceState is AdvicerInitial) {
                    return const Text("Advice is waiting");
                  } else if (adviceState is AdvicerStateLoading) {
                    return const CircularProgressIndicator(
                      color: Colors.teal,
                    );
                  } else if (adviceState is AdvicerStateLoaded) {
                    return AdviceField(
                      advice: adviceState.advice,
                    );
                  }
                  return const ErrorMessage();
                },
              )),
            ),
            SizedBox(
              height: 200,
              child: Center(child: CostumBotton(
                onpressed: () {
                  adviceBloc.add(AdviceRequestedEvent());
                },
              )),
            )
          ],
        ),
      )),
    );
  }
}
