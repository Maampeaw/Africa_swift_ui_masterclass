//
//  CodableBundleExtension.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import Foundation

extension Bundle{
    func decode<T: Decodable>(_ fileName: String)->T?{
        let jsonFile =  self.url(forResource: fileName, withExtension: nil)
        guard let jsonFile = jsonFile, let data = try? Data(contentsOf: jsonFile) else {
            return nil
        }
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(T.self, from: data) else{
            return nil
        }
        
        return decodedData
    }
}
