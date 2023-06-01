import 'package:w3schools/componets/App_Manager/assetsmanger.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String description;
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.description,
  });

  static final List<OnBoardingModel> dummy_data = [
    OnBoardingModel(
        image: AssetImageManger.watchVideo,
        title: 'All your materials in one place',
        description:
            'Easy access to your all class materials in many format such as PDF or MP4'),
    OnBoardingModel(
        image: AssetImageManger.watchVideo,
        title: 'All your materials in one place',
        description:
            'Easy access to your all class materials in many format such as PDF or MP4'),
    OnBoardingModel(
        image: AssetImageManger.watchVideo,
        title: 'All your materials in one place',
        description:
            'Easy access to your all class materials in many format such as PDF or MP4'),
    OnBoardingModel(
        image: AssetImageManger.watchVideo,
        title: 'All your materials in one place',
        description:
            'Easy access to your all class materials in many format such as PDF or MP4'),
    OnBoardingModel(
        image: AssetImageManger.watchVideo,
        title: 'All your materials in one place',
        description:
            'Easy access to your all class materials in many format such as PDF or MP4'),
  ];
}
