//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Ping on 1/29/25.
//

import SwiftUI

struct FavoriteButton: View {
	@Binding var isSet: Bool
    var body: some View {
		Button {
			isSet.toggle()
		} label: {
			Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
				.labelStyle(.iconOnly)
				.foregroundColor(isSet ? .yellow : .gray)
		}
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
		FavoriteButton(isSet: .constant(true))
    }
}
