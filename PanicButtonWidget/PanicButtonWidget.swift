//
//  PanicButtonWidget.swift
//  PanicButtonWidget
//
//  Created by Lucas Barker on 8/2/26.
//

import WidgetKit
import SwiftUI

struct PanicButtonProvider: TimelineProvider {
    func placeholder(in context: Context) -> PanicButtonEntry {
        PanicButtonEntry(date: Date(), emoji: "😀")
    }

    func getSnapshot(in context: Context, completion: @escaping (PanicButtonEntry) -> ()) {
        let entry = PanicButtonEntry(date: Date(), emoji: "😀")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [PanicButtonEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = PanicButtonEntry(date: entryDate, emoji: "😀")
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }

//    func relevances() async -> WidgetRelevances<Void> {
//        // Generate a list containing the contexts this widget is relevant in.
//    }
}

struct PanicButtonEntry: TimelineEntry {
    let date: Date
    let emoji: String
}

struct PanicButtonWidgetEntryView : View {
    var entry: PanicButtonProvider.Entry

    var body: some View {
        VStack {
            Text("Time:")
            Text(entry.date, style: .time)

            Text("Emoji:")
            Text(entry.emoji)
        }
    }
}

struct PanicButtonWidget: Widget {
    let kind: String = "PanicButtonWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: PanicButtonProvider()) { entry in
            if #available(iOS 17.0, *) {
                PanicButtonWidgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                PanicButtonWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

#Preview(as: .systemSmall) {
    PanicButtonWidget()
} timeline: {
    PanicButtonEntry(date: .now, emoji: "😀")
    PanicButtonEntry(date: .now, emoji: "🤩")
}
