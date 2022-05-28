/*
See the License.txt file for this sample’s licensing information.
*/

import Foundation
import SwiftUI

struct Info {
    let image: String
    let name: String
    let story_template: String
    let story: String
    var hobbies: [String]
    let foods: [String]
    let colors: [Color]
    let funFacts_template : [String]
    let funFacts: [String]
}

var information = Info(
    image: "Placeholder",
    name: "Bry",
    story_template: "A story can be about anything you can dream up. There are no right answers, there is no one else.\n\nNeed some inspiration?\n• 🐶🐱🛶️🎭🎤🎧🎸\n• 🏄‍♀️🚵‍♀️🚴‍♀️⛵️🥾🏂⛷📚\n• ✍️🥖☕️🏋️‍♂️🚲🧗‍♀️ ",
    story: "Ok, so this's actually my first time trying to write a story from an application that already have a template before which I think is quite inspirational",
    hobbies: ["bicycle", "ticket.fill", "book.fill"],
    foods: ["🥐", "🌮", "🍣"],
    colors: [Color.blue, Color.purple, Color.pink],
    funFacts_template: [
        "The femur is the longest and largest bone in the human body.",
        "The moon is 238,900 miles away.",
        "Prince’s last name was Nelson.",
        "503 new species were discovered in 2020.",
        "Ice is 9 percent less dense than liquid water.",
        "You can spell every number up to 1,000 without using the letter A.\n\n...one, two, three, four...ninety-nine...nine hundred ninety-nine 🧐",
        "A collection of hippos is called a bloat.",
        "White sand beaches are made of parrotfish poop.",
    ],
    funFacts: [
        "To be honest, I didn't know what exactly that I want to write every time I was in the front of screen to do it.",
        "However, it's been a while since I always think about something that I want to express in through various kind of way.",
        "The story may seem irrelevant or unnecessary as most of the things that I tried to explain were as general as possible.",
        "I'm also not sure whether I can create a really unique application's experience with these kind of story.",
        "Beside its generic topic, some of the sentences may also quite complex and hard to understand due to the incorrect grammar.",
        "As the result, I didn't expect to much as well with this project although it was finally way more better than the previous 2 submission.",
        "I hope my very short stories can give different perspective so that we can all be an open minded person who respect each other.",
        "Last but not least, all of these sentences were just some initial disclaimer or even an introduction to the application itself",
    ]
)
