//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ping on 1/28/25.
//

import SwiftUI

struct LandmarkDetail: View {
	var landmark: Landmark = landmarks[0]
    var body: some View {
		ScrollView {
			MapView(coordinate: landmark.locationCoordinate)
				.frame(height: 300)
			CircleImage(image: landmark.image)
				.offset(y: -130)
				.padding(.bottom, -130)
			VStack(alignment: .leading) {
				Text(landmark.name)
					.font(.title)
				HStack {
					Text(landmark.park)
					Spacer()
					Text(landmark.state)
				}
				.font(.subheadline)
				.foregroundStyle(.secondary)

				Divider()
				
				Text("About \(landmark.name)")
					.font(.title2)
				Text(landmark.description)
			}
			.padding()
		}
		.navigationTitle(landmark.name)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
