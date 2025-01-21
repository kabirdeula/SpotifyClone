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
          Text(
            "Enjoy Listening to Music",
            style: AppTypography.headline3(color: Colors.white)
                .copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12.0),
          Text(
            AppStrings.fillerText,
            style: AppTypography.bodyText2(color: AppColors.line),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24.0),
          CustomElevatedButton(
            onPressed: () {},
            label: 'Get Started',
          ),
        ],
      ),
    );
  }
}
