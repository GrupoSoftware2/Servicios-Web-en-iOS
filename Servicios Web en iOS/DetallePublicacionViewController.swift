//
//  DetallePublicacionViewController.swift
//  Servicios Web en iOS
//
//  Created by alumno on 23/03/17.
//  Copyright © 2017 william. All rights reserved.
//

import UIKit

class DetallePublicacionViewController: UIViewController {

    var publicacion:Publicacion!
    
    
    @IBOutlet weak var lbltitulo: UINavigationItem!
    
    @IBOutlet weak var lblcontenido: UITextView!
    
    
    @IBOutlet weak var txtcontenido: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lbltitulo.title = publicacion.titulo
        txtcontenido.text = publicacion.contenido
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
