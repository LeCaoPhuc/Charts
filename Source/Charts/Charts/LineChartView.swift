//
//  LineChartView.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics

@objc(BarChartFormatter)
public class BarChartFormatter: NSObject, IAxisValueFormatter{
    
    open var labels: [String]!

    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        
        return labels[Int(value)]
    }
}

/// Chart that draws lines, surfaces, circles, ...
open class LineChartView: BarLineChartViewBase, LineChartDataProvider
{
    internal override func initialize()
    {
        super.initialize()
        
        renderer = LineChartRenderer(dataProvider: self, animator: _animator, viewPortHandler: _viewPortHandler)
    }
    
    // MARK: - LineChartDataProvider
    
    open var lineData: LineChartData? { return _data as? LineChartData }

    open var lineChartData: LineChartData?

    open func setData() {
        self.data = self.lineChartData;
    }
}
