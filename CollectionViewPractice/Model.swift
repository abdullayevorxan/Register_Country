////
////  Model.swift
////  CollectionViewPractice
////
////  Created by Nijat Shikhaliyev on 10.09.24.
////
//
//import Foundation
//

var selectedCountry: Int?

struct Country {
    let countryName: String?
    let countryImage: String?
    let cities: [City]?

    
}

struct City {
    let cityName: String?
    let cityText: text?
    let cityImage: String?
}

enum text: String {
    case Baku = "Baku is the capital and largest city of Azerbaijan, as well as the largest city on the Caspian Sea and in the Caucasus region. Baku is 28 metres (92 ft) below sea level, which makes it the lowest lying national capital in the world and also the largest city in the world below sea level. Baku lies on the southern shore of the Absheron Peninsula, on the Bay of Baku. Baku's urban population was estimated at two million people as of 2009."
    
    case Mingechaur = "Mingechaur is the fourth largest city in Azerbaijan with a population of about 106,000. It is often called the city of lights because of its hydroelectric power station on the Kur River, which divides the city down the middle. The current city was founded in 1948, partly by German prisoners of war captured during World War II Mingechaur is also home to Mingechaur Polytechnic Institute. The city forms an administrative division of Azerbaijan."
    
    case Ganja = "Ganja is Azerbaijan's third largest city, with a population of around 335,600. The city has been a historic and cultural center throughout most of its existence. It was the capital of the Ganja Khanate until 1804; after Qajar Iran ceded it to the Russian Empire following the Treaty of Gulistan in 1813, it became part of the administrative divisions of the Georgia Governorate, Georgia-Imeretia Governorate, Tiflis Governorate, and Elizavetpol Governorate."
    
    case Shusha = "Shusha is a city in Azerbaijan, in the region of Nagorno-Karabakh. Situated at an altitude of 1,400–1,800 metres (4,600–5,900 ft) in the Karabakh mountains, the city was a mountain resort in the Soviet era. Most sources date Shusha's establishment to the 1750s by Panah Ali Khan, founder of the Karabakh Khanate, coinciding with the foundation of the fortress of Shusha. Some attribute this to an alliance between Panah Ali Khan and Melik Shahnazar, the local Armenian prince (melik) of Varanda."
    
    case Madrid = "Madrid is the capital and most populous city of Spain. The city has almost 3.4 million inhabitants and a metropolitan area population of approximately 7 million. It is the second-largest city in the European Union (EU), and its monocentric metropolitan area is the second-largest in the EU. The municipality covers 604.3 km2 (233.3 sq mi) geographical area. Madrid lies on the River Manzanares in the central part of the Iberian Peninsula at about 650 meters above mean sea level."
    
    case Barcelona = "Barcelona is a city on the northeastern coast of Spain. It is the capital and largest city of the autonomous community of Catalonia, as well as the second-most populous municipality of Spain. With a population of 1.6 million within city limits, its urban area extends to numerous neighbouring municipalities within the province of Barcelona and is home to around 5.3 million people, making it the fifth most populous urban area of the European Union after Paris, the Ruhr area, Madrid and Milan."
    
    case Seville = "Seville is the capital and largest city of the Spanish autonomous community of Andalusia and the province of Seville. It is situated on the lower reaches of the River Guadalquivir, in the southwest of the Iberian Peninsula. Seville has a municipal population of about 701,000 as of 2022, and a metropolitan population of about 1.5 million, making it the largest city in Andalusia, the fourth-largest city in Spain and the 25th most populous municipality in the European Union."
    
    case Valencia = "Valencia is the capital of the province and autonomous community of the same name in Spain. It is the third-most populated municipality in the country, with 807,693 inhabitants (2023);[1] 2,522,383 inhabitants live within the metropolitan area. It is located on the banks of the Turia, on the east coast of the Iberian Peninsula on the Mediterranean Sea."

    case Rome = "Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome Capital, and a special comune named Comune di Roma Capitale. With 2,860,009 residents in 1,285 km2 (496.1 sq mi), Rome is the country's most populated comune and the third most populous city in the European Union by population within city limits. The Metropolitan City of Rome, with a population of 4,355,725 residents, is the most populous metropolitan city in Italy."

    case Milan = "Milan is a city in northern Italy, regional capital of Lombardy, and the second-most-populous city proper in Italy after Rome. The city proper has a population of about 1.4 million, while its metropolitan city has 3.22 million residents. The urban area of Milan is the fourth-most-populous in the EU with 6.17 million inhabitants. According to national sources, the population within the wider Milan metropolitan area is estimated between 7.5 million and 8.2 million, making it by far the largest metropolitan area in Italy and one of the largest in the EU. Milan is the economic capital of Italy, one of the economic capitals of Europe and a global financial centre."

    case Venice = "Venice is a city in northeastern Italy and the capital of the Veneto region. It is built on a group of 126 islands that are separated by expanses of open water and by canals; portions of the city are linked by 472 bridges. The islands are in the shallow Venetian Lagoon, an enclosed bay lying between the mouths of the Po and the Piave rivers. In 2020, around 258,685 people resided in greater Venice or the Comune di Venezia, of whom around 51,000 live in the historical island city of Venice and the rest on the mainland."

    case Florence = "Florence is the capital city of the Italian region of Tuscany. It is also the most populated city in Tuscany, with 360,930 inhabitants in 2023, and 984,991 in its metropolitan area. Florence was a centre of medieval European trade and finance and one of the wealthiest cities of that era. It is considered by many academics to have been the birthplace of the Renaissance, becoming a major artistic, cultural, commercial, political, economic and financial center."

    case Warsaw = "Warsaw, officially the Capital City of Warsaw, is the capital and largest city of Poland. The metropolis stands on the River Vistula in east-central Poland. Its population is officially estimated at 1.86 million residents within a greater metropolitan area of 3.27 million residents, which makes Warsaw the 7th most-populous city in the European Union. The city area measures 517 km2 (200 sq mi) and comprises 18 districts, while the metropolitan area covers 6,100 km2 (2,355 sq mi). Warsaw is classified as an alpha global city, a major cultural, political and economic hub, and the country's seat of government."

    case Krakow = "Kraków, also spelled as Cracow or Krakow, is the second-largest and one of the oldest cities in Poland. Situated on the Vistula River in Lesser Poland Voivodeship, the city dates back to the seventh century. Kraków was the official capital of Poland until 1596, and has traditionally been one of the leading centres of Polish academic, economic, cultural, and artistic life. Cited as one of Europe's most beautiful cities, its Old Town with Wawel Royal Castle was declared a UNESCO World Heritage Site in 1978, one of the world's first sites granted the status."
    
    case Poznan = "Poznań is a city on the River Warta in west Poland, within the Greater Poland region. The city is an important cultural and business centre, and one of Poland's most populous regions with many regional customs such as Saint John's Fair (Jarmark Świętojański), traditional Saint Martin's croissants and a local dialect. Among its most important heritage sites are the Renaissance Old Town, Town Hall and Gothic Cathedral."
    
    case Wroclaw = "Wrocław is a city in southwestern Poland and the largest city in the historical region of Silesia. It lies on the banks of the Oder in the Silesian Lowlands of Central Europe, roughly 40 kilometres (25 mi) from the Sudeten Mountains to the south. As of 2023, the official population of Wrocław is 674,132 making it the third largest city in Poland. The population of the Wrocław metropolitan area is around 1.25 million."

}


//
//
//// City(cityImage: "baki", cityText: text.Baku)
