//
//  ViewController.swift
//  proyecto_1parcial
//
//  Created by Alumno on 9/6/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //Declaración del reproductor
    var reproductor : AVAudioPlayer?
    
    //Declarar arreglo de UImage
    var secuenciaHamburger : [UIImage] = []
    var secuenciaPizza : [UIImage] = []
    var secuenciaEggs : [UIImage] = []
    
    @IBOutlet weak var lblElementoActivo: UILabel!
    @IBOutlet weak var imgHam: UIImageView!
    @IBOutlet weak var imgPizza: UIImageView!
    @IBOutlet weak var imgEggs: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch let error {
            print(error.localizedDescription)
        }
        
        for i in 1...5 {
            let imagen = UIImage(named: "HamIdle0\(i)")
            secuenciaHamburger.append(imagen!)
        }
        imgHam.animationImages = secuenciaHamburger
        imgHam.animationDuration = 1.0
        imgHam.startAnimating()
        
        for i in 1...5 {
            let imagen = UIImage(named: "EggsIdle\(i)")
            secuenciaEggs.append(imagen!)
        }
        imgEggs.animationImages = secuenciaEggs
        imgEggs.animationDuration = 1.0
        imgEggs.startAnimating()
        
        
        
    }

    @IBAction func doTapHam(_ sender: Any) {
        lblElementoActivo.text = "Hamburger"
        do {
            //Encontrar urñ deñ archivo de audio
            let url = Bundle.main.url(forResource: "Hamburger", withExtension: "m4a")
            //Asignar valor al reproductor
            reproductor = try AVAudioPlayer(contentsOf: url!, fileTypeHint:  AVFileType.m4a.rawValue)
            //reproducir
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func doTapPizza(_ sender: Any) {
        lblElementoActivo.text = "Pizza"
        do {
            //Encontrar urñ deñ archivo de audio
            let url = Bundle.main.url(forResource: "pizza", withExtension: "m4a")
            //Asignar valor al reproductor
            reproductor = try AVAudioPlayer(contentsOf: url!, fileTypeHint:  AVFileType.m4a.rawValue)
            //reproducir
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func doTapEggs(_ sender: Any) {
        lblElementoActivo.text = "Eggs"
        do {
            //Encontrar urñ deñ archivo de audio
            let url = Bundle.main.url(forResource: "eggs", withExtension: "m4a")
            //Asignar valor al reproductor
            reproductor = try AVAudioPlayer(contentsOf: url!, fileTypeHint:  AVFileType.m4a.rawValue)
            //reproducir
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

