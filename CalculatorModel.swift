//
//  CalculatorModel.swift
//  iPulguita
//
//  Created by Jorge Melgosa de la Fuente on 6/3/15.
//  Copyright (c) 2015 Jorge Melgosa de la Fuente. All rights reserved.
//

import Foundation

class CalculatorModel {
    
    var jamon: Int8
    var jamonSin: Int8
    var tortilla: Int8
	var modificacionJorge3: Bool = true
    
    var jamonSubTotal: Double
    var jamonSinSubTotal: Double
    var tortillaSubTotal: Double
	
	//prueba
    
    var total: Double
    
    let precios: [String: Double]
    
    init() {
        self.jamon = 0
        self.jamonSin = 0
        self.tortilla = 0
        
        self.jamonSubTotal = 0.0
        self.jamonSinSubTotal = 0.0
        self.tortillaSubTotal = 0.0
        self.total = 0.0
        
        self.precios = ["JAMON": 1.50, "JAMONSIN": 1.50, "TORTILLA": 1.30]
    }
    
    func nuevoPedido() {
        self.jamon = 0
        self.jamonSin = 0
        self.tortilla = 0
        
        self.jamonSubTotal = 0.0
        self.jamonSinSubTotal = 0.0
        self.tortillaSubTotal = 0.0
        self.total = 0.0        
    }
    
    func quieroUnaMasDeJamon() {
        self.jamon++
    }
    
    func quieroUnaMenosDeJamon() {
        self.jamon--
    }
    
    func quieroUnaMasDeJamonSin() {
        self.jamonSin++
    }
    
    func quieroUnaMenosDeJamonSin() {
        self.jamonSin--
    }
    
    func quieroUnaMasDeTortilla() {
        self.tortilla++
    }
    
    func quieroUnaMenosDeTortilla() {
        self.tortilla--
    }
    
    
    func subTotalDeJamon() -> Double {
        jamonSubTotal = Double(jamon) * precios["JAMON"]!
        return jamonSubTotal
    }
    
    func subTotalDeJamonSin() -> Double {
        jamonSinSubTotal = Double(jamonSin) * precios["JAMONSIN"]!
        return jamonSinSubTotal
    }
    
    func subTotalDeTortilla() -> Double {
        tortillaSubTotal = Double(tortilla) * precios["TORTILLA"]!
        return tortillaSubTotal
    }
    
    
    func calcularTotal() -> Double {
        total = jamonSubTotal + jamonSinSubTotal + tortillaSubTotal
        return self.total
    }
    
}