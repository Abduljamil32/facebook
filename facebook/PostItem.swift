//
//  PostItem.swift
//  facebook
//
//  Created by Avaz Mukhitdinov on 25/04/22.
//

import SwiftUI

struct PostItem: View {
    var img_url = "im_story1"
    
    var body: some View {
        VStack{
            //            header hand.thumbsup
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image("profile").resizable().frame(width: 50, height: 50)
                        .cornerRadius(25)
                    ZStack{
                        Circle().frame(width: 22, height: 22).foregroundColor(.white)
                        Circle().frame(width: 16, height: 16).foregroundColor(.green)
                    }
                }
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text("Alexa")
                            .fontWeight(.bold)
                        Text("uptaded his profile picture").font(.system(size: 18))
                            .foregroundColor(.black.opacity(0.7))
                            .lineLimit(2)
                    }
                    HStack(alignment: .bottom){
                        Text("20m").foregroundColor(.gray.opacity(0.9))
                        Image(systemName: "person.2.fill").resizable()
                            .frame(width: 20, height: 18)
                    }
                    
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.leading, 10).padding(.trailing, 10).padding(.top, 10)
            //            image
            ZStack{
                Circle().frame(width: 355, height: 400).foregroundColor(.gray)
                Image("im_story1").resizable().clipShape(Circle())
                    .frame(width: 350, height: 400)
            }
                
            
            //            footer
            HStack(alignment: .center, spacing: 5){
                HStack(alignment: .center, spacing: 5){
                    Image(systemName: "hand.thumbsup.fill").resizable().frame(width: 20, height: 20)
                        .foregroundColor(.blue)
                    Text("9").foregroundColor(.gray)
                }
                Spacer()
                HStack{}
            }.padding(.top, 10).padding(.trailing, 10).padding(.leading, 10)
            
            HStack{}.frame(height: 1).frame(maxWidth: .infinity)
                .background(.gray.opacity(0.5)).padding(.top, 5)
            
            HStack(alignment: .center){
                Spacer()
                HStack{
                    Image(systemName: "hand.thumbsup").foregroundColor(.black.opacity(0.6))
                    Text("Like").font(.system(size: 19)).foregroundColor(.black.opacity(0.6))
                }
                Spacer()
                HStack{
                    Image(systemName: "bubble.left").foregroundColor(.black.opacity(0.6))
                    Text("Comment").font(.system(size: 19)).foregroundColor(.black.opacity(0.6))
                }
                Spacer()
                HStack{
                    Image(systemName: "paperplane").foregroundColor(.black.opacity(0.6))
                    Text("Share").font(.system(size: 19)).foregroundColor(.black.opacity(0.6))
                }
                Spacer()
            }.frame(height: 40).frame(maxWidth: .infinity).padding(.top, 5)
            
            HStack{}.frame(height: 10).frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
