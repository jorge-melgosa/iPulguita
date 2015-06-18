//
//  ViewController.swift
//  iPulguita
//
//  Created by Jorge Melgosa de la Fuente on 7/3/15.
//  Copyright (c) 2015 Jorge Melgosa de la Fuente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet var jamonField: UITextField!
    @IBOutlet var jamonSinField: UITextField!
    @IBOutlet var tortillaField: UITextField!
    
    @IBOutlet var subJamonField: UITextField!
    @IBOutlet var subJamonSinField: UITextField!
    @IBOutlet var subTortillaField: UITextField!
    
    @IBOutlet var totalField: UITextField!
    
    
    let pedido = CalculatorModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func pintaTotal() {
        totalField.text = String("\(pedido.calcularTotal()) €")
    }
    func pintaSubTotalJamon() {
        jamonField.text = String(pedido.jamon)
        subJamonField.text = String("\(pedido.subTotalDeJamon()) €")
    }
    func pintaSubTotalJamonSin() {
        jamonSinField.text = String(pedido.jamonSin)
        subJamonSinField.text = String("\(pedido.subTotalDeJamonSin()) €")
    }
    func pintaSubTotalTortilla() {
        tortillaField.text = String(pedido.tortilla)
        subTortillaField.text = String("\(pedido.subTotalDeTortilla()) €")
    }
    func pintaNuevoPedido() {
        pintaSubTotalJamon()
        pintaSubTotalJamonSin()
        pintaSubTotalTortilla()
        pintaTotal()
    }
    

    @IBAction func generarNuevoPedido(sender: AnyObject) {
        pedido.nuevoPedido()
        pintaNuevoPedido()
    }
    
    @IBAction func unoMasDeJamon(sender: AnyObject) {
        pedido.quieroUnaMasDeJamon()
        pintaSubTotalJamon()
        pintaTotal()
    }
    @IBAction func unoMenosDeJamon(sender: AnyObject) {
        pedido.quieroUnaMenosDeJamon()
        pintaSubTotalJamon()
        pintaTotal()
    }
    
    @IBAction func unoMasDeJamonSinTomate(sender: AnyObject) {
        pedido.quieroUnaMasDeJamonSin()
        pintaSubTotalJamonSin()
        pintaTotal()
    }
    @IBAction func unoMenosDeJamonSinTomate(sender: AnyObject) {
        pedido.quieroUnaMenosDeJamonSin()
        pintaSubTotalJamonSin()
        pintaTotal()
    }
    
    @IBAction func unoMasDeTortilla(sender: AnyObject) {
        pedido.quieroUnaMasDeTortilla()
        pintaSubTotalTortilla()
        pintaTotal()
    }
    @IBAction func unoMenosDeTortilla(sender: AnyObject) {
        pedido.quieroUnaMenosDeTortilla()
        pintaSubTotalTortilla()
        pintaTotal()
    }
}

