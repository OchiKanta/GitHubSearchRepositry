import Foundation

protocol GitHubAPIRequest {

    associatedtype Response: Decodable
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethodRoutes { get }
    var queryItems: [URLQueryItem] { get }
}

extension GitHubAPIRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }

    func buildURLRequest() -> URLRequest {
        let url = baseURL.appendingPathComponent(path)

        var component = URLComponents(url: url, resolvingAgainstBaseURL: true)

        switch method {
        case .get:
            component?.queryItems = queryItems
        default:
            fatalError("error")
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.url = component?.url
        urlRequest.httpMethod = method.rawValue

        return urlRequest
    }

    func response(from data: Data, urlResponse: URLResponse) throws -> Response {

        let decoder = JSONDecoder()

        if case (200..<300)? = (urlResponse as? HTTPURLResponse)?.statusCode {
            return try decoder.decode(Response.self, from: data)
        } else {
            throw try decoder.decode(GitHubAPIError.self, from: data)
        }
    }
}
