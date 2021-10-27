import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/models/program_model.dart';
import 'package:jeve_orlertv_flutter/references.dart';

class ProgramListElement extends StatelessWidget {
  final ProgramModel program;

  const ProgramListElement({Key? key, required this.program}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.0,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: Images.marble, fit: BoxFit.cover),
        ),
        child: Container(
          color: Colors.white.withOpacity(0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                child: Text(program.time, style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Spacer(),
              Center(child: Text(program.title, style: TextStyle(fontWeight: FontWeight.bold))),
              Spacer(),
              Container(
                decoration: BoxDecoration(gradient: References.appBarGradient),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      program.type,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
