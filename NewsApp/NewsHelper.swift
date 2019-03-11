
import Foundation
import Alamofire

class NewsHelper {
    
    func getArticles() {
        Alamofire.request("https://newsapi.org/v2/top-headlines?country=us&apiKey=1f22b159cfbf404fa0216568c18827e2")
            .responseJSON{(response) in response
                print(response)
        }
    }
}
