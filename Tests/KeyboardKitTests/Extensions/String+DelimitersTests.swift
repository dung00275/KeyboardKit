//
//  String+DelimitersTests.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-01-18.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Quick
import Nimble
import KeyboardKit

class String_DelimitersTests: QuickSpec {
    
    override func spec() {
        
        describe("string") {
            
            it("can identify a sentence delimiter") {
                let result = String.sentenceDelimiters.map { $0.isSentenceDelimiter }
                expect(result.allSatisfy { $0 == true }).to(beTrue())
                expect("a".isSentenceDelimiter).to(beFalse())
            }
            
            it("can identify a word delimiter") {
                let result = String.wordDelimiters.map { $0.isWordDelimiter }
                expect(result.allSatisfy { $0 == true }).to(beTrue())
                expect("a".isWordDelimiter).to(beFalse())
            }
            
            it("provides sentence delimiters") {
                expect(String.sentenceDelimiters).to(equal(["!", ".", "?", "\n"]))
            }
            
            it("provides word delimiters") {
                expect(String.wordDelimiters).to(equal(["!", ".", "?", "\n", ",", ";", ":", " "]))
            }
        }
    }
}
