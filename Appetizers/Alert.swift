//
//  Alert.swift
//  Appetizers
//
//  Created by Julian Martinez on 12/25/20.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissedButton: Alert.Button
}

struct AlertContext {
    static let invalidData          = AlertItem(title: Text("Server Error"),
                                                message: Text("Data received from the server was invalid. Please contact support"),
                                                dismissedButton: .default(Text("OK")))
    static let invalidResponse      = AlertItem(title: Text("Server Error"),
                                                message: Text("Invalid response from the server. Please try again later or contact support."),
                                                dismissedButton: .default(Text("OK")))
    static let invalidURL           = AlertItem(title: Text("Server Error"),
                                                message: Text("There was an issue connecting to the server. If this persist, please contact support"),
                                                dismissedButton: .default(Text("OK")))
    static let unableToComplete     = AlertItem(title: Text("Server Error"),
                                                message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                                dismissedButton: .default(Text("OK")))
}
