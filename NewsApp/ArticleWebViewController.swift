
import UIKit
import WebKit

class ArticleWebViewController: UIViewController {

    @IBOutlet weak var articleWebView: WKWebView!
    var article = Article()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = URL(string: article.url) {
            articleWebView.load(URLRequest(url: url))
        }
    }

}
