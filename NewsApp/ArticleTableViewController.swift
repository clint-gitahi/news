
import UIKit
import Kingfisher

class ArticleTableViewController: UITableViewController {
    
    var articles = [Article]()

    override func viewDidLoad() {
        super.viewDidLoad()

        NewsHelper().getArticles {(articles) in
            self.articles = articles
            self.tableView.reloadData()
        }
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return articles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath) as? ArticleCell {
            
            let article = articles[indexPath.row]
            
            cell.titleLabel.text = article.title
            cell.categoryLabel.text = article.category
            
            let url = URL(string: article.urlToImage)
            cell.articleImageView.kf.setImage(with: url)
            
            return cell
        }
        return UITableViewCell()
    }

}

class ArticleCell : UITableViewCell {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
}
