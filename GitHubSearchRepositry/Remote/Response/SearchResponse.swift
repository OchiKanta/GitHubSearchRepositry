import Foundation

struct SearchResponse<Item: Decodable>: Decodable {
    let totalCount: Int?
    let incompleteResults: Bool?
    let items: [Item]

    private enum Codingkeys: String, Decodable {
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
        case items
    }
}
