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
	var body: some View {
		NavigationView {
			List(landmarks) { landmark in
				NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
					LandmarkRow(landmark: landmark)
				}
			}
			.navigationTitle("Landmarks")
		}
	}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
