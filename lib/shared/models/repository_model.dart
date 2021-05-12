/* class Repo {
  String reponame;
  String repolang;

  Repo({this.reponame, this.repolang});

  factory Repo.fromJson(Map<String, dynamic> json) {
    return Repo(reponame: json['name'], repolang: json['language']);
  }
}

class AllRepositories {
  List<Repo> allRepositories;

  AllRepositories({this.allRepositories});

  factory AllRepositories.fromJson(List<dynamic> json) {
    List<Repo> allRepositories = new List<Repo>();

    allRepositories = json.map((r) => Repo.fromJson(r)).toList();

    return allRepositories;
  }
}
 */
