//
//  ViewController.swift
//  Servicios Web en iOS
//
//  Created by alumno on 23/03/17.
//  Copyright © 2017 william. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var publicaciones = Array<Publicacion>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func obtenerPublicaciones(){
        
        publicaciones.removeAll()
        
        for i in 1...8{
            let publicacion = Publicacion()
            publicacion.titulo = "Titutlo \(i)"
            publicacion.contenido = "Contenido de la publicacion \(i)"
            publicaciones.append(publicacion)
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return publicaciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for : indexPath) as! PublicacionCelda
        
        let indice = indexPath.row
        
        let publicacion = publicaciones[indice]
        
        cell.lbltitulo.text = publicacion.titulo
        cell.lblcontenido.text = publicacion.contenido
        
        return cell
        
    }
    
    @IBAction func btnRefreshTouch(_ sender: UIBarButtonItem) {
    
        self.obtenerPublicaciones()
        
        tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let publicacion = publicaciones[indexPath.row]
        
        self.performSegue(withIdentifier: "detalle", sender: publicacion)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalle" {
        
            let detallePublicacionViewController = segue.destination as! DetallePublicacionViewController
            
            detallePublicacionViewController.publicacion = sender as! Publicacion
            
            
        }
    }
    


}

