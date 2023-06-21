//
//  ContentView.swift
//  Exercice 3
//
//  Created by apprenant68 on 20/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image("insta")
                    .resizable()
                    .frame(width: 130, height: 50)
                Spacer()
                Image(systemName: "plus.circle")
                    .font(.system(size: 25))
                Image(systemName: "suit.heart")
                    .font(.system(size: 25))
                Image(systemName: "ellipsis.message")
                    .font(.system(size: 25))
            }
            .padding()
            ScrollView(.horizontal){
                HStack{
                    
                    ForEach(list) {profil in
                        VStack{
                            ZStack{
                                Circle().stroke(Color(.purple))
                                    .frame(width: 70)
                                Image(profil.pp)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(60)
                            }
                            Text(profil.story)
                        }
                    }
                }
            }
            .padding(.leading)
            ScrollView{
                                ForEach(bob) {bobPost in
                HStack{
                    Image(bobPost.profilPicture)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(60)
                    Text(bobPost.nameAccount)
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "ellipsis")
                }
                .padding()
                    Image(bobPost.image)
                    .resizable()
                    .frame(height: 260)
                    .ignoresSafeArea()
                HStack{
                    Image(systemName: "suit.heart")
                    Image(systemName: "bubble.left")
                    Image(systemName: "arrowshape.turn.up.right")
                    Spacer()
                    Image(systemName: "bookmark")
                }
                .padding(.horizontal)
                .font(.system(size: 20))
                HStack{
                    Text(bobPost.likes)
                    Spacer()
                }
                .padding(.horizontal)
                HStack{
                    Text(bobPost.view)
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.horizontal)
            }
            }
        }
        }
    }
    struct Story :Identifiable{
        var id = UUID()
        var story : String
        var name : String
        var pp : String
    }
    
    var list = [
        Story(story: "Your Story",name: "Spongebob", pp: "sponge"),
        Story(story: "Jay Park",name: "Jay Park", pp: "jayPark"),
        Story(story:"Mbappe", name: "Mbappe", pp: "mbappe"),
    ]

struct Post :Identifiable{
    var id = UUID()
    var nameAccount: String
    var profilPicture: String
    var likes : String
    var view : String
    var image : String
}

var bob = [
Post(nameAccount: "Spongebob", profilPicture: "sponge", likes: "123456", view: "View 12345 comments", image: "bikini"),
Post(nameAccount: "Spongebob", profilPicture: "sponge", likes: "54321", view: "View 54321 comments", image: "seaStar")
]
    
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
