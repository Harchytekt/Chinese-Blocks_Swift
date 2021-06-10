//
//  Block.swift
//  Blocks
//
//  Created by Alexandre Ducobu on 10/06/2021.
//

import Foundation

class Block: CustomStringConvertible, Equatable {
    var name: String
    var pinyin: String
    var symbol: String
    
    init(name: String, pinyin: String, symbol: String) {
        self.name = name
        self.pinyin = pinyin
        self.symbol = symbol
    }
    
    public var description: String {
        return "\t• \(self.name) (\(self.pinyin), \(self.symbol))"
    }
    
    func getType(type: Types) -> String {
        switch type {
        case .name:
            return self.name
        case .pinyin:
            return self.pinyin
        case .symbol:
            return self.symbol
        }
    }
    
    func printType(type: Types) {
        print("\t• \(self.getType(type: type))")
    }
    
    static func == (lhs: Block, rhs: Block) -> Bool {
        return lhs.name == rhs.name
    }
}

/*
 // swift Block.swift
 let block = Block(name: "Feu", pinyin: "Huǒ", symbol: "火")
 
 print(block)
 block.printName()
 block.printPinyin()
 block.printSymbol()*/
