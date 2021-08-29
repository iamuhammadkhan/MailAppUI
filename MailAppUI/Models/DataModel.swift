//
//  DataModel.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/29/21.
//

import Foundation

struct DataModel {
    // first lets add a lorem ipsum
    static let loremText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut nulla interdum, consectetur mi vitae, blandit magna. Aenean mi quam, suscipit et fringilla a, lacinia vel odio. Donec sollicitudin nibh id eros malesuada cursus. Sed sed pulvinar mauris, quis faucibus mauris. In mollis dui quis quam tincidunt egestas. Donec nunc velit, sagittis venenatis posuere euismod, blandit vitae sapien. Nunc facilisis quam quis enim luctus accumsan. Curabitur tempus eros quis fermentum dictum. Nulla facilisi. Duis consequat facilisis orci ac rhoncus. Vestibulum dictum sagittis risus. Curabitur vitae rutrum magna. Morbi sit amet magna vestibulum, ultricies augue sed, faucibus risus. Maecenas vitae fermentum diam, a laoreet lorem."
    
    static let mailList = [
        MailItem(senderName: "Me & Luis allen", sendTime: "Nov 18", title: "Desktop Computers", message: "Over 92% of computers are infected with Adware and spyware. " + loremText),
        MailItem(senderName: "Mabelle Canzales", sendTime: "Nov 11", title: "Free Real Estate Listings", message: "Buisness cards represent not only your buisness but also tells people your " + loremText),
        MailItem(senderName: "Matilda Ward", sendTime: "Nov 11", title: "Writting A Good Headline", message: "I want to talk about the thinfs that are quite important to me. There are love " + loremText),
        MailItem(senderName: "Myrtle West", sendTime: "Nov 10", title: "Finally A Top Secret Way", message: "Conversations can be tricky buisness sometimes, decoding what is said with " + loremText),
        MailItem(senderName: "Lottie Diaz", sendTime: "Nov 6", title: "Internet Banner", message: "Spielberg's bloackbuster, 'Minority Report' is set in the year 2004. The" + loremText),
        MailItem(senderName: "Charlotte Holmes", sendTime: "Nov 3", title: "Advertising Outdoors", message: "There is no better advertisement campain tha is low cost and also " + loremText),
        MailItem(senderName: "Mable jennings", sendTime: "Nov 3", title: "Tremblant in Canada", message: "Over 92% of computers are infected with Adware and spyware" + loremText),
        MailItem(senderName: "Sophie allen", sendTime: "Nov 1", title: "Fresh Offer", message: "Spielberg's bloackbuster, 'Minority Report' is set in the year 2004. The" + loremText),
        MailItem(senderName: "Woddy Holmes", sendTime: "Oct 28", title: "Internet Listing", message: "There is no better advertisement campain tha is low cost and also " + loremText),
        MailItem(senderName: "Mike robinson", sendTime: "Oct 24", title: "Mobile Phones Deals", message: "Conversations can be tricky buisness sometimes, decoding what is said with " + loremText),
        MailItem(senderName: "Allen", sendTime: "Oct 22", title: "Low Cost Mobile Data", message: "There is no better advertisement campain tha is low cost and also " + loremText)
    ]
}
