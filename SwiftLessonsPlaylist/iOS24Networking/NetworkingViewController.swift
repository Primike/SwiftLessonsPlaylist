//
//  NetworkingViewController.swift
//  SwiftLessonsPlaylist
//
//  Created by Prince Avecillas on 3/16/23.
//

import UIKit

class NetworkingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let params = [
            "title": "Big Chungus",
            "body": "This is big chungus"
        ]
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        
        let session = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("The error was: \(error.localizedDescription)")
            } else {
                let jsonRes = try? JSONSerialization.jsonObject(with: data!, options: [])
                print("Response json is: \(jsonRes)")
            }
            DispatchQueue.main.async { [weak self] in
                guard let self = self else {
                    return
                }
                self.view.backgroundColor = .red
            }
        }.resume()
    }
    
    func getPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("There was an error: \(error.localizedDescription)")
            } else {
                let jsonRes = try? JSONSerialization.jsonObject(with: data!, options: [])
                print("The response \(jsonRes)")
            }
        }.resume()
    }
}
