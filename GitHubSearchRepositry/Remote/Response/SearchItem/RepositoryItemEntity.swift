import Foundation

struct RepositoryItem: Decodable {
    let id: Int?
    let nodeId: String?
    let name: String
    let fullName: String?
    let owner: User
    let privateBool: Bool?
    let htmlUrl: String?
    let description: String?
    let fork: Bool?
    let url: String?
    let createdAt: String?
    let updatedAt: String?
    let pushedAt: String?
    let homepage: String?
    let size: Int?
    let stargazersCount: Int?
    let watchersCount: Int?
    let language: String?
    let forksCount: Int?
    let openIssuesCount: Int?
    let masterBranch: String?
    let defaultBranch: String?
    let score: Float?

    private enum CodingKeys: String, CodingKey {
        case id
        case nodeId = "node_id"
        case name
        case fullName = "full_name"
        case owner
        case privateBool = "private"
        case htmlUrl = "html_url"
        case description
        case fork
        case url
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case pushedAt = "pushed_at"
        case homepage
        case size
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
        case language
        case forksCount = "forks_count"
        case openIssuesCount = "open_issues_count"
        case masterBranch = "master_branch"
        case defaultBranch = "default_branch"
        case score = "score"
    }
}

struct User: Decodable {
    let login: String
    let id: Int
    let nodeId: String
    let avatarUrl: String
    let gravatarId: String
    let url: String
    let receivedEventsUrl: String
    let type: String

    private enum CodingKeys: String, CodingKey {
        case login
        case id
        case nodeId = "node_id"
        case avatarUrl = "avatar_url"
        case gravatarId = "gravatar_id"
        case url
        case receivedEventsUrl = "received_events_url"
        case type
    }
}


