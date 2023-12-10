//
//  WelcomeView.swift
//  Shakespeare Remote
//
//  Created by Beau Rubin-Rottenberg on 12/10/23.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var isPresented: Bool

    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    Text("Take control.")
                        .font(.system(size: 23))
                        .fontWeight(.semibold)
                        .padding(.bottom, 1)
                    
                    Text("Change the settings and modes of the Shakespeare Machine just by pressing a button.")
                        .padding(.bottom, 15)
                    
                    Text("Jump right in.")
                        .font(.system(size: 23))
                        .fontWeight(.semibold)
                        .padding(.bottom, 1)
                    
                    Text("Clear and intuitive controls that don't need any configuring or getting used to.")
                        .padding(.bottom, 20)
                    
                    Text("Setup information")
                        .font(.system(size: 27))
                        .fontWeight(.semibold)
                        .padding(.bottom, 1)
                    
                    Text("You must be on the PT-General WiFi network in order to successfully control the Shakespeare Machine. If you are unable to connect, please contact the Public Theater IT department.")
                        .padding(.bottom, 2)
                        .font(.system(size: 18))
                }
                .padding([.top, .leading, .trailing], 20.0)
                Spacer()
                VStack {
                    Text("Made by Beau Rubin-Rottenberg")
                        .font(.system(size: 20))
                        .bold()
                        .multilineTextAlignment(.center)
                    Text("@astroxero on Github")
                        .multilineTextAlignment(.center)
                    Text("Distributed by EAR STUDIO INC")
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                    
                    Text("Please reach out with any issues.")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 20)
                    
                    Button {
                        isPresented = false
                        Haptics.shared.med()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Let's Go")
                                .foregroundColor(Color.white)
                                .bold()
                                .font(.system(size: 20))
                                .multilineTextAlignment(.center)
                                .padding(10.0)
                        }
                    }
                    .padding([.leading, .bottom, .trailing], 20.0)
                    .frame(maxHeight: 50)
                }
            }
            .navigationTitle("Shakespeare Remote")
        }
    }
}

#Preview {
    WelcomeView(isPresented: .constant(true))
}
