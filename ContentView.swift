//
//  ContentView.swift
//  ChartsDemo
//
//  Created by David Razmadze on 6/8/22.
//

import SwiftUI
import Charts

struct ChartItem: Identifiable {
  var id = UUID()
  let type: String
  let value: Double
}

struct ContentView: View {
  
  let chartItems: [ChartItem] = [
    ChartItem(type: "Marketing", value: 102),
    ChartItem(type: "Engineering", value: 64),
    ChartItem(type: "R&D", value: 23),
    ChartItem(type: "Accounting", value: 77),
    ChartItem(type: "Sales", value: 63)
  ]
  
  var body: some View {
    VStack {
      Text("Company Budget")
        .font(.system(size: 32))
      
      Chart(chartItems) { item in
        
        // 1. Bar Mark
        /*
        BarMark(
          x: .value("Department", item.type),
          y: .value("Budget", item.value))
        */
      
        // 2. Line Mark
        /*
        LineMark(
          x: .value("Department", item.type),
          y: .value("Budget", item.value))
        */
        
        // 3. Area Mark
        /*
        AreaMark(
          x: .value("Department", item.type),
          y: .value("Budget", item.value))
        */
        
        // 4. Point Mark
        PointMark(
          x: .value("Department", item.type),
          y: .value("Budget", item.value))
        .foregroundStyle(.white)
      }
      .padding()
      .background(Color.green)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
