import Foundation

struct GitHubAPIError: Error, Decodable {
    struct errors: Decodable {
        let resource: String
        let message: String
        let code: String
    }
    let message: String
    let errors: [errors]
}
