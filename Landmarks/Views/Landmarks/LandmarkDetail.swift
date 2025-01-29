//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ping on 1/28/25.
//

import SwiftUI

struct LandmarkDetail: View {
	@EnvironmentObject var modelData: ModelData
	var landmark: Landmark = ModelData().landmarks[0]
	var landmarkIndex: Int {
		modelData.landmarks.firstIndex(where: { $0.id == landmark.id }) ?? 0
	}
    var body: some View {
//		@Binding var modelData = ModelData()
		ScrollView {
			MapView(coordinate: landmark.locationCoordinate)
				.frame(height: 300)
			CircleImage(image: landmark.image)
				.offset(y: -130)
				.padding(.bottom, -130)
			VStack(alignment: .leading) {
				HStack {
					Text(landmark.name)
						.font(.title)
					FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
				}
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
		let modelData = ModelData()
		LandmarkDetail(landmark: modelData.landmarks[0])
			.environmentObject(modelData)
    }
}
