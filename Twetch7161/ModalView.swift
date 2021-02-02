//
//  ModalView.swift
//  Twetch7161
//
//  Created by Henry Hudson on 23/08/2020.
//

import SwiftUI

struct ModalView: View {
    @State private var showingModal = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                showingModal.toggle()
            })
            .sheet(isPresented: $showingModal, content: {
                ModalShowing()
            })
    }
}

struct ModalShowing: View {
    var body: some View {
        Text("whats up")
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
