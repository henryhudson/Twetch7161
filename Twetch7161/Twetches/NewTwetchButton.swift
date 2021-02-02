//
//  NewTwetchButton.swift
//  Twetch
//
//  Created by Henry Hudson on 12/06/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI
import PureSwiftUI

private var buttonSize: CGFloat = 52

struct NewTwetchButton: View {
    @State var buttonTapped = false
    @State var showingNewTwetchView = false
    @State private var buttonLocation = CGPoint.zero
    var body: some View {
        ZStack {
            
            if showingNewTwetchView {
                NewTwetchView(size: self.showingNewTwetchView ? 0 : 25)
                    .offsetIf(showingNewTwetchView, -Constants.screenSize.width / 3, -Constants.screenSize.halfHeight * 0.5)
                    .frame(width: showingNewTwetchView ? 300: 0,
                       height: showingNewTwetchView ? 100: 0)
            }
            
            Circle()
                .foregroundColor(buttonTapped ? Color(.systemRed) : Color(.systemBlue))
                .shadow(color: Color.orange.opacity(0.5), radius: 1, x: -1, y: -1)
                .shadow(color: .cgDarkGray, radius: 1, x: 1, y: 1)
                .overlay(Image(systemName: "plus")
                .foregroundColor(.white)
                    .rotationEffect(self.buttonTapped ? .degrees(-45) : .degrees(0)))
                .frame(width: buttonSize, height: buttonSize)

                .geometryReader { (geo: GeometryProxy) in
                    self.buttonLocation = geo.globalCenter
                }
                .onTapGesture {
                    withAnimation(Animation.spring(response: 0.3, dampingFraction: 0.6)){ self.buttonTapped.toggle(); self.showingNewTwetchView.toggle()}
                }
        }
        .offset(x: Constants.screenSize.width/3, y: Constants.screenSize.height/4.2)
    }
}

struct NewTwetchButton_Previews: PreviewProvider {
    static var previews: some View {
        NewTwetchButton()
            .preferredColorScheme(.dark)
    }
}
