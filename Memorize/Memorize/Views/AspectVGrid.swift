//
//  AspectVGrid.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 23.04.2023.
//

import SwiftUI

struct AspectVGrid<Item, ItemView>: View
where Item: Identifiable,
      ItemView: View {
    
    var items: [Item]
    var aspectRatio: CGFloat
    var content: (Item) -> ItemView
    
    var body: some View {
        GeometryReader { geometry in
            let width: CGFloat = widthForFits(itemsCount: items.count, in: geometry.size, itemAspectRatio: aspectRatio)
            LazyVGrid(columns: [adaptiveGridItem(width)], spacing: 0) {
                ForEach(items) { item in
                    content(item).aspectRatio(aspectRatio, contentMode: .fit)
                }
            }
        }
    }
    
    private func adaptiveGridItem(_ width: CGFloat) -> GridItem {
        var gridItem = GridItem(.adaptive(minimum: width))
        gridItem.spacing = 0
        
        return gridItem
    }
    
    private func widthForFits(itemsCount: Int, in size: CGSize,
                              itemAspectRatio: CGFloat) -> CGFloat {
        var columnCount = 1
        var rowCount = itemsCount
        
        repeat {
            let itemWidth = size.width / CGFloat(columnCount)
            let itemHeight = itemWidth / itemAspectRatio
            
            if CGFloat(rowCount) * itemHeight < size.height { break }
            
            columnCount += 1
            rowCount = (itemsCount + (columnCount - 1)) / columnCount
        } while columnCount < itemsCount
        
        if columnCount > itemsCount {
            columnCount = itemsCount
        }
        
        return floor(size.width / CGFloat(columnCount))
    }
}

//struct AspectVGrid_Previews: PreviewProvider {
//    static var previews: some View {
//        AspectVGrid()
//    }
//}
