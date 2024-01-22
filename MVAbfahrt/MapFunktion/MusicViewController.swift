//
//  MusicViewController.swift
//  MVAbfahrt
//
//  Created by Vio on 22.01.24.
//

import Foundation
import MediaPlayer

class ViewController: UIViewController {

    var player: AVPlayer!
    var playerItem: AVPlayerItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "song", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        playerItem = AVPlayerItem(url: url)
        player = AVPlayer(playerItem: playerItem)

        do {
            try AVAudioSession.sharedInstance().setCategory(.soloAmbient, mode: .default, options: .allowAirPlay)
        } catch {
            print("Error setting the AVAudioSession:", error.localizedDescription)
        }

        let commandCenter = MPRemoteCommandCenter.shared()
        commandCenter.playCommand.addTarget { event in
            self.player.play()
            return .success
        }
        commandCenter.pauseCommand.addTarget { event in
            self.player.pause()
            return .success
        }

        UIApplication.shared.beginReceivingRemoteControlEvents()
        self.becomeFirstResponder()

        /*if let songInfo = self.mediaPlayer.nowPlayingItem {
            nowPlayingInfoCenter.nowPlayingInfo = [
                MPMediaItemPropertyTitle: songInfo.title ?? "",
                MPMediaItemPropertyArtist: songInfo.artist ?? "",
                MPMediaItemPropertyArtwork : songInfo.artwork?.image(at: CGSize(width: 400, height: 400)) ?? #imageLiteral(resourceName: "emptyArtworkImage")
            ]
        }*/
    }

    override var canBecomeFirstResponder: Bool {
        return true
    }

    func setupNowPlaying() {
        let nowPlayingInfoCenter = MPNowPlayingInfoCenter.default()
        nowPlayingInfoCenter.nowPlayingInfo = [
            MPMediaItemPropertyTitle: "Song Title",
            MPMediaItemPropertyArtist: "Artist Name",
            MPMediaItemPropertyAlbumTitle: "Album Title",
            MPMediaItemPropertyPlaybackDuration: playerItem.asset.duration.seconds,
            MPNowPlayingInfoPropertyPlaybackRate: 1
        ]
    }

    func setupRemoteCommandCenter() {
        let commandCenter = MPRemoteCommandCenter.shared()
        commandCenter.playCommand.addTarget { event in
            self.player.play()
            return .success
        }
        commandCenter.pauseCommand.addTarget { event in
            self.player.pause()
            return .success
        }
    }

    func setupAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.soloAmbient, mode: .default, options: .allowAirPlay)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Error setting the AVAudioSession:", error.localizedDescription)
        }
    }

    func play() {
        player.play()
        setupNowPlaying()
        setupRemoteCommandCenter()
    }
}

