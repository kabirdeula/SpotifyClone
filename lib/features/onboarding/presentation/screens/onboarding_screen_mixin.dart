part of 'onboarding_screen.dart';

mixin OnboardingScreenMixin {
  Container _buildOverlay() {
    return Container(color: const Color.fromRGBO(0, 0, 0, 0.15));
  }

  Container _buildBackgroundImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetPaths.onboardingBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetPaths.branding, scale: 2.2),
          Spacer(),
          AppText(
            text: AppStrings.onboardingTitle,
            appTextStyle: AppTextStyle.subtitle,
          ),
          const SizedBox(height: 12.0),
          AppText(text: AppStrings.onboardingSubtitle, color: AppColors.label),
          const SizedBox(height: 24.0),
          CustomElevatedButton(
            onPressed: () {},
            label: AppStrings.getStartedButton,
          ),
        ],
      ),
    );
  }
}
