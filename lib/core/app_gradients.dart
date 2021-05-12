import 'dart:math';

import 'package:flutter/material.dart';
import 'package:git_mello/core/app_colors.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    AppColors.gradientoragen,
    AppColors.gradientyellow,
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
