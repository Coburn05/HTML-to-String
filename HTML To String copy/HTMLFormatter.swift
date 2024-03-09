//
//  HTMLFormatter.swift
//  HTML To String
//
//  Created by Daniel Coburn on 3/9/24.
//

import Foundation

struct HTMLFormatter {
    func formatString(_ html: String) -> NSAttributedString {
        let html: String = "<span style=\"font-family: '-apple-system', 'HelveticaNeue'; font-size: 20\">\(html)</span>"
        guard let data = html.data(using: String.Encoding.utf16, allowLossyConversion: false) else {
            return NSAttributedString(string: "")
        }
        do {
            let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
                NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html,
                NSAttributedString.DocumentReadingOptionKey.characterEncoding: String.Encoding.utf16.rawValue
            ]
            let result = try NSAttributedString(data: data,
                                                options: options,
                                                documentAttributes: nil)
            return result
        } catch {
            return NSAttributedString(string: "")
        }
    }
}
