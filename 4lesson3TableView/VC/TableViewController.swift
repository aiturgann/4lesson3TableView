//
//  TableViewController.swift
//  4lesson3TableView
//
//  Created by Aiturgan Kurmanbekova on 18/2/24.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource {
    
    private let tableView = UITableView()
    
    private var contacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.dataSource = self
        setupUI()
        setData()
    }
    
    private func setupUI() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate(
            [tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
             tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
             tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 30)
            ])
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setData() {
        contacts = [Contact(name: "Jane Cooper", phoneNumber: "(270) 555-0117", image: ._1),
                    Contact(name: "Devon Lane", phoneNumber: "(308) 555-0121", image: ._2),
                    Contact(name: "Darrell Steward", phoneNumber: "(684) 555-0102", image: ._3),
                    Contact(name: "Devon Lane", phoneNumber: "(704) 555-0127", image: ._4),
                    Contact(name: "Courtney Henry", phoneNumber: "(505) 555-0125", image: ._5),
                    Contact(name: "Wade Warren", phoneNumber: "(225) 555-0118", image: ._6),
                    Contact(name: "Bessie Cooper", phoneNumber: "(406 555-0120)", image: ._7),
                    Contact(name: "Robert Fox", phoneNumber: "(408) 555-0103", image: ._8),
                    Contact(name: "Jacob Jones", phoneNumber: "(702) 555-0122", image: ._9),
                    Contact(name: "Jenny Wilson", phoneNumber: "(239) 555-0108", image: ._10)]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumber
        cell.imageView?.image = contacts[indexPath.row].image
        return cell
    }


}
