class GithubRepo {
  final int id;
  final String nodeId;
  final String name;
  final String fullName;
  final bool private;
  final Owner owner;
  final String htmlUrl;
  final String description;
  final bool fork;
  final String url;
  final int forksCount;
  final String language;
  final bool hasIssues;
  final bool hasProjects;
  final bool hasDownloads;
  final bool hasWiki;
  final bool hasPages;
  final int stargazersCount;
  final String pushedAt;

  GithubRepo({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.private,
    required this.owner,
    required this.htmlUrl,
    required this.description,
    required this.fork,
    required this.url,
    required this.forksCount,
    required this.language,
    required this.hasIssues,
    required this.hasProjects,
    required this.hasDownloads,
    required this.hasWiki,
    required this.hasPages,
    required this.stargazersCount,
    required this.pushedAt,
  });

  factory GithubRepo.fromJson(Map<String, dynamic> json) {
    return GithubRepo(
      id: json['id'],
      nodeId: json['node_id'],
      name: json['name'],
      fullName: json['full_name'],
      private: json['private'],
      owner: Owner.fromJson(json['owner']),
      htmlUrl: json['html_url'],
      description: json['description'],
      fork: json['fork'],
      url: json['url'],
      forksCount: json['forks_count'],
      language: json['language'],
      hasIssues: json['has_issues'],
      hasProjects: json['has_projects'],
      hasDownloads: json['has_downloads'],
      hasWiki: json['has_wiki'],
      hasPages: json['has_pages'],
      stargazersCount: json['stargazers_count'],
      pushedAt: json['pushed_at'],
    );
  }
}

class Owner {
  final String login;
  final int id;
  final String nodeId;
  final String avatarUrl;
  final String url;
  final String htmlUrl;

  Owner({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.url,
    required this.htmlUrl,
  });

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
      login: json['login'],
      id: json['id'],
      nodeId: json['node_id'],
      avatarUrl: json['avatar_url'],
      url: json['url'],
      htmlUrl: json['html_url'],
    );
  }
}
