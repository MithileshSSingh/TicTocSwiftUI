//
//  FeedView.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI
import AVKit

struct FeedView: View {
    var post:FeedDataBeen
    var player: AVPlayer
    
    init(post:FeedDataBeen,player:AVPlayer){
        self.post = post
        self.player = player
    }
    
    var body: some View {
        ZStack{
            CustomeVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal,.vertical])
                
            VStack{
                Spacer()
                
                HStack(alignment:.bottom){
                    VStack(alignment:.leading){
                        Text("Title")
                            .font(.headline)
                        Text("Sub Title")
                            .font(.subheadline)
                            
                    }
                    .foregroundStyle(.white)
                    
                    Spacer()
                    
                    VStack(spacing:20){
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.white)
                        
                        Button {
                            
                        } label: {
                            VStack(spacing:0){
                                Image(systemName: "heart.fill")
                                    .foregroundStyle(.white)
                                    .frame(width: 28, height: 28)
                                
                                Text("27")
                                    .foregroundStyle(.white)
                                    .font(.caption)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack(spacing:0){
                                Image(systemName: "ellipsis.bubble.fill")
                                    .foregroundStyle(.white)
                                    .frame(width: 28, height: 28)
                                
                                Text("27")
                                    .foregroundStyle(.white)
                                    .font(.caption)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .foregroundStyle(.white)
                                .frame(height: 28)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .foregroundStyle(.white)
                                .frame(width: 28, height: 28)
                        }
                    }
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
    }
}

#Preview {
    FeedView(post: FeedDataBeen(id: "1", videoUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
    player: AVPlayer())
}
