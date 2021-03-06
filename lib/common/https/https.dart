import 'package:dio/dio.dart';
import 'package:flutter_app/common/base/constant.dart';
import 'dart:io';
import 'dart:convert';
import 'package:flutter_app/common/extension/extension.dart';
import 'package:flutter_app/class/login/loginUserInfoManager.dart';
import 'package:flutter_app/class/login/login_entity.dart';
import 'package:flutter_app/common/tools/custom_loading.dart';
import 'package:package_info/package_info.dart';


enum ContentType {
  urlEncoded,
  json
}

enum APIPath {
  /// 系统
  user_refreshToken,          // 刷新AccessToken
  /// 登录
  message_getverifycode,      // 请求获取验证码时的秘钥
  message_sendverifymessage,  // 获取手机验证码
  user_loginuser,             // 手机号登录

  /// 首页
  home_banner,                // 首页轮播图
  home_saveBeauty,            // 美丽救急列表
  home_nightBeauty,           // 超级夜美人列表

  /// 潮区
  postTag_list,               // 推荐标签
  post_newList,               // 推荐列表
  post_attentionList,         // 关注用户的post列表
  post_praisePost,            // post 点赞、取消点赞
  post_collectionPost,        // post 收藏、取消收藏
  post_videoPost,             // 潮区视频列表
  comment_commentList,        // 获取帖子对应的评论列表
  comment_view_more_comment_list, // 查看二级评论列表
  comment_commentInfo,        // 获取一条评论详情
  comment_addPostComment,     // 新增帖子评论
  comment_deletePostComment,  // 删除帖子的一级评论
  comment_deletePostComment2, // 删除帖子的二级评论
  commentPraise_isUserraise,  // 评论点赞、取消点赞
  post_delete,                // 删除帖子

  /// 个人中心
  user_getUserDetail,         // 获取用户资料
  user_ohtersUserInfo,        // 获取他人用户资料
  post_othersPublishPost,     // 用户发帖列表
  user_fansStatisticsList,    // 粉丝列表
  post_praiseStatisticsList,  // 获赞列表
  user_attentionList,         // 关注用户列表
  user_attentionUser,         // 关注/取消关注 用户
  signin_cycleTimes,          // 查看签到次数
  signin_checkSignin,         // 查看是否签到
  signin_doSign,              // 签到
  integral_missionStatus,     // 获取积分任务列表
  integral_integralList,      // 积分明细列表

}


typedef OnSuccess = void Function(Map response);
typedef OnSuccessOfOthers = void Function(Map response);
typedef OnFailure = void Function(Object obj);

class Https {

  Map<String,dynamic> _headers = {

  };

  // 单列
  factory Https() => _share();

  static Https get instance => _share();

  static Https _instance;

  Https._internal();

  static Https _share() {
    if(_instance == null){
      _instance = new Https._internal();
    }
    return _instance;
  }

  /// 校验 AccessToken 是否过期
  checkAccessToken(Function(bool) callback) async {
    bool _isValidOfAccessToken;
    await LoginUserInfoManager().isValidOfAccessToken
        .then((value) => _isValidOfAccessToken = value);
    String _refreshToken;
    await LoginUserInfoManager().refreshToken
        .then((value) => _refreshToken = value);
    if(!_isValidOfAccessToken &&
        _refreshToken.isValid) {
      // 如果过期，且 refreshToken 不为nil，根据 refreshToken 请求新的 AccessToken
      await getAccessTokenWithRefreshToken(callback);
    }else{
      callback(true);
    }
  }

  /// 请求新的 AccessToken
  getAccessTokenWithRefreshToken(Function(bool) callback) async {
    String refreshToken = '';
    await LoginUserInfoManager().refreshToken.then((value) => refreshToken = value);
    _request(
      apiPath: APIPath.user_refreshToken,
      headers: {
        'Authorization' : 'Bearer $refreshToken'
      },
      onSuccess: (data) async {
        var entity = LoginEntity().fromJson(data);
        await LoginUserInfoManager().saveToken(entity).then((value) => callback(value));
      },onFailure: (error){
        callback(false);
    });
  }

  bool _hideLoadingAnimationWhenRequest(APIPath apiPath) {
    if (apiPath == APIPath.user_refreshToken ||
        apiPath == APIPath.message_getverifycode ||
        apiPath == APIPath.message_sendverifymessage ||
        apiPath == APIPath.user_loginuser
    ) {
      return true;
    }
    return false;
  }

  /// Post请求
  post({
    APIPath apiPath,
    Map<String,dynamic> params,
    Map<String,dynamic> headers,
    ContentType contentType = ContentType.urlEncoded,
    OnSuccess onSuccess,
    OnSuccessOfOthers onSuccessOfOthers,
    OnFailure onFailure}) async{
    String accessToken;
    await LoginUserInfoManager().accessToken.then((value) => accessToken = value);
    if(accessToken.isValid) {
      _headers['Authorization'] = 'Bearer $accessToken';
    }

    // 获取APP版本号信息
    String version;
    await PackageInfo.fromPlatform().then((value) => version = value.version);
    if(version.isValid) {
      _headers['clientVersion'] = version;
    }

    if (headers.isValid) {
      _headers.addAll(headers);
    }
    await checkAccessToken((isValid) async {
      _request(
        apiPath: apiPath,
        params: params,
        headers: _headers,
        contentType: contentType,
        onSuccess: onSuccess,
        onSuccessOfOthers: onSuccessOfOthers,
        onFailure: onFailure
      );
    });
  }

  _request({
    APIPath apiPath,
    Map<String,dynamic> params,
    Map<String,dynamic> headers,
    ContentType contentType = ContentType.urlEncoded,
    OnSuccess onSuccess,
    OnSuccessOfOthers onSuccessOfOthers,
    OnFailure onFailure}) async {
    String url = '$baseURL/${apiPath.toString().split('.').last.replaceAll('_', '/')}';
    try {
      bool isHideLoading = _hideLoadingAnimationWhenRequest(apiPath);
      if(!isHideLoading) {
        CustomLoading.showLoading();
      }
      Response response = await new Dio().post(
        url,
        data: contentType == ContentType.urlEncoded ? FormData.fromMap(params) : params,
        onSendProgress: (int progress, int total) { },
        options: Options(
            method: 'Post',
            sendTimeout: 1000 * 15,
            contentType: contentType == ContentType.urlEncoded
                ? 'application/x-www-form-urlencoded'
                : 'application/json',
            headers: headers
        ),
      );
      if(!isHideLoading) { CustomLoading.hideLoading(); }
      if (response.statusCode == HttpStatus.ok) {
        print('\nurl：$url  =========>\nparams：$params \ndatas：$response');
        Map data = json.decode(response.toString());
        if(data["resultCode"] == "0000") {
          onSuccess(data);
        // }else if(data["resultCode"] == "0201") {
        //   // 登录验证码发送成功
        //   onSuccess(data);
        }else{
          onSuccessOfOthers(data);
        }
      }else{
        onFailure(response);
      }
    } catch (exception) {
      if(!_hideLoadingAnimationWhenRequest(apiPath)) { CustomLoading.hideLoading(); }
      print('$url  =========> \n$exception.toString()');
      onFailure(exception);
    }
  }
}
