// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_app/class/profile/profile_info_entity.dart';
import 'package:flutter_app/generated/json/profile_info_entity_helper.dart';
import 'package:flutter_app/class/fashion/post_model_entity.dart';
import 'package:flutter_app/generated/json/post_model_entity_helper.dart';
import 'package:flutter_app/class/login/login_entity.dart';
import 'package:flutter_app/generated/json/login_entity_helper.dart';
import 'package:flutter_app/class/home/home_banner_entity.dart';
import 'package:flutter_app/generated/json/home_banner_entity_helper.dart';
import 'package:flutter_app/class/fashion/attention/fashion_attention_user_entity.dart';
import 'package:flutter_app/generated/json/fashion_attention_user_entity_helper.dart';
import 'package:flutter_app/class/home/home_page_entity.dart';
import 'package:flutter_app/generated/json/home_page_entity_helper.dart';
import 'package:flutter_app/class/fashion/recommend/fashion_recommend_tagList_entity.dart';
import 'package:flutter_app/generated/json/fashion_recommend_tagList_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case ProfileInfoEntity:
			return profileInfoEntityFromJson(data as ProfileInfoEntity, json) as T;			case ProfileInfoData:
			return profileInfoDataFromJson(data as ProfileInfoData, json) as T;			case ProfileInfoDataUser:
			return profileInfoDataUserFromJson(data as ProfileInfoDataUser, json) as T;			case PostModelEntity:
			return postModelEntityFromJson(data as PostModelEntity, json) as T;			case PostModelPostImgList:
			return postModelPostImgListFromJson(data as PostModelPostImgList, json) as T;			case PostModelPostTag:
			return postModelPostTagFromJson(data as PostModelPostTag, json) as T;			case PostModelPostTopic:
			return postModelPostTopicFromJson(data as PostModelPostTopic, json) as T;			case LoginEntity:
			return loginEntityFromJson(data as LoginEntity, json) as T;			case LoginData:
			return loginDataFromJson(data as LoginData, json) as T;			case HomeBannerEntity:
			return homeBannerEntityFromJson(data as HomeBannerEntity, json) as T;			case HomeBannerData:
			return homeBannerDataFromJson(data as HomeBannerData, json) as T;			case HomeBannerDataBannerList:
			return homeBannerDataBannerListFromJson(data as HomeBannerDataBannerList, json) as T;			case FashionAttentionUserEntity:
			return fashionAttentionUserEntityFromJson(data as FashionAttentionUserEntity, json) as T;			case FashionAttentionUserData:
			return fashionAttentionUserDataFromJson(data as FashionAttentionUserData, json) as T;			case FashionAttentionUserDataPostList:
			return fashionAttentionUserDataPostListFromJson(data as FashionAttentionUserDataPostList, json) as T;			case FashionAttentionUserDataPostListList:
			return fashionAttentionUserDataPostListListFromJson(data as FashionAttentionUserDataPostListList, json) as T;			case HomePageEntity:
			return homePageEntityFromJson(data as HomePageEntity, json) as T;			case HomePageData:
			return homePageDataFromJson(data as HomePageData, json) as T;			case HomePageDataRecommendList:
			return homePageDataRecommendListFromJson(data as HomePageDataRecommendList, json) as T;			case HomePageDataRecommandListLists:
			return homePageDataRecommandListListsFromJson(data as HomePageDataRecommandListLists, json) as T;			case FashionRecommendTagListEntity:
			return fashionRecommendTagListEntityFromJson(data as FashionRecommendTagListEntity, json) as T;			case FashionRecommendTagListData:
			return fashionRecommendTagListDataFromJson(data as FashionRecommendTagListData, json) as T;			case FashionRecommendTagListDataPostTags:
			return fashionRecommendTagListDataPostTagsFromJson(data as FashionRecommendTagListDataPostTags, json) as T;			case FashionRecommendTagListDataPostTagsLists:
			return fashionRecommendTagListDataPostTagsListsFromJson(data as FashionRecommendTagListDataPostTagsLists, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {			case ProfileInfoEntity:
			return profileInfoEntityToJson(data as ProfileInfoEntity);			case ProfileInfoData:
			return profileInfoDataToJson(data as ProfileInfoData);			case ProfileInfoDataUser:
			return profileInfoDataUserToJson(data as ProfileInfoDataUser);			case PostModelEntity:
			return postModelEntityToJson(data as PostModelEntity);			case PostModelPostImgList:
			return postModelPostImgListToJson(data as PostModelPostImgList);			case PostModelPostTag:
			return postModelPostTagToJson(data as PostModelPostTag);			case PostModelPostTopic:
			return postModelPostTopicToJson(data as PostModelPostTopic);			case LoginEntity:
			return loginEntityToJson(data as LoginEntity);			case LoginData:
			return loginDataToJson(data as LoginData);			case HomeBannerEntity:
			return homeBannerEntityToJson(data as HomeBannerEntity);			case HomeBannerData:
			return homeBannerDataToJson(data as HomeBannerData);			case HomeBannerDataBannerList:
			return homeBannerDataBannerListToJson(data as HomeBannerDataBannerList);			case FashionAttentionUserEntity:
			return fashionAttentionUserEntityToJson(data as FashionAttentionUserEntity);			case FashionAttentionUserData:
			return fashionAttentionUserDataToJson(data as FashionAttentionUserData);			case FashionAttentionUserDataPostList:
			return fashionAttentionUserDataPostListToJson(data as FashionAttentionUserDataPostList);			case FashionAttentionUserDataPostListList:
			return fashionAttentionUserDataPostListListToJson(data as FashionAttentionUserDataPostListList);			case HomePageEntity:
			return homePageEntityToJson(data as HomePageEntity);			case HomePageData:
			return homePageDataToJson(data as HomePageData);			case HomePageDataRecommendList:
			return homePageDataRecommendListToJson(data as HomePageDataRecommendList);			case HomePageDataRecommandListLists:
			return homePageDataRecommandListListsToJson(data as HomePageDataRecommandListLists);			case FashionRecommendTagListEntity:
			return fashionRecommendTagListEntityToJson(data as FashionRecommendTagListEntity);			case FashionRecommendTagListData:
			return fashionRecommendTagListDataToJson(data as FashionRecommendTagListData);			case FashionRecommendTagListDataPostTags:
			return fashionRecommendTagListDataPostTagsToJson(data as FashionRecommendTagListDataPostTags);			case FashionRecommendTagListDataPostTagsLists:
			return fashionRecommendTagListDataPostTagsListsToJson(data as FashionRecommendTagListDataPostTagsLists);    }
    return data as T;
  }
  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {			case 'ProfileInfoEntity':
			return ProfileInfoEntity().fromJson(json);			case 'ProfileInfoData':
			return ProfileInfoData().fromJson(json);			case 'ProfileInfoDataUser':
			return ProfileInfoDataUser().fromJson(json);			case 'PostModelEntity':
			return PostModelEntity().fromJson(json);			case 'PostModelPostImgList':
			return PostModelPostImgList().fromJson(json);			case 'PostModelPostTag':
			return PostModelPostTag().fromJson(json);			case 'PostModelPostTopic':
			return PostModelPostTopic().fromJson(json);			case 'LoginEntity':
			return LoginEntity().fromJson(json);			case 'LoginData':
			return LoginData().fromJson(json);			case 'HomeBannerEntity':
			return HomeBannerEntity().fromJson(json);			case 'HomeBannerData':
			return HomeBannerData().fromJson(json);			case 'HomeBannerDataBannerList':
			return HomeBannerDataBannerList().fromJson(json);			case 'FashionAttentionUserEntity':
			return FashionAttentionUserEntity().fromJson(json);			case 'FashionAttentionUserData':
			return FashionAttentionUserData().fromJson(json);			case 'FashionAttentionUserDataPostList':
			return FashionAttentionUserDataPostList().fromJson(json);			case 'FashionAttentionUserDataPostListList':
			return FashionAttentionUserDataPostListList().fromJson(json);			case 'HomePageEntity':
			return HomePageEntity().fromJson(json);			case 'HomePageData':
			return HomePageData().fromJson(json);			case 'HomePageDataRecommendList':
			return HomePageDataRecommendList().fromJson(json);			case 'HomePageDataRecommandListLists':
			return HomePageDataRecommandListLists().fromJson(json);			case 'FashionRecommendTagListEntity':
			return FashionRecommendTagListEntity().fromJson(json);			case 'FashionRecommendTagListData':
			return FashionRecommendTagListData().fromJson(json);			case 'FashionRecommendTagListDataPostTags':
			return FashionRecommendTagListDataPostTags().fromJson(json);			case 'FashionRecommendTagListDataPostTagsLists':
			return FashionRecommendTagListDataPostTagsLists().fromJson(json);    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {			case 'ProfileInfoEntity':
			return List<ProfileInfoEntity>();			case 'ProfileInfoData':
			return List<ProfileInfoData>();			case 'ProfileInfoDataUser':
			return List<ProfileInfoDataUser>();			case 'PostModelEntity':
			return List<PostModelEntity>();			case 'PostModelPostImgList':
			return List<PostModelPostImgList>();			case 'PostModelPostTag':
			return List<PostModelPostTag>();			case 'PostModelPostTopic':
			return List<PostModelPostTopic>();			case 'LoginEntity':
			return List<LoginEntity>();			case 'LoginData':
			return List<LoginData>();			case 'HomeBannerEntity':
			return List<HomeBannerEntity>();			case 'HomeBannerData':
			return List<HomeBannerData>();			case 'HomeBannerDataBannerList':
			return List<HomeBannerDataBannerList>();			case 'FashionAttentionUserEntity':
			return List<FashionAttentionUserEntity>();			case 'FashionAttentionUserData':
			return List<FashionAttentionUserData>();			case 'FashionAttentionUserDataPostList':
			return List<FashionAttentionUserDataPostList>();			case 'FashionAttentionUserDataPostListList':
			return List<FashionAttentionUserDataPostListList>();			case 'HomePageEntity':
			return List<HomePageEntity>();			case 'HomePageData':
			return List<HomePageData>();			case 'HomePageDataRecommendList':
			return List<HomePageDataRecommendList>();			case 'HomePageDataRecommandListLists':
			return List<HomePageDataRecommandListLists>();			case 'FashionRecommendTagListEntity':
			return List<FashionRecommendTagListEntity>();			case 'FashionRecommendTagListData':
			return List<FashionRecommendTagListData>();			case 'FashionRecommendTagListDataPostTags':
			return List<FashionRecommendTagListDataPostTags>();			case 'FashionRecommendTagListDataPostTagsLists':
			return List<FashionRecommendTagListDataPostTagsLists>();    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}