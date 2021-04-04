//
//  SideViewNavLink.swift
//  Twetch7161
//
//  Created by Henry Hudson on 08/02/2021.
//

import SwiftUI

struct SideViewNavLinks: View {
    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink(
                destination: Text("Home"),
                label: {
                    SideMenuNavLinkLabel(title: "Home",
                                         iconImage: "house")
            })
            
            NavigationLink(
                destination: UserView(),
                label: {
                    SideMenuNavLinkLabel(title: "Profile",
                                         iconImage: "person.crop.circle")
            })
            
            NavigationLink(
                destination: Text("Notifications"),
                label: {
                    SideMenuNavLinkLabel(title: "Notifications",
                                         iconImage: "bell")
            })
            
            NavigationLink(
                destination: Text("Leaderboard"),
                label: {
                    SideMenuNavLinkLabel(title: "Leaderboard",
                                         iconImage: "bitcoinsign.circle")
            })
            
            NavigationLink(
                destination: Text("Features"),
                label: {
                    SideMenuNavLinkLabel(title: "Features",
                                         iconImage: "lock")
            })
            
            NavigationLink(
                destination: Text("Messages"),
                label: {
                    SideMenuNavLinkLabel(title: "Messages",
                                         iconImage: "envelope")
            })
            
            NavigationLink(
                destination: TwetchSearch(),
                label: {
                    SideMenuNavLinkLabel(title: "Search",
                                         iconImage: "magnifyingglass")
            })
            
            NavigationLink(
                destination: Text("Settings"),
                label: {
                    SideMenuNavLinkLabel(title: "Settings",
                                         iconImage: "gearshape")
            })
        }
    }
}

struct SideViewNavLinks_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SideViewNavLinks()
        }
    }
}
