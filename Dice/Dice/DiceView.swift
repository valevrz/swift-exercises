//
//  DiceView.swift
//  Dice
//
//  Created by Virzi, Valeria (SE-5/7AFI2) on 05.04.23.
//

import SwiftUI

struct DiceView: View {
    let value: Int
    let size: CGFloat = 100

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(radius: 5)
            if value == 1 {
                Circle()
                    .fill(Color.black)
                    .frame(width: size / 5, height: size / 5)
            } else if value == 2 {
                VStack {
                    Spacer()
                    Circle()
                        .fill(Color.black)
                        .frame(width: size / 5, height: size / 5)
                    Spacer()
                        .frame(height: size / 3)
                    Circle()
                        .fill(Color.black)
                        .frame(width: size / 5, height: size / 5)
                    Spacer()
                }
            } else if value == 3 {
                VStack {
                    HStack {
                        Spacer()
                            .frame(width: size / 3)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                    }
                    HStack {
                        Spacer()
                            .frame(height: size / 8)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(width: size / 2.25)
                    }
                    HStack {
                        Spacer()
                            .frame(width: size / 40)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(width: size / 2)
                    }
                }
            } else if value == 4 {
                VStack {
                    HStack {
                        Spacer()
                            .frame(height: size / 3)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(width: size / 3)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(height: size / 3)
                    }
                    HStack {
                        Spacer()
                            .frame(height: size / 2)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(width: size / 3)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(height: size / 3)
                    }
                }
            }else if value == 5 {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                            .frame(height: size / 4)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(width: size / 3)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(height: size / 6)
                    }
                    Circle()
                        .fill(Color.black)
                        .frame(width: size / 5, height: size / 5)
                    HStack {
                        Spacer()
                            .frame(width: size / 8, height: size / 4)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(width: size / 3)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(height: size / 3)
                    }
                }
            } else if value == 6 {
                VStack {
                    Spacer()
                    HStack {
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(width: size / 3)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                    }
                    Spacer()
                        .frame(height: size / 7)
                    HStack {
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(width: size / 3)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                    }
                    Spacer()
                        .frame(height: size / 7)
                    HStack {
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                        Spacer()
                            .frame(width: size / 3)
                        Circle()
                            .fill(Color.black)
                            .frame(width: size / 5, height: size / 5)
                    }
                    Spacer()
                }
            }else {
                EmptyView()
            }
        }
        .frame(width: size, height: size)
    }

    struct DiceView_Previews: PreviewProvider {
        static var previews: some View {
            DiceView(value: 1).frame(width: 100,height: 100)
            DiceView(value: 2).frame(width: 100,height: 100)
            DiceView(value: 3).frame(width: 100,height: 100)
            DiceView(value: 4).frame(width: 100,height: 100)
            DiceView(value: 5).frame(width: 100,height: 100)
            DiceView(value: 6).frame(width: 100,height: 100)

        }
    }
}
