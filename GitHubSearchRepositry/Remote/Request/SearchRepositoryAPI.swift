import Foundation

struct SearchRepositoryAPI: GitHubAPIRequest {
    typealias Response = SearchResponse<RepositoryItem>

    let keyword: String

    var path: String {
        return "/search/repositories"
    }

    var method: HTTPMethodRoutes {
        return .get
    }

    var queryItems: [URLQueryItem] {
        return [URLQueryItem(name: "q", value: keyword)]
    }
}
