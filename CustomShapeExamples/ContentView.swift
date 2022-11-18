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

struct Diamond: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        // The path that describes the shape
        var path = Path()
        
        // Where shape is described
        path.move(to: CGPoint(x: rect.midX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: 0))
        // Send back (return) the path that describes the shape
        return path
        
    }
    
}

struct StarLike: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        // The path that describes the shape
        var path = Path()
        
        // Where shape is described
        path.move(to: CGPoint(x: 0, y: rect.maxY / 8 * 3))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY / 8 * 3))
        path.addLine(to: CGPoint(x: rect.maxX / 6, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX / 6 * 5, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY / 8 * 3))
        // Send back (return) the path that describes the shape
        return path
        
    }
    
}

struct Star: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        // The path that describes the shape
        var path = Path()
        
        // Define the center of x and y for the star
        var center: Double
        var centerX: Double
        var centerY: Double
        if rect.maxX >= rect.maxY {
            
            center = rect.maxY / 2.0
            centerX = center + (rect.maxX - rect.maxY) / 2.0
            centerY = center
            
        } else {
            
            center = rect.maxX / 2.0
            centerX = center
            centerY = center + (rect.maxY - rect.maxX) / 2.0
            
        }
        
        // Get the scale factor
        var scaleOf: Double {
            
            return center * 2 / 5
            
        }
        
        // Where shape is described
        path.move(to: CGPoint(x: centerX - 0.6 * scaleOf, y: centerY - 0.6 * scaleOf))
        path.addLine(to: CGPoint(x: centerX, y: centerY - 2.4 * scaleOf)) // sharp
        path.addLine(to: CGPoint(x: centerX + 0.6 * scaleOf, y: centerY - 0.6 * scaleOf))
        path.addLine(to: CGPoint(x: centerX + 2.5 * scaleOf, y: centerY - 0.6 * scaleOf)) // sharp
        path.addLine(to: CGPoint(x: centerX + 1.0 * scaleOf, y: centerY + 0.5 * scaleOf))
        path.addLine(to: CGPoint(x: centerX + 1.6 * scaleOf, y: centerY + 2.4 * scaleOf)) // sharp
        path.addLine(to: CGPoint(x: centerX, y: centerY + 1.25 * scaleOf))
        path.addLine(to: CGPoint(x: centerX - 1.6 * scaleOf, y: centerY + 2.4 * scaleOf)) // sharp
        path.addLine(to: CGPoint(x: centerX - 1.0 * scaleOf, y: centerY + 0.5 * scaleOf))
        path.addLine(to: CGPoint(x: centerX - 2.5 * scaleOf, y: centerY - 0.6 * scaleOf)) // sharp
        path.addLine(to: CGPoint(x: centerX - 0.6 * scaleOf, y: centerY - 0.6 * scaleOf))
        
        // Send back (return) the path that describes the shape
        return path
        
    }
    
}

struct ContentView: View {
    var body: some View {
        Star()
            .stroke()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
