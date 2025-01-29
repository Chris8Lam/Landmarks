//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ping on 1/28/25.
//

import SwiftUI

//struct LandmarkList: View {
//	var body: some View {
//		List(landmarks, id: \.id) { landmark in
//			LandmarkRow(landmark: landmark)
//		}
//	}
//}
struct LandmarkList: View {
	@EnvironmentObject var modelData: ModelData
	@State private var showFavoritesOnly = false

	var filteredLandmarks: [Landmark] {
		modelData.landmarks.filter { landmark in
			(!showFavoritesOnly || landmark.isFavorite)
		}
	}

	var body: some View {
		NavigationView {
			List {
				Toggle(isOn: $showFavoritesOnly) {
					Text("Favorites only")
				}
				ForEach(filteredLandmarks) { landmark in
					NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
						LandmarkRow(landmark: landmark)
					}
				}
			}
			.animation(.default, value: filteredLandmarks)
			.navigationTitle("Landmarks")
		}
	}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
			.environmentObject(ModelData())
    }
}
