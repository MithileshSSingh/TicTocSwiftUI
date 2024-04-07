//
//  Extensions.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 07/04/24.
//

import Foundation
import AVKit

extension AVPlayer{
    var isPlaying:Bool{
        return rate != 0 && error == nil
    }
}
