
import UIKit
import Apollo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let apollo = ApolloClient(url: URL(string: "http://localhost:8080/graphql")!)
        
        var userProfile = UserProfileQuery()
        apollo.fetch(query: userProfile) { (result, error) in

            print(result?.)

        }
    }
}
