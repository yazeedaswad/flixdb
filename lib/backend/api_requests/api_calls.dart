import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TrendingCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Trending',
      apiUrl:
          'https://api.themoviedb.org/3/trending/movie/week?api_key=b22df3b6da0c14d60d857e8e848ceff4',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PopularMoviesCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PopularMovies',
      apiUrl:
          'https://api.themoviedb.org/3/movie/top_rated?api_key=c5f91272e8db79e3deb27701f18d2894&language=en-US&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MovieDetailsCall {
  static Future<ApiCallResponse> call({
    int? movieId = 718789,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'MovieDetails',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}?api_key=b22df3b6da0c14d60d857e8e848ceff4&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MovieCastCall {
  static Future<ApiCallResponse> call({
    int? movieId = 718789,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'MovieCast',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/credits?api_key=b22df3b6da0c14d60d857e8e848ceff4&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MovieImagesCall {
  static Future<ApiCallResponse> call({
    int? movieId = 718789,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'MovieImages',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/images?api_key=b22df3b6da0c14d60d857e8e848ceff4&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SimilerMoviesCall {
  static Future<ApiCallResponse> call({
    int? movieId = 1444,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SimilerMovies',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/similar?api_key=b22df3b6da0c14d60d857e8e848ceff4&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchMoviesCall {
  static Future<ApiCallResponse> call({
    String? query = 'Thor',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchMovies',
      apiUrl:
          'https://api.themoviedb.org/3/search/movie?api_key=b22df3b6da0c14d60d857e8e848ceff4&language=en-US&query=${query}&page=1&include_adult=false',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NowPlayingCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'NowPlaying',
      apiUrl:
          'https://api.themoviedb.org/3/movie/now_playing?api_key=b22df3b6da0c14d60d857e8e848ceff4&language=en-US&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RecommendationsCall {
  static Future<ApiCallResponse> call({
    int? movieId = 227,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Recommendations',
      apiUrl:
          'https://api.themoviedb.org/3/movie/{movie_id}/recommendations?api_key=b22df3b6da0c14d60d857e8e848ceff4&language=en-US&page=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
