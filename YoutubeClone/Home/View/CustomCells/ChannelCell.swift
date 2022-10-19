//
//  ChannelCell.swift
//  YoutubeClone
//
//  Created by Luis Alejandro Umana Salas on 27/9/22.
//

import UIKit

class ChannelCell: UITableViewCell {

    @IBOutlet weak var bannerImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var channelTitle: UILabel!
    @IBOutlet weak var subcribeLabel: UILabel!
    @IBOutlet weak var bellImage: UIImageView!
    @IBOutlet weak var subscriberNumbersLabel: UILabel!
    @IBOutlet weak var channelInfoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configView()
    }
    
    func configView(){
        bellImage.image = UIImage(named: "bell")?.withRenderingMode(.alwaysTemplate)
        bellImage.tintColor = UIColor(named: "grayColor")
        profileImage.layer.cornerRadius = 51/2
    }
    
    func configCell(model : ChannelModel.Items){
        channelInfoLabel.text = model.snippet.description
        channelTitle.text = model.snippet.title
        subscriberNumbersLabel.text = "\(model.statistics?.subscriberCount ?? "0") subcriber * \(model.statistics?.videoCount ?? "0") videos"
    }
    
}
