//
//  ContentView.swift
//  facebook
//
//  Created by Avaz Mukhitdinov on 24/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                //              profile, live, photo, room
                VStack{
                    HStack{
                        Image("profile").resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        Text("What's in your mind").font(.system(size: 17))
                    }
                    .frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 10).padding(.trailing, 10)
                    
                    HStack{}.frame(height: 1)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(.gray.opacity(0.3))
                    //              live, photo, room
                    
                    HStack{
                        
                        Spacer()
                        HStack(spacing: 5){
                            Image(systemName: "video.square.fill").foregroundColor(.red)
                                .font(.system(size: 30))
                            Text("Live")
                        }
                        
                        Rectangle()
                            .frame(width: 2)
                            .frame(maxHeight: .infinity, alignment: .topLeading)
                            .foregroundColor(.gray.opacity(0.3))
                        
                        
                        Spacer()
                        HStack(spacing: 5){
                            Image(systemName: "photo.fill").foregroundColor(.green)
                                .font(.system(size: 25))
                            Text("Photo")
                            
                        }
                        Spacer()
                        Rectangle()
                            .frame(width: 2)
                            .frame(maxHeight: .infinity, alignment: .topLeading)
                            .foregroundColor(.gray.opacity(0.3))
                        
                        Spacer()
                        HStack(spacing: 5){
                            Image(systemName: "video.badge.plus").foregroundColor(.purple)
                                .font(.system(size: 25))
                            
                            Text("Room")
                        }
                        Spacer()
                    }
                    
                }
                //              create room
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(.gray.opacity(0.3))
                    
                    HStack{
                        ZStack{
                            Circle()
                                .frame(width: 120, height: 60)
                                .background(.white.opacity(0.3))
                                .foregroundColor(.white)
                                .cornerRadius(30)
                            
                            HStack{
                                Image(systemName: "video.badge.plus").foregroundColor(.purple)
                                    .font(.system(size: 28))
                                Text("Create Room").foregroundColor(.blue).font(.system(size: 19)).bold()
                            }
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: false)
                            }
                        }
                    }.frame(height: 100)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.leading, 10)
                }
                //              create story
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(.gray.opacity(0.3))
                    
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                            }
                        }
                    }.padding(.top, 10)
                        .padding(.bottom, 10)
                        .padding(.leading, 10)
                }
                //              post items
                VStack{
                    HStack{}.frame(height: 1).frame(maxWidth: .infinity)
                        .background(.gray.opacity(0.5)).padding(.top, 5)
                    PostItem(img_url: "im_story1")
                    PostItem(img_url: "im_story1")
                }
            }
            .navigationBarItems(
                leading: Text("facebook")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.blue),
                trailing:
                    HStack{
                        ZStack{
                            Circle()
                                .fill(.gray.opacity(0.3))
                                .frame(width: 36, height: 36)
                            Image(systemName: "magnifyingglass")
                        }
                        ZStack{
                            Circle()
                                .fill(.gray.opacity(0.3))
                                .frame(width: 36, height: 36)
                            Image(systemName: "message.fill")
                        }
                    })
            .navigationBarTitle("", displayMode: .inline)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
