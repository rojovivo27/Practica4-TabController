//
//  ViewController.swift
//  Practica4-TabController
//
//  Created by Aldo on 18/09/18.
//  Copyright © 2018 Aldo. All rights reserved.
//

import UIKit

class Lista: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Atributos
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("apareciendo")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("des apareciendo")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("aparecer finalizado")
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("des aparecer finalizado")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")
        cell?.textLabel?.text = "Ejemplo"
        cell?.detailTextLabel?.text = "Detalle"
        
        return cell!
    }


}

