//
//  PokedexViewController.swift
//  Pokemondhoro
//
//  Created by Nasir Uddin on 20/02/2017.
//  Copyright © 2017 Nasir Uddin. All rights reserved.
//
import UIKit

class PokedexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var caughtPokemons : [Pokemon] = []
    var uncaughtPokemons : [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        caughtPokemons = getAllCaughtPokemons()
        uncaughtPokemons = getAllUncaughtPokemons()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // create only two section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // create two section , caught and uncaught string
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "CAUGHT"
        } else {
            return "UNCAUGHT"
        }
    }
    
    // return no of row /pokemone
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return caughtPokemons.count
        } else {
            return uncaughtPokemons.count
        }
    }
    
    // caught pokemon from specific section , caught/uncaught
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let pokemon : Pokemon
        if indexPath.section == 0 {
            pokemon = caughtPokemons[indexPath.row]
        } else {
            pokemon = uncaughtPokemons[indexPath.row]
        }
        
        let cell = UITableViewCell()
        //passing pokemon name
        cell.textLabel?.text = pokemon.name
        // passing image
        cell.imageView?.image = UIImage(named: pokemon.imageName!)
        return cell
    }
    
    @IBAction func mapTapped(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
