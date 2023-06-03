//
//  WelcomeView.swift
//  AllWeather
//
//  Created by Aryan Mogha on 02/06/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text ("Welcome to the Cloudy App")
                    .bold()
                    .font(.title)
                Text ("Please share your current location to get the weather in your area")
                    .padding ()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton (.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(20)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    struct WelcomeView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView()
        }
    }
}
