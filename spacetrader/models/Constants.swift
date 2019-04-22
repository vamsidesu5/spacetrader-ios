//
//  Constants.swift
//  spacetrader
//
//  Created by Rahul Rajan on 4/19/19.
//  Copyright © 2019 com.vamsi. All rights reserved.
//

import Foundation

struct Constants {
    static var PreAgriculture = TechLevel(level: 0, name: "Pre-Agriculture");
    static var Agriculture = TechLevel(level: 1, name: "Agriculture");
    static var Medieval = TechLevel(level: 2, name: "Medieval");
    static var Renaissance = TechLevel(level: 3, name: "Renaissance");
    static var EarlyIndustrial = TechLevel(level: 4, name: "Early-Industrial");
    static var Industrial = TechLevel(level: 5, name: "Industrial");
    static var PostIndustrial = TechLevel(level: 6, name: "Post-Industrial");
    static var HighTech = TechLevel(level: 7, name: "High-Tech");
    static var arrTechLevel = [PreAgriculture, Agriculture, Medieval, Renaissance,EarlyIndustrial,Industrial,PostIndustrial, HighTech]
    static var Water = TradeGood(name: "Water", MTLP: 0, MTLU: 0, TTP: 2, basePrice: 30, IPL: 3, variance: 4);
    static var Furs = TradeGood(name: "Furs", MTLP: 0, MTLU: 0, TTP: 0, basePrice: 250, IPL: 10, variance: 10);
    static var Food = TradeGood(name: "Food", MTLP: 1, MTLU: 0, TTP: 1, basePrice: 100, IPL: 5, variance: 5);
    static var Ore = TradeGood(name: "Ore", MTLP: 2, MTLU: 2, TTP: 3, basePrice: 350, IPL: 20, variance: 10);
    static var Games = TradeGood(name: "Games", MTLP: 3, MTLU: 1, TTP: 6, basePrice: 250, IPL: -10, variance: 5);
    static var Firearms = TradeGood(name: "Firearms", MTLP: 3, MTLU: 1, TTP: 5, basePrice: 1250, IPL: -75, variance: 100);
    static var Medicine = TradeGood(name: "Medicine", MTLP: 4, MTLU: 1, TTP: 6, basePrice: 650, IPL: -20, variance: 10);
    static var Machines = TradeGood(name: "Machines", MTLP: 4, MTLU: 3, TTP: 5, basePrice: 900, IPL: -30, variance: 5);
    static var Narcotics = TradeGood(name: "Narcotics", MTLP: 5, MTLU: 0, TTP: 5, basePrice: 3500, IPL: -125, variance: 10);
    static var Robots = TradeGood(name: "Robots", MTLP: 6, MTLU: 4, TTP: 7, basePrice: 5000, IPL: -150, variance: 100);
    static var Flea = Spaceship(name: "Flea", parsecs: 20, cargoMax: 10, hullStrength: 2);
    static var Gnat = Spaceship(name: "Gnat", parsecs: 15, cargoMax: 15, hullStrength: 7);
    static var Firefly = Spaceship(name: "Firefly", parsecs: 17, cargoMax: 20, hullStrength: 7);
    static var Mosquito = Spaceship(name: "Mosquito", parsecs: 13, cargoMax: 15, hullStrength: 25);
    static var Bumblebee = Spaceship(name: "Bumblebee", parsecs: 15, cargoMax: 25, hullStrength: 10);
    static var Beetle = Spaceship(name: "Beetle", parsecs: 14, cargoMax: 50, hullStrength: 5);
    static var Hornet = Spaceship(name: "Hornet", parsecs: 16, cargoMax: 20, hullStrength: 16)
    static var Grasshopper = Spaceship(name: "Grasshopper", parsecs: 15, cargoMax: 30, hullStrength: 12);
    static var Termite = Spaceship(name: "Termite", parsecs: 13, cargoMax: 60, hullStrength: 20);
    static var Wasp = Spaceship(name: "Wasp", parsecs: 14, cargoMax: 35, hullStrength: 20);
    
