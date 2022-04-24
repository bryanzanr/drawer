/*
See the License.txt file for this sample’s licensing information.
*/

import Foundation
import SwiftUI

let story_template = Story(pages: [
    StoryPage( // 0
        """
        Welcome to Choose Your Own Story
        🥖🍪Bake Off!🥐🍰
        
        You enter a local baking competition at the county fair 🎪. It’s a beautiful summer day and you are excited! When you enter the room, you look around to see ten identical stations.
        
        Each station is stocked with bowls of different sizes, spatulas, spoons, and a standing mixer. You are the third to arrive, so there are many stations still available. Where do you sit?
        """,
        choices: [
            Choice(text: "Front row!", destination: 1),
            Choice(text: "Find somewhere in the middle", destination: 1),
            Choice(text: "Back of the room", destination: 2),
        ]
    ),
    StoryPage( // 1
        """
        Luckily, some nice people fill in around you and wave politely. The directions sounds fun! Make a sponge cake you would have wanted as a child for your birthday, focusing on the decorations and theme. The top three bakers will win a cash prize. You start with a theme.
        """,
        choices: [
            Choice(text: "Trains", destination: 3),
            Choice(text: "Castles", destination: 5),
            Choice(text: "Rainbows", destination: 6),
            Choice(text: "Woodland creatures", destination: 5),
            Choice(text: "Outer space", destination: 3),
        ]
    ),
    StoryPage( // 2
        """
        Oh no. There is a very loud person next to you. You can barely hear the directions in the back of the room. You think they said something about a birthday cake. Luckily, the person in front of you whispers a brief review of what they said...glazing over a few things. “A birthday cake I would have wanted as a kid.” Hmm? You think back to your favorite cake.
        """,
        choices: [
            Choice(text: "Chocolate", destination: 4),
            Choice(text: "Red velvet", destination: 4),
            Choice(text: "Vanilla confetti", destination: 5),
            Choice(text: "Strawberry shortcake", destination: 3),
        ]
    ),
    StoryPage( // 3
        """
        Great choice! Now you just need to make the sponge cake and start thinking about the toppings. You scan the selection on the table and start planning your toppings. In addition to all the colorful icing, you choose...
        """,
        choices: [
            Choice(text: "Sprinkles", destination: 8),
            Choice(text: "Berries", destination: 7),
            Choice(text: "Chocolate", destination: 9),
        ]
    ),
    StoryPage( // 4
        """
        Okay, you seem to be in the clear. Everyone else is busy working on their cakes and you are too...only their cakes all look the same. You shrug it off thinking your cake is going to be unique and special. The judges come over and ask you what’s going to go on top of your cake. You tell them:
        """,
        choices: [
            Choice(text: "Piped buttercream frosting", destination: 13),
            Choice(text: "Fondant icing", destination: 7),
        ]
    ),
    StoryPage( // 5
        """
        The judges come around to ask you about your cake. You are so excited to tell them about your toppings, which include:
        """,
        choices: [
            Choice(text: "Marzipan figurines", destination: 12),
            Choice(text: "Fondant figurines", destination: 14),
        ]
    ),
    StoryPage( // 6
        """
        The judges come around to ask you what you are planning. You tell them all about your rainbow-themed cake. One of the things you tell them is:
        """,
        choices: [
            Choice(text: "It’s in the shape of a rainbow.", destination: 15),
            Choice(text: "It has multicolored candies on the outside.", destination: 10),
            Choice(text: "It has marshmallow clouds.", destination: 11),
        ]
    ),
    StoryPage( // 7
        """
        There is so much available to decorate with; your cake keeps getting better and better. You notice some of your neighbors are using some decorations you didn’t see on the table. What do you do?
        """,
        choices: [
            Choice(text: "Pop over to your neighbor’s bench and ask where they got their toppings.", destination: 16),
            Choice(text: "Keep working away, your cake will be great even without the specialty item.", destination: 20),
        ]
    ),
    StoryPage( // 8
        """
        You are running out of time, so you put your cake in the freezer to speed things up. You check it after ten minutes. What do you do?
        """,

        choices: [
            Choice(text: "Pipe the decorations onto parchment paper. You can transfer them at the last minute.", destination: 17),
            Choice(text: "Start decorating, you don’t have a minute to waste.", destination: 18),
        ]
    ),
    StoryPage( // 9
        """
        You are feeling good about your timing and start creating your design. You want your theme to come to life, so you decide to upgrade your flat design to become 3D. You head over to the table of supplies and grab:
        """,
        choices: [
            Choice(text: "Marzipan, and lots of it!", destination: 19),
            Choice(text: "Several bags of different color icing.", destination: 20),
        ]
    ),
    StoryPage( // 10
        """
        When you head to the decorations table to get some candy, you find red, orange, yellow, green, and purple candies, but no blue or indigo! Someone making a troll cake has used all the blue-colored candies. You come in a respectable 4th place, despite your five color rainbow.
        
        😢 Try again.
        """,
        choices: []
    ),
    StoryPage( // 11
        """
        The judges say you overbaked your cake and your marshmallow clouds fall flat. You come in 7th place.
        
        😢 Try again.
        """,
        choices: []
    ),
    StoryPage( // 12
        """
        Now that the judges have moved on, you are able to get going on your decorations. You start by making all the marzipan figurines. Things are looking pretty good until...you SNEEZE! 🤧🦠 The spray goes everywhere and you have to restart your decorations. In the end, you run out of time and come in 8th place.
        
        😢 Try again.
        """,
        choices: []
    ),
    StoryPage( // 13
        """
        The judges come by to ask about your cake. They keep prying for more, and can’t understand why you are only using piped icing. After a short time, you realize you have missed a HUGE part of the directions. You complete the challenge and go home in last place.
        
        😢 Try again.
        """,
        choices: []
    ),
    StoryPage( // 14
        """
        Your cake is coming together nicely when a dog bursts into the tent! He runs through, toppling over a tray of your piped decorations. You run out of time to remake them and come in 9th place.
        
        😢 Try again.
        """,

        choices: []
    ),
    StoryPage( // 15
        """
        Your rainbow turns out magnificent! The arch is sky high and it impresses the judges. You win 2nd place.🥈
        
        🎉💵You are a cash prize winner!💵🥳
        """,
        choices: []
    ),
    StoryPage( // 16
        """
        Right before you get to your neighbors bench, you trip on a power cord and knock over their sponge cake! There is no time for them to start over. They are devastated and you decide to disqualify yourself out of solidarity.
        
        😢 Try again.
        """,
        choices: []
    ),
    StoryPage( // 17
        """
        Good thinking! You can complete most of your decorations while your cake continues to cool. You work hard and, before you know it, the competition is over and your cake looks spectacular. You come in 3rd place!🥉
        
        🎉💵You are a cash prize winner!💵🥳
        """,
        choices: []
    ),
    StoryPage( // 18
        """
        Oh no, you should have waited! All your frosting melts off the sides and your decorations are a disaster. Luckily your cake perfectly baked. The judges are pretty harsh about your decorations and you finish in 6th place.
        
        😢 Try again.
        """,
        choices: []
    ),
    StoryPage( // 19
        """
        The judges love your theme and the 3D elements really make it come alive! They compliment you on your mix of chocolate and marzipan. You win 1st place! 🎉🎂🥇
        
        🎉💵You are a cash prize winner!💵🥳
        """,
        choices: []
    ),
    StoryPage( // 20
        """
        The judges compliment your theme, but the icing is too thick and overpowers the delicate cake. You come in 5th place.
        
        😢 Try again.
        """,
        choices: []
    ),
])

