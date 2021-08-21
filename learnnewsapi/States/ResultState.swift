//
//  ResultState.swift
//  learnnewsapi
//
//  Created by Aswan Abidin on 20/08/21.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
