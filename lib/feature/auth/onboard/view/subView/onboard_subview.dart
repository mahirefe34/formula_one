import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';

import '../../../../../core/base/view/base_view.dart';
import '../../../../../core/components/button/title_text_button.dart';
import '../../../../../core/components/indicator/loading_indicator.dart';
import '../../../../../core/constants/enums/navigation_enums.dart';
import '../../../../../core/init/lang/locale_keys.g.dart';
import '../../viewmodel/onboard_view_model.dart';

class OnBoardSubView extends StatelessWidget {
  const OnBoardSubView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<OnBoardViewModel>(
        viewModel: OnBoardViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, OnBoardViewModel viewModel) =>
            Scaffold(
                backgroundColor: context.colorScheme.primary,
                appBar: buildAppBar(context, viewModel),
                body: SingleChildScrollView(
                    child: Observer(
                        builder: (_) => viewModel.isLoading
                            ? const LoadingIndicator()
                            : buildStudentForm(viewModel, context)))));
  }

  AppBar buildAppBar(BuildContext context, OnBoardViewModel viewModel) =>
      AppBar(
          title: Text(LocaleKeys.onBoard_getStarted.tr(),
              style: TextStyle(color: context.colorScheme.onPrimary)),
          leading: IconButton(
              onPressed: () => viewModel.navigation.router
                  .go(NavigationEnums.onBoardView.routeName),
              icon: const Icon(Icons.arrow_back),
              color: context.colorScheme.onPrimary));

  Form buildStudentForm(OnBoardViewModel viewModel, BuildContext context) =>
      Form(
        autovalidateMode: AutovalidateMode.always,
        key: viewModel.formStateOnBoardSubView,
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            children: <Widget>[
              buildNameTextField(viewModel, context),
              context.emptySizedHeightBoxLow3x,
              buildBirthDateTextField(viewModel, context),
              context.emptySizedHeightBoxLow3x,
              buildElevatedButton(context, viewModel)
            ],
          ),
        ),
      );

  TextFormField buildNameTextField(
          OnBoardViewModel viewModel, BuildContext context) =>
      TextFormField(
        controller: viewModel.nameTextFieldController,
        validator: (value) => (value == null || value.isEmpty)
            ? LocaleKeys.isValidName.tr()
            : null,
        decoration: InputDecoration(
            labelText: LocaleKeys.onBoard_onBoardSubView_name.tr()),
        keyboardType: TextInputType.name,
      );

  TextFormField buildBirthDateTextField(
          OnBoardViewModel viewModel, BuildContext context) =>
      TextFormField(
        controller: viewModel.favoriteDriverTextFieldController,
        validator: (value) => (value == null || value.isEmpty)
            ? LocaleKeys.isValidFavoriteDriver.tr()
            : null,
        decoration: InputDecoration(
            labelText: LocaleKeys.onBoard_onBoardSubView_favoriteDriver.tr()),
        keyboardType: TextInputType.name,
        // inputFormatters: [
        //   LengthLimitingTextInputFormatter(10),
        //   FilteringTextInputFormatter.singleLineFormatter
        // ],
      );

  Widget buildElevatedButton(
          BuildContext context, OnBoardViewModel viewModel) =>
      TitleTextButton(
          onPressed: viewModel.completeToOnBoardSubView,
          child: Center(
              child: Text(LocaleKeys.onBoard_onBoardSubView_button.tr())));
}
