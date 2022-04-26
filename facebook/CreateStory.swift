//
//  CreateStory.swift
//  facebook
//
//  Created by Avaz Mukhitdinov on 26/04/22.
//

import SwiftUI

struct CreateStory: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                Image("im_story3")
                    .resizable()
                    .frame(width: 150, height: 170)
                    .scaledToFit()
                
                HStack{
                    Text("Create a Story")
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                        .frame(width: 80)
                        .padding(.top,15)
                }
                .frame(width: 150, height: 80)
                .background(Color.gray.opacity(0.1))
            }
            ZStack{
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.white)
                    .padding(.top,90)
                
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 50))
                    .padding(.top,90)
                    .foregroundColor(.blue)
            }
        }
        .overlay(RoundedRectangle(cornerRadius: 20)
        .stroke(Color.black.opacity(0.25),lineWidth: 1))
        .frame(width: 150, height: 250)
        .cornerRadius(20)
    }
}

struct CreateStory_Previews: PreviewProvider {
    static var previews: some View {
        CreateStory()
    }
}
//
//Button(action: {
//
//        }, label: {
//            ZStack{
//
//                VStack(spacing: 0){
//                    Image("im_story3")
//                        .resizable()
//                        .frame(width: 150, height: 170)
//                        .scaledToFit()
//
//                    HStack{
//                        Text("Create a Story")
//                            .font(.system(size: 20))
//                            .foregroundColor(Color.black)
//                            .frame(width: 80)
//                            .padding(.top,15)
//                    }
//                    .frame(width: 150, height: 80)
//                    .background(Color.gray.opacity(0.1))
//                }
//
//                ZStack{
//                    Circle()
//                        .frame(width: 60, height: 60)
//                        .foregroundColor(Color.white)
//                        .padding(.top,90)
//
//                    Image(systemName: "plus.circle.fill")
//                        .font(.system(size: 50))
//                        .padding(.top,90)
//                }
//            }
//            .overlay(RoundedRectangle(cornerRadius: 20)
//            .stroke(Color.black.opacity(0.25),lineWidth: 1))
//            .frame(width: 150, height: 250)
//            .cornerRadius(20)
//        })
