//
//  CalculatorModelTests.swift
//  iPulguita
//
//  Created by Jorge Melgosa de la Fuente on 9/3/15.
//  Copyright (c) 2015 Jorge Melgosa de la Fuente. All rights reserved.
//

import UIKit
import XCTest

class CalculatorModelTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testThatItNuevoPedido() {
        let pedido = CalculatorModel()
        pedido.nuevoPedido()
        
        XCTAssertEqual(pedido.jamon, Int8(0), "Inicializado el Número Jamon")
        XCTAssertEqual(pedido.jamonSin, Int8(0), "Inicializado el Número Jamon Sin")
        XCTAssertEqual(pedido.tortilla, Int8(0), "Inicializado el Número Tortilla")
        
        XCTAssertEqual(pedido.jamonSubTotal, 0.0, "Inicializado el Subtotal Jamon")
        XCTAssertEqual(pedido.jamonSinSubTotal, 0.0, "Inicializado el Subtotal Jamon Sin")
        XCTAssertEqual(pedido.tortillaSubTotal, 0.0, "Inicializado el Subtotal de Tortilla")
        
        XCTAssertEqual(pedido.total, 0.0, "Inicializado el Total")
    }
    
    func testThatItQuieroUnaMasDeJamon() {
        let pedido = CalculatorModel()
        
        pedido.quieroUnaMasDeJamon()
        
        XCTAssertEqual(pedido.jamon, Int8(1), "Numero de pedidos de Jamon=1")
    }
    
    func testThatItQuieroUnaMasDeJamonSin() {
        let pedido = CalculatorModel()
        
        pedido.quieroUnaMasDeJamonSin()
        
        XCTAssertEqual(pedido.jamonSin, Int8(1), "Numero de pedidos de JamonSin=1")
    }
    
    func testThatItQuieroUnaMasDeTortilla() {
        let pedido = CalculatorModel()
        
        pedido.quieroUnaMasDeTortilla()
        
        XCTAssertEqual(pedido.tortilla, Int8(1), "Numero de pedidos de Tortilla=1")
    }
    
    func testThatItSubTotalDeJamon() {
        
        let pedido = CalculatorModel()
        pedido.quieroUnaMasDeJamon()
        
        var subJamon = pedido.subTotalDeJamon()
        
        XCTAssertEqual(subJamon, pedido.precios["JAMON"]!, "El valor de una unidad de Jamon 1.50")
    }
    
    func testThatItSubTotalDeJamonSin() {
        
        let pedido = CalculatorModel()
        pedido.quieroUnaMasDeJamonSin()
        
        var subJamonSin = pedido.subTotalDeJamonSin()
        
        XCTAssertEqual(subJamonSin, pedido.precios["JAMONSIN"]!, "El valor de una unidad de Jamon Sin 1.50")
    }
    
    func testThatItSubTotalDeTortilla() {
        
        let pedido = CalculatorModel()
        pedido.quieroUnaMasDeTortilla()
        
        var subTortilla = pedido.subTotalDeTortilla()
        
        XCTAssertEqual(subTortilla, pedido.precios["TORTILLA"]!, "El valor de una unidad de Tortilla 1.30")
    }
    
    func testThatItCalcularTotal() {
        
        let pedido = CalculatorModel()
        pedido.quieroUnaMasDeJamon()
        pedido.quieroUnaMasDeJamonSin()
        pedido.quieroUnaMasDeTortilla()
        pedido.subTotalDeJamon()
        pedido.subTotalDeJamonSin()
        pedido.subTotalDeTortilla()
        var total = pedido.precios["JAMON"]! + pedido.precios["JAMONSIN"]! + pedido.precios["TORTILLA"]!
        
        XCTAssertEqual(pedido.calcularTotal(), total, "El valor del pedido es 4.30")
    }

}
