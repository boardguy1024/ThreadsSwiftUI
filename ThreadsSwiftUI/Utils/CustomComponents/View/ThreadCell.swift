//
//  ThreadCell.swift
//  ThreadsSwiftUI
//
//  Created by パクギョンソク on 2023/10/05.
//

import SwiftUI

struct ThreadCell: View {
    
     let thread: Thread
    
    var body: some View {
        VStack {
            
            HStack(alignment: .top, spacing: 12) {
                CircluarProfileImageView(user: thread.user)

                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack(spacing: 0) {
                        Text(thread.user?.username ?? "")
                            .font(.callout)
                            .fontWeight(.semibold)
                        Image(systemName: "checkmark.seal.fill")
                            .font(.caption)
                            .foregroundColor(Color(.systemBlue))
                            .offset(y: 1)
                            .padding(.leading, 3)
                        
                        Spacer(minLength: 0)
                        
                        Text(thread.timestamp.timestampString())
                            .font(.callout)
                            .foregroundStyle(.gray)
                        
                        optionsButton
                            .padding(.leading, 4)
                    }
                   
                    Text(thread.caption)
                        .font(.callout)
                    
//                    Image("model3")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 250)
//                        .cornerRadius(10)
//                        .padding(.top, 8)
                    
                    HStack(spacing: 16) {
                        likeButton
                        
                        commentsButton
                        
                        rethreadButton
                        
                        sendButton
                    }
                    .foregroundColor(.black)
                    .padding(.top, 10)
                }
            }
            .frame(maxWidth: .infinity)
            .padding([.top, .horizontal], 12)
            
           Divider()
                .padding(.top, 14)
        }
    }
}

extension ThreadCell {
    
    var optionsButton: some View {
        Button {
            
        } label: {
            Image(systemName: "ellipsis")
                .foregroundColor(Color(.darkGray))
        }
    }
    
    var likeButton: some View {
        Button {
            
        } label: {
            Image(systemName: "heart")
              
        }
    }
    
    var commentsButton: some View {
        Button {
            
        } label: {
            Image(systemName: "bubble.right")
        }
    }
    
    var rethreadButton: some View {
        Button {
            
        } label: {
            Image(systemName: "arrow.rectanglepath")
        }
    }
    
    var sendButton: some View {
        Button {
            
        } label: {
            Image(systemName: "paperplane")
        }
    }
}

#Preview {
    ThreadCell(thread: PreviewProvider.shared.thread)
        .previewLayout(.sizeThatFits)
}
