//
//  HomeModel.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/7/24.
//

import Foundation

struct HomeResponse: Codable {
    let partyRooms: [PartyRooms]
    let musicStations: [MusicStations]
    let mixTapes: [MixTapes]
    let recentMusics: [RecentMusics]
    let artist: [Artist]
    
    enum CodingKeys: String, CodingKey {
        case partyRooms
        case musicStations
        case mixTapes
        case recentMusics
        case artist
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        partyRooms = (try values.decodeIfPresent([PartyRooms].self, forKey: .partyRooms)) ?? []
        musicStations = (try values.decodeIfPresent([MusicStations].self, forKey: .musicStations)) ?? []
        mixTapes = (try values.decodeIfPresent([MixTapes].self, forKey: .mixTapes)) ?? []
        recentMusics = (try values.decodeIfPresent([RecentMusics].self, forKey: .recentMusics)) ?? []
        artist = (try values.decodeIfPresent([Artist].self, forKey: .artist)) ?? []
    }
    
    struct PartyRooms: Codable {
        var id = UUID()
        var name: String
        var owner: String
        var count: String
        
        enum CodingKeys: String, CodingKey {
            case name
            case owner
            case count
        }
        
        init(name: String, owner: String, count: String) {
            self.name = name
            self.owner = owner
            self.count = count
        }
        
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            name = (try values.decodeIfPresent(String.self, forKey: .name)) ?? ""
            owner = (try values.decodeIfPresent(String.self, forKey: .owner)) ?? ""
            count = (try values.decodeIfPresent(String.self, forKey: .count)) ?? ""
        }
    }
    
    struct MusicStations: Codable {
        var id = UUID()
        var title: String
        var message: String
        
        enum CodingKeys: String, CodingKey {
            case title
            case message
        }
        
        init(title: String, message: String) {
            self.title = title
            self.message = message
        }
        
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            title = (try values.decodeIfPresent(String.self, forKey: .title)) ?? ""
            message = (try values.decodeIfPresent(String.self, forKey: .message)) ?? ""
        }
    }
    
    struct MixTapes: Codable {
        var id = UUID()
        var name: String
        var message: String
        
        enum CodingKeys: String, CodingKey {
            case name
            case message
        }
        
        init(name: String, owner: String) {
            self.name = name
            self.message = owner
        }
        
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            name = (try values.decodeIfPresent(String.self, forKey: .name)) ?? ""
            message = (try values.decodeIfPresent(String.self, forKey: .message)) ?? ""
        }
    }
    
    struct RecentMusics: Codable {
        var id = UUID()
        var musicName: String
        var artist: String
        
        enum CodingKeys: String, CodingKey {
            case musicName
            case artist
        }
        
        init(musicName: String, artist: String) {
            self.musicName = musicName
            self.artist = artist
        }
        
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            musicName = (try values.decodeIfPresent(String.self, forKey: .musicName)) ?? ""
            artist = (try values.decodeIfPresent(String.self, forKey: .artist)) ?? ""
        }
    }
    
    struct Artist: Codable {
        var id = UUID()
        var name: String
        var musicInfo: [MusicInfo]
        
        enum CodingKeys: String, CodingKey {
            case name
            case musicInfo
        }
        
        init(name: String, musicInfo: [MusicInfo]) {
            self.name = name
            self.musicInfo = musicInfo
        }
        
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            name = (try values.decodeIfPresent(String.self, forKey: .name)) ?? ""
            musicInfo = (try values.decodeIfPresent([MusicInfo].self, forKey: .musicInfo)) ?? []
        }
        
        struct MusicInfo: Codable {
            var id = UUID()
            var musicName: String
            var artistName: String
            
            enum CodingKeys: String, CodingKey {
                case musicName
                case artistName
            }
            
            init(musicName: String, artistName: String) {
                self.musicName = musicName
                self.artistName = artistName
            }
            
            init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                musicName = (try values.decodeIfPresent(String.self, forKey: .musicName)) ?? ""
                artistName = (try values.decodeIfPresent(String.self, forKey: .artistName)) ?? ""
            }
        }
    }
}
