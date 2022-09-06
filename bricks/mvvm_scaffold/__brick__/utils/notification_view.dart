import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_colors.dart';
import 'device_dimens.dart';
import 'text_styles.dart';
import 'vms/notify_vm.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<NotifyVm>(context);
    final colors = AppColors(context);
    final styles = TextStyles(context);
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: viewModel.isVisible ? 100 : -deviceHeight(context),
      left: 32,
      right: 32,
      child: Container(
        padding: const EdgeInsets.all(12),
        width: deviceWidth(context) - 64,
        decoration: BoxDecoration(
            color: colors.reversePrimary.withOpacity(0.7),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            viewModel.content,
            style: styles.bodyLight,
          ),
        ),
      ),
    );
  }
}
