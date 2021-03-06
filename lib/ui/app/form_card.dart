import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/constants.dart';

class FormCard extends StatelessWidget {
  const FormCard({
    Key key,
    this.forceNarrow = false,
    this.children,
    this.child,
    this.crossAxisAlignment,
    this.padding,
  }) : super(key: key);

  final Widget child;
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final bool forceNarrow;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          (forceNarrow
              ? EdgeInsets.symmetric(
                  vertical: kMobileDialogPadding,
                  horizontal: (MediaQuery.of(context).size.width - 400) / 2,
                )
              : const EdgeInsets.all(kMobileDialogPadding)),
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: child != null
              ? child
              : Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment:
                        crossAxisAlignment ?? CrossAxisAlignment.center,
                    children: children,
                  ),
                ),
        ),
      ),
    );
  }
}
