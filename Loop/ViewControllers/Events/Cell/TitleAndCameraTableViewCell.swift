//
//  TitleAndCameraTableViewCell.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit
import Fusuma
import Uploadcare

protocol PrivateEventTableViewCellProtocol: UITableViewCellProtocol {
    var item: Attribute? { get }
}

class TitleAndCameraTableViewCell: UITableViewCell, PrivateEventTableViewCellProtocol {
    @IBOutlet weak var keyTitle: UILabel!
    @IBOutlet weak var valueTitle: UILabel!
    @IBOutlet weak var buttonCamera: LoopButton!
    @IBOutlet weak var imageSelected: UIImageView!

    var item: Attribute? {
        didSet {
            if let key = item?.key {
                keyTitle.text = key
            }

            if let value = item?.value {
                valueTitle.text = value
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    @IBAction func buttonCameraClicked(_ sender: UIButton) {
        guard let parent = AppController.topViewController else { return }
        let fusuma = FusumaViewController()
        fusuma.delegate = self
        fusuma.hasVideo = true // If you want to let the users allow to use video.
        parent.present(fusuma, animated: true, completion: nil)
    }
    
    func uploadImage(_ imageData: Data) {
        
        let request = UCFileUploadRequest(fileData: imageData, fileName: "eventThumbnail", mimeType: "image/jpeg")
        
        UCClient.default().performUCRequest(request, progress: { (totalSent, totalCount) in
            let percent = (Float)(totalSent)/(Float)(totalCount)
            print("\(percent)%")
            
        }) { (result, error) in
            
            if let err = error {
                print("Upload error: \(err.localizedDescription)")
            }
            
            guard let resultDict = result as? [String : Any] else { return }
            print("Result: \(resultDict)")
           
            guard let fileId = resultDict["file"] as? String else { return }
            print("http://www.ucarecdn.com/\(fileId)/-/preview/400x400/roof.jpg")
        }
    }
    
    func getFileInfo(_ fileId:String) {
        let request = UCFileInfoRequest(fileID: fileId)
        UCClient.default().performUCRequest(request, progress: nil) { (result, error) in
            if let err = error {
                print("GetFileInfo error: \(err.localizedDescription)")
            } else {
                print("GetFileInfo : \(result)")
            }
        }
    }
}


extension TitleAndCameraTableViewCell: FusumaDelegate {
    func fusumaMultipleImageSelected(_ images: [UIImage], source: FusumaMode) {
        
    }
    
    func fusumaImageSelected(_ image: UIImage, source: FusumaMode) {
        imageSelected.image = image
        imageSelected.contentMode = .scaleAspectFill
        if let data = UIImageJPEGRepresentation(image, 1.0) {
            uploadImage(data)
        }
    }
    
    func fusumaVideoCompleted(withFileURL fileURL: URL) {
        
    }
    
    func fusumaCameraRollUnauthorized() {
        
    }
}
