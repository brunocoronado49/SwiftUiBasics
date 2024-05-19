//
//  MapView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 15/05/24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 20.66999656203322,
            longitude: -103.35531502853456
        )
        
        let span = MKCoordinateSpan(
            latitudeDelta: 2,
            longitudeDelta: 1
        )
        
        let region = MKCoordinateRegion(
            center: coordinate,
            span: span
        )
        
        uiView.setRegion(region, animated: true)
    }
}

#Preview {
    MapView()
}
