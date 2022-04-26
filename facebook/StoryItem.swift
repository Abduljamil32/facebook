//
//  StoryItem.swift
//  facebook
//
//  Created by Avaz Mukhitdinov on 25/04/22.
//

import SwiftUI

struct StoryItem: View {
    var im_story = "im_story2"
    var body: some View {
        
        ZStack{
            Image(im_story)
                .resizable()
                .frame(width: 150, height: 250)
                .scaledToFit()
            VStack(alignment: .leading){
                Image("profile").resizable().cornerRadius(40)
                    .frame(width: 50, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(.blue, lineWidth: 5))
                Spacer()
                Text("Alexa").font(.system(size: 17))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text("Alexa").font(.system(size: 17))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }.padding()
            
        }.frame(width: 150, height: 250).cornerRadius(15)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
