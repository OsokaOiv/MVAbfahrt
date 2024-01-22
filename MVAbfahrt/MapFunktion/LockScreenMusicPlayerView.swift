//
//  LockScreenMusicPlayerView.swift
//  MVAbfahrt
//
//  Created by Vio on 22.01.24.
//

import SwiftUI
import MediaPlayer

struct LockScreenMusicPlayerView: View {
    var player: AVPlayer!
    var playerItem: AVPlayerItem!

    init() {
        
        let path = Bundle.main.path(forResource: "song", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        playerItem = AVPlayerItem(url: url)
        player = AVPlayer(playerItem: playerItem)

        do {
            try AVAudioSession.sharedInstance().setCategory(.soloAmbient, mode: .default, options: .allowAirPlay)
        } catch {
            print("Error setting the AVAudioSession:", error.localizedDescription)
        }
    }

    var body: some View {
        VStack {
            Button(action: {
                self.player.play()
            }) {
                Text("Play")
            }

            Button(action: {
                self.player.pause()
            }) {
                Text("Pause")
            }
        }
    }
}
