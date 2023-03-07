//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

struct Track {
    let trackName: String
    let artistName: String
    let artworkURL100: URL
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: Date
    let trackTimeMillis: Int
}


extension Track {
    static var mockTracks: [Track] = [
        Track(trackName: "Ice Cream",
              artistName: "BLACKPINK & Selena Gomez",
              artworkURL100: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/c3/64/46/c364465f-6271-8aae-93a8-b9979d2befe5/20UMGIM82075.rgb.jpg/100x100bb.jpg")!,
              collectionName: "THE ALBUM",
              primaryGenreName: "K-Pop",
              releaseDate: Date(),
              trackTimeMillis: 176000),
        Track(trackName: "Sour Candy",
              artistName: "Lady Gaga & BLACKPINK",
              artworkURL100: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5d/4d/f9/5d4df96a-e95e-2fe9-404a-5d570513762d/20UMGIM15390.rgb.jpg/100x100bb.jpg")!,
              collectionName: "Chromatica",
              primaryGenreName: "Pop",
              releaseDate: Date(),
              trackTimeMillis: 157000),
        Track(trackName: "WHISTLE",
              artistName: "BLACKPINK",
              artworkURL100: URL(string: "https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/89/eb/82/89eb82a7-52ec-9e02-87e9-fcc0ac7e0377/BLACKPINK_SQUARE2-1.jpg/100x100bb.jpg")!,
              collectionName: "SQUARE TWO - EP",
              primaryGenreName: "K-Pop",
              releaseDate: Date(),
              trackTimeMillis: 212000)
    ]
}


// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
