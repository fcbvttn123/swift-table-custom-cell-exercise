//
//  TeamWebsite.swift
//  table2-exercise
//
//  Created by Default User on 3/12/24.
//

import UIKit
import WebKit

class TeamWebsite: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webViewUIElement: WKWebView!
    @IBOutlet var activityUIElement: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let d = UIApplication.shared.delegate as! AppDelegate
        
        let urlAddress = URL(string: d.link)
        let url = URLRequest(url: urlAddress!)
        webViewUIElement.load(url)
        webViewUIElement.navigationDelegate = self
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activityUIElement.isHidden = false
        activityUIElement.startAnimating()
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityUIElement.isHidden = true
        activityUIElement.stopAnimating()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
