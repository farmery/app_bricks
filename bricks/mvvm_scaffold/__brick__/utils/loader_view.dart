import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app_colors.dart';
import 'vms/loader_vm.dart';

class LoaderView extends StatelessWidget {
  const LoaderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColors(context);
    return Consumer<LoaderVm>(
      builder: (context, loaderVm, child) {
        if (loaderVm.silent) return const SizedBox();
        return AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: loaderVm.isLoading
              ? Container(
                  color: colors.reversePrimary.withOpacity(0.6),
                  child: Center(
                    child: CupertinoActivityIndicator(
                      color: colors.white,
                      radius: 14,
                    ),
                  ),
                )
              : const SizedBox(),
        );
      },
    );
  }
}
