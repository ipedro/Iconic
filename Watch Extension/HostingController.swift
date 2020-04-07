//
//  HostingController.swift
//  Watch Extension
//
//  Created by Pedro Almeida on 11.03.20.
//  Copyright © 2020 Pedrofolio.com. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<ContentView> {
    override var body: ContentView {
        return ContentView(viewModel: ContentViewModel())
    }
}
