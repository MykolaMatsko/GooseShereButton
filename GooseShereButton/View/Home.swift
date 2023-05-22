//
//  Home.swift
//  GooseShereButton
//
//  Created by Mykola Matsko on 22.05.2023.
//

import SwiftUI

struct Home: View {
    var size: CGSize
    var body: some View {
        VStack {
            let padding: CGFloat = 30
            let circleSize = (size.width-padding) / 5
            ZStack {
                GroupedShareButtons(size: circleSize)
            }
        }
    }
    
    @ViewBuilder
    func GroupedShareButtons(size: CGFloat, fillColor: Bool = true) -> some View {
        Group {
            ShareButton(size: size, tag: 0, icon: "facebook", showIcon: true) {
                return -size * 2
            }
            ShareButton(size: size, tag: 0, icon: "gmail", showIcon: true) {
                return -size
            }
            ShareButton(size: size, tag: 0, icon: "", showIcon: true) {
                return 0
            }
            ShareButton(size: size, tag: 0, icon: "pinterest", showIcon: true) {
                return size
            }
            ShareButton(size: size, tag: 0, icon: "twitter", showIcon: true) {
                return size * 2
            }
        }
        .foregroundColor(fillColor ? .black : .clear)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    //Individual share buttons
    @ViewBuilder
    func ShareButton(size: CGFloat, tag: Int, icon: String, showIcon: Bool, offset: @escaping () -> CGFloat) -> some View {
        Circle()
            .frame(width: size, height: size)
            .overlay {
                if icon != "" {
                    Image(icon)
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(width: size * 0.3)
                    ///Show Icon when ShowIcon is True
                        .opacity(showIcon ? 1 : 0)
                        .scaleEffect(showIcon ? 1 : 0.001)
                }
            }
            .contentShape(Circle())
            .offset(x: offset())
            .tag(tag)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