    static var solarSystemNames: [String] = ["Acamar",
                                              "Adahn",        // The alternate personality for The Nameless One in "Planescape: Torment"
        "Aldea",
        "Andevian",
        "Antedi",
        "Balosnee",
        "Baratas",
        "Brax",            // One of the heroes in Master of Magic
        "Bretel",        // This is a Dutch device for keeping your pants up.
        "Calondia",
        "Campor",
        "Capelle",        // The city I lived in while programming this game
        "Carzon",
        "Castor",        // A Greek demi-god
        "Cestus",
        "Cheron",
        "Courteney",    // After Courteney Cox…
        "Daled",
        "Damast",
        "Davlos",
        "Deneb",
        "Deneva",
        "Devidia",
        "Draylon",
        "Drema",
        "Endor",
        "Esmee",        // One of the witches in Pratchett's Discworld
        "Exo",
        "Ferris",        // Iron
        "Festen",        // A great Scandinavian movie
        "Fourmi",        // An ant, in French
        "Frolix",        // A solar system in one of Philip K. Dick's novels
        "Gemulon",
        "Guinifer",        // One way of writing the name of king Arthur's wife
        "Hades",        // The underworld
        "Hamlet",        // From Shakespeare
        "Helena",        // Of Troy
        "Hulst",        // A Dutch plant
        "Iodine",        // An element
        "Iralius",
        "Janus",        // A seldom encountered Dutch boy's name
        "Japori",
        "Jarada",
        "Jason",        // A Greek hero
        "Kaylon",
        "Khefka",
        "Kira",            // My dog's name
        "Klaatu",        // From a classic SF movie
        "Klaestron",
        "Korma",        // An Indian sauce
        "Kravat",        // Interesting spelling of the French word for "tie"
        "Krios",
        "Laertes",        // A king in a Greek tragedy
        "Largo",
        "Lave",            // The starting system in Elite
        "Ligon",
        "Lowry",        // The name of the "hero" in Terry Gilliam's "Brazil"
        "Magrat",        // The second of the witches in Pratchett's Discworld
        "Malcoria",
        "Melina",
        "Mentar",        // The Psilon home system in Master of Orion
        "Merik",
        "Mintaka",
        "Montor",        // A city in Ultima III and Ultima VII part 2
        "Mordan",
        "Myrthe",        // The name of my daughter
        "Nelvana",
        "Nix",            // An interesting spelling of a word meaning "nothing" in Dutch
        "Nyle",            // An interesting spelling of the great river
        "Odet",
        "Og",            // The last of the witches in Pratchett's Discworld
        "Omega",        // The end of it all
        "Omphalos",        // Greek for navel
        "Orias",
        "Othello",        // From Shakespeare
        "Parade",        // This word means the same in Dutch and in English
        "Penthara",
        "Picard",        // The enigmatic captain from ST:TNG
        "Pollux",        // Brother of Castor
        "Quator",
        "Rakhar",
        "Ran",            // A film by Akira Kurosawa
        "Regulas",
        "Relva",
        "Rhymus",
        "Rochani",
        "Rubicum",        // The river Ceasar crossed to get into Rome
        "Rutia",
        "Sarpeidon",
        "Sefalla",
        "Seltrice",
        "Sigma",
        "Sol",            // That's our own solar system
        "Somari",
        "Stakoron",
        "Styris",
        "Talani",
        "Tamus",
        "Tantalos",        // A king from a Greek tragedy
        "Tanuga",
        "Tarchannen",
        "Terosa",
        "Thera",        // A seldom encountered Dutch girl's name
        "Titan",        // The largest moon of Jupiter
        "Torin",        // A hero from Master of Magic
        "Triacus",
        "Turkana",
        "Tyrus",
        "Umberlee",        // A god from AD&D, which has a prominent role in Baldur's Gate
        "Utopia",        // The ultimate goal
        "Vadera",
        "Vagra",
        "Vandor",
        "Ventax",
        "Xenon",
        "Xerxes",        // A Greek hero
        "Yew",            // A city which is in almost all of the Ultima games
        "Yojimbo",        // A film by Akira Kurosawa
        "Zalkon",
        "Zuul"];
    
    static var MAXSOLARSYSTEM = 15; 
}

enum Resources: CaseIterable {
    case NOSPECIALRESOURCES,
    MINERALRICH,
    MINERALPOOR,
    DESERT,
    LOTSOFWATER,
    RICHSOIL,
    POORSOIL,
    RICHFAUNA,
    LIFELESS,
    WEIRDMUSHROOMS,
    LOTSOFHERBS,
    ARTISTIC,
    WARLIKE
}
