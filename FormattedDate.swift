//
//  FormattedViews.swift
//  Calligo
//
//  Created by Nilay Shriram on 3/4/23.
//

import SwiftUI

struct FormattedDate: View {
    var selectedDate: Date
    var omitTime: Bool = true
    var body: some View {
        Text(selectedDate.formatted(date: .long, time: omitTime ? .omitted : .standard))
            .font(.system(size: 28))
            .bold()
            .foregroundColor(Color.accentColor)
            .padding()
            .animation(.spring(), value: selectedDate)
            .frame(width: 500)
    }
}

struct FormattedDate_Previews: PreviewProvider {
    static var previews: some View {
        FormattedDate(selectedDate: Date())
    }
}
