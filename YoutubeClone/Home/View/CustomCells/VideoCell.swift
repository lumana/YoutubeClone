//
//  VideoCell.swift
//  YoutubeClone
//
//  Created by Luis Alejandro Umana Salas on 27/9/22.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoName: UILabel!
    @IBOutlet weak var channelName: UILabel!
    @IBOutlet weak var viewaCountLabel: UILabel!
    
    @IBOutlet weak var dotsImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        configView()
    }

    private func configView(){
        
    }
    
    func configCell(model: Any){
        
        dotsImage.image = UIImage(named: "dots")?.withRenderingMode(.alwaysTemplate)
        dotsImage.tintColor = UIColor(named: "whiteColor")
        
        if let video = model as? VideoModel.Item{
            
            //falta poner el video
            videoName.text = video.snippet?.title ?? ""
            channelName.text = video.snippet?.channelTitle ?? ""
            viewaCountLabel.text = "\(video.statistics?.viewCount ?? "0") views * 3 months ago"
            
        }else if let playListItems = model as? PlaylistItemsModel.Item{
            //falta poner el video
            videoName.text = playListItems.snippet.title
            channelName.text = playListItems.snippet.channelTitle
            viewaCountLabel.text = "332 views * 3 months ago"
        }
    }
}
