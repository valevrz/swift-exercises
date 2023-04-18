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

    var circle: some View {
        Circle()
            .fill(Color.black)
            .frame(width: size / 5, height: size / 5)
    }

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(radius: 5)
            if value == 1 {
                circle
            } else if value == 2 {
                VStack {
                    Spacer()
                    circle
                    Spacer()
                        .frame(height: size / 3)
                    circle
                    Spacer()
                }
            } else if value == 3 {
                VStack {
                    HStack {
                        Spacer()
                            .frame(width: size / 3)
                        circle
                    }
                    HStack {
                        Spacer()
                            .frame(height: size / 8)
                        circle
                        Spacer()
                            .frame(width: size / 2.25)
                    }
                    HStack {
                        Spacer()
                            .frame(width: size / 40)
                        circle
                        Spacer()
                            .frame(width: size / 2)
                    }
                }
            } else if value == 4 {
                VStack {
                    HStack {
                        Spacer()
                            .frame(height: size / 3)
                        circle
                        Spacer()
                            .frame(width: size / 3)
                        circle
                        Spacer()
                            .frame(height: size / 3)
                    }
                    HStack {
                        Spacer()
                            .frame(height: size / 2)
                        circle
                        Spacer()
                            .frame(width: size / 3)
                        circle
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
                        circle
                        Spacer()
                            .frame(width: size / 3)
                        circle
                        Spacer()
                            .frame(height: size / 6)
                    }
                    circle
                    HStack {
                        Spacer()
                            .frame(width: size / 8, height: size / 4)
                        circle
                        Spacer()
                            .frame(width: size / 3)
                        circle
                        Spacer()
                            .frame(height: size / 3)
                    }
                }
            } else if value == 6 {
                VStack {
                    Spacer()
                    HStack {
                        circle
                        Spacer()
                            .frame(width: size / 3)
                        circle
                    }
                    Spacer()
                        .frame(height: size / 7)
                    HStack {
                        circle
                        Spacer()
                            .frame(width: size / 3)
                        circle
                    }
                    Spacer()
                        .frame(height: size / 7)
                    HStack {
                        circle
                        Spacer()
                            .frame(width: size / 3)
                        circle
                    }
                    Spacer()
                }
            }else if value >= 7{
                Text("\(value)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
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
            DiceView(value: 7).frame(width: 100,height: 100)
            DiceView(value: 20).frame(width: 100,height: 100)
        }
    }
}
