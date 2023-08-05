import 'package:flutter/material.dart';

class GoPage {
  GoPage();


  navAndFinish(
      BuildContext context,
      widget,{
        final curve = Curves.ease,
        double x=0.2,
        double y=0,
        bool Rt = false}
      ) =>
      Navigator.of(context).pushAndRemoveUntil(
        _createRoute(Sc: widget,curve:curve,X:x ,Y:y ), (route) =>Rt,
      );

  popNavigation(BuildContext context, {

    final curve = Curves.ease,
    double x=0.0,

    double y=0.2,
  }) {
    Navigator.of(context).pop(_createRoute(curve:curve,X:x ,Y:y ));
  }

  pushNavigation(BuildContext context, {
    required Widget path,
    final curve = Curves.ease,
    double x=0.2,
    double y=0,
  }) {
    Navigator.of(context).
    push(_createRoute(Sc: path,curve:curve,X:x ,Y:y ));
  }
  pushReplacement(BuildContext context, {
    required Widget path,
    final curve = Curves.ease,
    double x=0.2,
    double y=0,
  }) {
    Navigator.of(context).
    pushReplacement(_createRoute(Sc: path,curve:curve,X:x ,Y:y ));
  }




  _createRoute({
    Widget? Sc,
    required var curve,
    required double X,Y,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Sc!,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(X,Y);
        const end = Offset.zero;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

// void getNavigation({required Widget path, Transition transition=Transition.zoom,}){
//   Get.to((context)=>path,transition:transition,);
// }
}