//
//  MapView.swift
//  Landmarks
//
//  Created by Ping on 1/28/25.
//

import SwiftUI
import MapKit

struct MapView: View {
	var coordinate: CLLocationCoordinate2D
    var body: some View {
		Map(coordinateRegion: $region).edgesIgnoringSafeArea(.all)
    }
	@State private var region: MKCoordinateRegion
	init(coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)) {
		self.coordinate = coordinate
		_region = State(initialValue: MKCoordinateRegion(
			center: coordinate,
			span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
	 ))
	}
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194))
    }
}
