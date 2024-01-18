//
//  TabView.swift
//  ThreadsClone
//
//  Created by Mahyar Moazezi on 1/18/24.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    
                }
                .tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                   
                }
                .tag(1)
            
            AddView()
                .tabItem {
                    Image(systemName: "plus.circle")
                   
                }
                .tag(2)
            
            LikesView()
                .tabItem {
                    Image(systemName: "heart")
                   
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                   
                }
                .tag(4)
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home View")
    }
}

struct SearchView: View {
    var body: some View {
        Text("Search View")
    }
}

struct AddView: View {
    var body: some View {
        Text("Add View")
    }
}

struct LikesView: View {
    var body: some View {
        Text("Likes View")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile View")
    }
}


#Preview {
    TabBarView()
}
