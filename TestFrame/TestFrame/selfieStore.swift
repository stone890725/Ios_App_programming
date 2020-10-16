//
//  selfieStore.swift
//  TestFrame
//
//  Created by 資訊電機學院 on 2020/10/16.
//  Copyright © 2020 資訊電機學院. All rights reserved.
//

import Foundation
import UIKit.UIImage

class Selfie : Codable{
    //何時拍的照
    let created : Data
    //唯一ＩＤ
    let id : UUID
    
    //photo name
    var title = "New Selfie!"
    
    var image : UIImage?{
        get{
            return SelfieStore.shared.getImage(id: self.id)
            
        }
        set{
            try? SelfieStore.shared.setImage(id:self.id,image:newValue)
        }
    }
    init(title:String){
        self.title = title
        //now time
        self.created = Date()
        //new UUID
        self.id = UUID()
    }
    enum SelfieError : Error {
        case canntoSaveImage(UIImage?)
    }
    
    final class SelfieStore{
        static let shared = Selfie()
        func getImage(id:UUID) -> UIImage? {
            return nil
        }
        func setImage(id:UUID,image : UIImage?) throws{
            throw SelfieStoreError.canntoSaveImage(image)
        }
        
    }
    
    
}
