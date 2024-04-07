//
//  Home.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI
import AVKit

struct Home: View {
    @StateObject var feedViewModel = FeedViewModel()
    @State private var selectedPosition:String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing:0){
                ForEach(feedViewModel.post){ post in
                    FeedView(post: post,player: player)
                        .id(post.id)
                }
            }
            .scrollTargetLayout()
        }
        .onAppear{
            player.play()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .scrollIndicators(.hidden)
        .scrollPosition(id: $selectedPosition)
        .onChange(of: selectedPosition ?? "") { oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
        .onTapGesture {
            if(player.isPlaying){
                player.pause()
            }else{
                player.play()
            }
        }
    }
    
    func playVideoOnChangeOfScrollPosition(postId:String){
        guard let currentPost = feedViewModel.post.first(where: {$0.id == postId}) else {return}
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    Home()
}
