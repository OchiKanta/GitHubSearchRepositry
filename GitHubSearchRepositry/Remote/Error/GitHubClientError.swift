import Foundation

enum GitHubClientError: Error {
    //接続エラー
    case connectionError(Error)
    //レスポンス変換エラー
    case responseParseError(Error)
    //APIよりレスポンスエラー
    case apiError(GitHubAPIError)
}