let story = Story(pages: [
    StoryPage( // 0
        """
        Welcome to My Kind of Draw My Life Story
        🥖🍪Get Ready!🥐🍰
        
        I'm just an ordinary people who like to express about my opinion 🎪 although most of the time I have never got an opportunity to shared it to the public.
        
        Basically it's all caused by my laziness but there's also some lack of motivation from the surrounding. Sometimes the only thing that I can do is just be patient since there're still so many things that I can grateful of. What do you want me to tell next?
        """,
        choices: [
            Choice(text: "Let the randomizer decide!", destination: 1),
            Choice(text: "Other things beside motivational", destination: 1),
            Choice(text: "Next reason", destination: 2),
        ]
    ),
    StoryPage( // 1
        """
        To be honest, I'm not sure whether I can provide other story without any kind of moral story. Maybe it's all about the app! I was previously working on a super app application that can bsically have many kind of functionalities as I intended to create it for learning all of the features for at least once. So what kind of apps do you want me to tell?
        """,
        choices: [
            Choice(text: "MotivationalApp", destination: 3),
            Choice(text: "The SuperApp", destination: 5),
            Choice(text: "MovieApp", destination: 6),
            Choice(text: "Let the randomizer decide!", destination: 5),
            Choice(text: "Back to the first story", destination: 3),
        ]
    ),
    StoryPage( // 2
        """
        Sometimes, there're always some blockers when you are started to try about something new. It may often because of the result is not the way you're expected before, or it's just ourselves who didn't got an enough consistency to keep trying doing some stuffs that we like. Some people used to said that “It's better to start late than nothing at all.” Hmm? I think I can relate this with different kind of perspectives.
        """,
        choices: [
            Choice(text: "Content creator story", destination: 4),
            Choice(text: "Let the randomizer decide!", destination: 4),
            Choice(text: "Back to the second story", destination: 5),
            Choice(text: "Personal app story", destination: 3),
        ]
    ),
    StoryPage( // 3
        """
        Great choice! I'm actually always tried to create an app based on my experience on using similar app but didn't have a unique things that I used to found in the past. So from here, I can tell you about the previous app that I used to like first or directly goes into the app that I used to create, and you choose...
        """,
        choices: [
            Choice(text: "Previous liked app", destination: 8),
            Choice(text: "Personal app reborn", destination: 7),
            Choice(text: "My other dreams", destination: 9),
        ]
    ),
    StoryPage( // 4
        """
        Okay, before I was able to develop an application, I was previously like to create a video content to several channels that I dedicate to some specific things only. Sadly, due to my inconsistency of uploading it, after more than 10 years, I'm still can't the things that I deserve although I was take the start earlier than the others. As the result, in order to get some new motivation, I try to create in the new kind of way every time I start over. You want to know what's the next thing that I want to do? 
        """,
        choices: [
            Choice(text: "Finding some motivation", destination: 13),
            Choice(text: "Combining many idea", destination: 7),
        ]
    ),
    StoryPage( // 5
        """
        The first app that I used to develop is always tried to add some additional features so that I can use it to many kinds of way. All of the additional features are basically the new lesson that I learned and want to implement without having to create the app from the beginning. However, although it should can give various advantage or benefit to wide range of people, I never really published it yet due to the lack of integration which can actually be made to each of the features. So, what's next?
        """,
        choices: [
            Choice(text: "The published app", destination: 12),
            Choice(text: "The published content", destination: 14),
        ]
    ),
    StoryPage( // 6
        """
        Besides motivational and app story, I'm also like to dream about other things, such as movie which someday I wanted to realize it. Some the previous created content that I used to make are also about a very short movie, so maybe creating an app about a movie is a good idea. 
        """,
        choices: [
            Choice(text: "Tell me more about the movie app.", destination: 15),
            Choice(text: "Tell me more about the published short movie.", destination: 10),
            Choice(text: "Let the randomizer decide other things beside those two!", destination: 11),
        ]
    ),
    StoryPage( // 7
        """
        The app that I was developed before is meant to be an app that I can personally used everyday. However, since it's actually used unofficial data from the popular app, I can't publish it to the public except just for learning puposes inside my portfolio repository. Do you still want me to tell other stories about the app?
        """,
        choices: [
            Choice(text: "Yes, tell me more about the unique app that can still be published into the public.", destination: 16),
            Choice(text: "Maybe just tell me directly about the lesson learned and future possibilities.", destination: 20),
        ]
    ),
    StoryPage( // 8
        """
        Time is really running fast just like technology. For approximately 20 years, I've been living with different kind of technology that was introduced to me in the quite young age which is earlier than other. However, most of the application were no longer available as the new developer is trying to provide something better that actually more basic that what I previously used before. So, what now?
        """,

        choices: [
            Choice(text: "Create a remake application although it will never had the same condition like it used to be.", destination: 17),
            Choice(text: "Adapt with the current and latest condition with some addition that can make the application different than the others.", destination: 18),
        ]
    ),
    StoryPage( // 9
        """
        The last dreams that I want to tell in this application is related with my personal reflection and thought itself which most of them are quite hard to implement. Sometimes, we've to be a realisctic person when we're decide to list down the things that we want to do. That's all that I can said but there's still some bonus section if you want to take it further. 
        """,
        choices: [
            Choice(text: "Let the randomizer decide!", destination: 19),
            Choice(text: "Extra story.", destination: 20),
        ]
    ),
    StoryPage( // 10
        """
        It's been a while since I didn't published any very short movie again as I need some support from the other people to realise it. It was used to be a school project which we're still very enthusiast about. Well, time goes by and we're never really working on it anymore especially when we've already had our own business to fulfill. 
        
        😢 It's pretty sad but life must goes on. This's actually already the last part of movie section, but you can still continue to the others. 
        """,
        choices: [
            Choice(text: "The next part of motivational section", destination: 2),
            Choice(text: "The first part of content creator section", destination: 4),
        ]
    ),
    StoryPage( // 11
        """
        The other things besides the movie section are motivational section and content creator section. However, there're actually still so many things that I want to explain but I'm not sure if it will create a bigger impact or not. 
        
        😢 Hopefully with the same amount of the previous template, it's already enough to represent the main purpose of the app. You can still come back to the previous section to see the other things that I want to tell. 
        """,
        choices: [
            Choice(text: "The beginning of movie section", destination: 6),
        ]
    ),
    StoryPage( // 12
        """
        The app that I've published is actually related to my college project that I was working on with my friend. The project was initially never intended to be published before but I decided to continue a little bit in order for the app can still be used for a quite long time without having to rely on their unmaintainble work. 
        
        😢 I know it's pretty sad to see the work that have been developed together for approximately 6 month was turn into something which is never really used by many peoples. So, you can continue to the published content now. 
        """,
        choices: [
            Choice(text: "The reusable of old project", destination: 14),
        ]
    ),
    StoryPage( // 13
        """
        After I created something new and published it to the public, I'm not really confident enough to share it on my personal social media. I always wanted to the content to be more organic rather than using any controversial word to make it viral. 
        
        😢 But most of the times, it was never be noticed so I decided to share with my closest friends in order to get some unnecessary attention which can a give me a little addition to my motivation. You can continue to other section of content creator story or come back into the others beside motivational section.
        """,
        choices: [
            Choice(text: "Other things beside motivational", destination: 1),
            Choice(text: "Combining many idea", destination: 7),
        ]
    ),
    StoryPage( // 14
        """
        Most of my first published video content were about gaming related, but then I decided to to other things like tutorial, review, music, until comedy. Of couse there're still so many that I haven't tried to make which may utilize the old project which I've been done before. 
        
        😢 Although I've created several type of content, none of them were really noticed into the public which is quite sad. But it doesn't have to stop there as there'll always something new that makes me inspire to keep creating new content. If you're curious, you can check the other options in the second story section. 
        """,

        choices: [
            Choice(text: "The published app", destination: 12),
        ]
    ),
    StoryPage( // 15
        """
        I've always really loved to watch movie especially the one that have a really heartbreaking stories. The movie app that I want to create is basically related to those many movies that I've watched before which hopefully can give motivational or inspirational lesson🥈. 
        
        💵 Some of the app functionalities already done by my friends which they decided to open source for me, so I can continue it more easily and take it to the next level!💵 What's about the other two options?
        """,
        choices: [
            Choice(text: "The published short movie.", destination: 10),
            Choice(text: "Other things that I can't explain it yet", destination: 11),
        ]
    ),
    StoryPage( // 16
        """
        In order to publish the app that uses some integration with the current popular one, we've to make sure that the app comply with the public data which they provided. Besides that, we can also create the app from scratch which can make it bigger if the app finally can reached the public.
        
        😢 None of these two options will gonna be easy as most of the app nowadays already provide various of function as their additional features.
        """,
        choices: [
            Choice(text: "Ok, now tell me about the conclusion.", destination: 20),
        ]
    ),
    StoryPage( // 17
        """
        Good thinking! Remake somehing that currently not existed right now can actually make us preserve of what tings that used to be possible in the past. Besides that, we're also provide a better competition with the others as we're not creating the same thing which already been done before🥉.
        
        💵 I hope we can all reach our own success just like what we're expected!💵 If you're not really the type of person that can start with an unique idea, you can still choose the other option which follow with the current trend. 
        """,
        choices: [
            Choice(text: "Not starting your own unique things.", destination: 18),
        ]
    ),
    StoryPage( // 18
        """
        People often said that "Businesses will never everyone cup of coffee", just like creating an app that is outside of the current trend. Most people right now prefer to create similar things as they can easier to modify it. Besides that, you can also make your app as the alternative for people who decided to leave and switch for the others. 
        
        😢 However, if the competitors already monopoly the market, it's quite hard to make your app got expanded as the operational resources are already far left behind. So, what's about the other options?
        """,
        choices: [
            Choice(text: "Starting your own unique things.", destination: 17),
        ]
    ),
    StoryPage( // 19
        """
        This's actually a pure random choice that I reserved for people who want to experience the story in the unique order🥇.
        
        🎉💵 Let the randomizer decide!💵🥳
        """,
        choices: [
            Choice(text: "Option 1", destination: 5),
            Choice(text: "Option 2", destination: 11),
            Choice(text: "Option 3", destination: 1),
            Choice(text: "Option 4", destination: 4),
        ]
    ),
    StoryPage( // 20
        """
        Ok, so this's the last story that can come from different kind of section which is the lesson learned of why I create this story in the first place. I'm actually inspire about how people can dratically changed their life in the certain amount of time depend on how they decided to waste their life. 
        
        😢 Well, that's all that I can say, I hope I can create more stories about this in the future.
        """,
        choices: []
    ),
])
