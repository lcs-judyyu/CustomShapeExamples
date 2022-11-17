//
//  ContentView.swift
//  CustomShapeExamples
//
//  Created by Judy YU on 2022-11-17.
//

import SwiftUI

struct Diagonal: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        // The path that describes the shape
        var path = Path()
        
        // Where shape is described
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        // Send back (return) the path that describes the shape
        return path
        
    }
    
}

struct ContentView: View {
    var body: some View {
       Diagonal()
            .stroke()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
