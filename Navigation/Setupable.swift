//
//  Setupable.swift
//  Navigation
//
//  Created by MacBook on 14.03.2022.
//

import Foundation


protocol ViewModelProtocol {}

protocol Setupable {
    func setup(with viewModel: ViewModelProtocol)
}
