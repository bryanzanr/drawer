/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

class EventData: ObservableObject {
    @Published var events: [Event] = [
        Event(symbol: "gift.fill",
              color: .red,
              title: "My Birthday",
              tasks: [EventTask(text: "Family Dinner"),
                      EventTask(text: "Charity"),
                      EventTask(text: "New Productive"),
                      EventTask(text: "Special Content"),
                     ],
              date: Date.from(month: 11, day: 10, year: 1997)),
        Event(symbol: "theatermasks.fill",
              color: .yellow,
              title: "Hangout",
              tasks: [EventTask(text: "Get tickets"),
                      EventTask(text: "Friend Lunch"),
                      EventTask(text: "Watch Movie in the Cinema"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 22)),
        Event(symbol: "facemask.fill",
              color: .indigo,
              title: "Refreshing",
              tasks: [EventTask(text: "Book hotel"),
                      EventTask(text: "Staycation time"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 4)),
        Event(symbol: "leaf.fill",
              color: .green,
              title: "Road Trip",
              tasks: [EventTask(text: "Luggage Packing"),
                      EventTask(text: "Fill vehicle gasoline"),
                      EventTask(text: "Top up e-money"),
                      EventTask(text: "Pray"),
                      EventTask(text: "Rest for a while"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 36)),
        Event(symbol: "gamecontroller.fill",
              color: .cyan,
              title: "Game Streaming",
              tasks: [EventTask(text: "Find 2nd game online"),
                      EventTask(text: "Record first test and stream"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 2)),
        Event(symbol: "graduationcap.fill",
              color: .primary,
              title: "Research Conference",
              tasks: [
                  EventTask(text: "Prepare paper"),
                  EventTask(text: "Ask for feedback"),
                  EventTask(text: "Prepare slide"),
                  EventTask(text: "Wait for the announcement"),
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 365)),
        Event(symbol: "book.fill",
              color: .purple,
              title: "App Launch",
              tasks: [
                  EventTask(text: "Finish first MVP"),
                  EventTask(text: "Send beta to tester"),
                  EventTask(text: "Final read-through and promote"),
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 365 * 2)),
        Event(symbol: "globe.americas.fill",
              color: .gray,
              title: "Self Improvement",
              tasks: [
                  EventTask(text: "Share Knowledge"),
                  EventTask(text: "Learn new things"),
                  EventTask(text: "Improve old legacy"),
                  EventTask(text: "Be grateful"),
              ],
              date: Date.from(month: 6, day: 7, year: 2021)),
        Event(symbol: "case.fill",
              color: .orange,
              title: "Past Project",
              tasks: [
                  EventTask(text: "Mod Showcase Channel and Forum"),
                  EventTask(text: "Unboxing video review"),
                  EventTask(text: "Group podcast"),
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 19)),
    ]

    func delete(_ event: Event) {
        events.removeAll { $0.id == event.id }
    }
    
    func add(_ event: Event) {
        events.append(event)
    }
    
    func exists(_ event: Event) -> Bool {
        events.contains(event)
    }
    
    func sortedEvents(period: Period) -> Binding<[Event]> {
        Binding<[Event]>(
            get: {
                self.events
                    .filter {
                        switch period {
                        case .nextSevenDays:
                            return $0.isWithinSevenDays
                        case .nextThirtyDays:
                            return $0.isWithinSevenToThirtyDays
                        case .future:
                            return $0.isDistant
                        case .past:
                            return $0.isPast
                        }
                    }
                    .sorted { $0.date < $1.date }
            },
            set: { events in
                for event in events {
                    if let index = self.events.firstIndex(where: { $0.id == event.id }) {
                        self.events[index] = event
                    }
                }
            }
        )
    }
}

enum Period: String, CaseIterable, Identifiable {
    case nextSevenDays = "Next 7 Days"
    case nextThirtyDays = "Next 30 Days"
    case future = "Future"
    case past = "Past"
    
    var id: String { self.rawValue }
    var name: String { self.rawValue }
}

extension Date {
    static func from(month: Int, day: Int, year: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        let calendar = Calendar(identifier: .gregorian)
        if let date = calendar.date(from: dateComponents) {
            return date
        } else {
            return Date()
        }
    }

    static func roundedHoursFromNow(_ hours: Double) -> Date {
        let exactDate = Date(timeIntervalSinceNow: hours)
        guard let hourRange = Calendar.current.dateInterval(of: .hour, for: exactDate) else {
            return exactDate
        }
        return hourRange.end
    }
}
