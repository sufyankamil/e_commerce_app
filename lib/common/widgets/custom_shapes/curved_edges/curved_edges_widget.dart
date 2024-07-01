import 'package:flutter/material.dart';

import 'curved_edges.dart';

class ECurvedEdges extends StatelessWidget {
  const ECurvedEdges({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECustomCurvedEdges(),
      child: child,
    );
  }
}
