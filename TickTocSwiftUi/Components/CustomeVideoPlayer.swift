//
//  File.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 07/04/24.
//

import SwiftUI
import AVKit

struct CustomeVideoPlayer: UIViewControllerRepresentable{
    var player:AVPlayer
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
}
