//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ping on 1/28/25.
//

import SwiftUI

struct CircleImage: View {
	var image: Image = Image("turtlerock")
    var body: some View {
		image
			.clipShape(Circle())
			.overlay {
				Circle().stroke(.white, lineWidth: 4)
			}
			.shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("icybay"))
    }
}
