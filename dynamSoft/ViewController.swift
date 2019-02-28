//
//  ViewController.swift
//  dynamSoft
//
//  Created by SwaaS on 26/02/19.
//  Copyright © 2019 My Wealth Cloud. All rights reserved.
//

import UIKit

//class ViewController: UIViewController,DcsUIVideoViewDelegate,DcsUIDocumentEditorViewDelegate,DcsUIImageGalleryViewDelegate {
//    var openVideoViewButton:UIButton!
//    var dcsView:DcsView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        dcsView = DcsView.self.init(frame:CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height));
//
//        //Show VideoView when DcsView is loaded
//        dcsView.currentView=DVE_VIDEOVIEW
//
//        ///////////////////video view settting//////////////////
//        //Set the videoview capture mode to document mode
//        dcsView.videoView.mode = DME_DOCUMENT
//
//        //Set the next view after the cancel or capture button is clicked.
//        dcsView.videoView.nextViewAfterCancel = DVE_IMAGEGALLERYVIEW
//        //dcsView.imageGalleryView.enterSelectMode()
//        dcsView.imageGalleryView.enterManualSortMode()
//        dcsView.videoView.nextViewAfterCapture = DVE_EDITORVIEW
//
//        view.addSubview(dcsView)
//
//        openVideoViewButton = UIButton(frame:CGRect(x:self.view.center.x-100, y:self.view.center.y-20, width: 200, height: 40))
//        openVideoViewButton.setTitle("Back to Camera", for: .normal)
//        openVideoViewButton.setTitleColor(UIColor.blue, for: .normal)
//        openVideoViewButton.addTarget(self, action:#selector(onClick), for:UIControl.Event.touchUpInside);
//        dcsView.imageGalleryView.addSubview(openVideoViewButton)
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    @objc func onClick(){
//        dcsView.currentView=DVE_VIDEOVIEW
//    }
//}
//
//    var openVideoViewButton:UIButton!
//    var dcsView:DcsView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view, typically from a nib.
//
//        dcsView = DcsView.self.init(frame:CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height));
//
//        //Show VideoView when DcsView is loaded
//        dcsView.currentView=DVE_VIDEOVIEW
//
//        ///////////////////video view settting//////////////////
//        //Set the videoview capture mode to document mode
//        dcsView.videoView.mode = DME_DOCUMENT
//
//        //Set the next view after the cancel or capture button is clicked.
//        dcsView.videoView.nextViewAfterCancel = DVE_IMAGEGALLERYVIEW
//        dcsView.videoView.nextViewAfterCapture = DVE_EDITORVIEW
//        let topView = UIView()
//        topView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50)
//        topView.backgroundColor = UIColor.lightGray
//        //dcsView.addSubview(topView)
//
//        let bottomView = UIView()
//        bottomView.frame = CGRect(x: 0, y: self.view.frame.height - 50, width: self.view.frame.width, height: 50)
//        bottomView.backgroundColor = UIColor.lightGray
//        view.addSubview(bottomView)
//        view.addSubview(topView)
//
//        view.addSubview(dcsView)
//
//        openVideoViewButton = UIButton(frame:CGRect(x:self.view.center.x-100, y:self.view.center.y-20, width: 200, height: 40))
//        openVideoViewButton.setTitle("Back to Camera", for: .normal)
//        openVideoViewButton.setTitleColor(UIColor.blue, for: .normal)
//        openVideoViewButton.addTarget(self, action:#selector(onClick), for:UIControl.Event.touchUpInside);
//
//        dcsView.imageGalleryView.frame = CGRect(x: 0, y: 50, width: self.view.frame.width, height: self.view.frame.height-100)
//
//        //dcsView.addSubview(bottomView)
////        dcsView.imageGalleryView.addSubview(topView)
////        dcsView.imageGalleryView.addSubview(bottomView)
//        dcsView.imageGalleryView.addSubview(openVideoViewButton)
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    @objc func onClick(){
//        dcsView.currentView=DVE_VIDEOVIEW
//    }
//
//
//    func onCancelTapped(_ sender: Any!) {
//        if sender is DcsUIVideoView{
//            print("video view cancel tap invoked");
//        }
//        if sender is DcsUIDocumentEditorView{
//            print("imageEditorView cancel tap invoked");
//        }
//
//    }
//
//    func onPostCapture(_ sender: Any!, image: DcsImage!) {
//        print("PostCapture invoked");
//    }
//
//    func onCaptureTapped(_ sender: Any!) {
//        print("CaptureTapped invoked");
//    }
//
//    func onPreCapture(_ sender: Any!) -> Bool {
//        print("PreCapture invoked");
//        return true;
//    }
//
//    func onCaptureFailure(_ sender: Any!, exception: DcsException!) {
//        print("CaptureFailure invoked");
//    }
//
//    /**
//     * @since 6.0
//     *
//     * @param sender  Invoke Object,this means the DcsUIVideoView object
//     * @param document The document that been dectected.
//     */
//    func onDocumentDetected(_ sender: Any!, document: DcsDocument!) {
//
//    }
//    //////////////////////////////////////////////////////
//    //DcsUIImageEditorView Delegate implement
//    func  onOkTapped(_ sender: Any!,exception:DcsException) {
//        print("Vinod Reddy Sure")
//    }
//
//    //////////////////////////////////////////////////////
//    //DcsUIImageGalleryViewDelegate implement
//    func onSingleTap(_ sender: Any!, index: Int) {
//        print("SingleTap invoked");
//    }
//
//    func onLongPress(_ sender: Any!, index: Int) {
//        print( "LongPress invoked");
//    }
//
//    func onSelectChanged(_ sender:Any!, selectedIndices indices: [Any]!)  {
//        print( "SelectChanged invoked");
//    }
//
//
//}

import UIKit

class ViewController: UIViewController,DcsUIVideoViewDelegate,DcsUIDocumentEditorViewDelegate,DcsUIImageGalleryViewDelegate{
    
    var openVideoViewButton:UIButton!
    var dcsView:DcsView!
    @IBOutlet var bottomL: UIView!
    @IBOutlet var topR: UIButton!
    
    @IBOutlet var bottomV: UIView!
    @IBOutlet var topV: UIView!
    @IBOutlet var bottomR: UIView!
    let button = UIButton()
    let selectBtn = UIButton()
    let cancelBtn = UIButton()
    var selectedImageIndex = Int()
    var selectedMode = false
    var savedPath = String()
    let webView = UIWebView()
    let topView = UIView()
    let bottomView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        topV.isHidden = true
        bottomV.isHidden = true
        /////////////add UINavigationBar  ////////////////////////////////
//        var navigatorBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 64));
//        let titleItem = UINavigationItem(title: "ScanDocument");
//        navigatorBar.pushItem(titleItem, animated: true);
//        self.view.addSubview(navigatorBar);
        ///////////////////set the log level//////////////////
        DcsView.setLogLevel(DLLE_DEBUG);
        /////////////add dcsView         ////////////////////////////////
        dcsView = DcsView.self.init(frame:CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height));// init(0, 0, self.view.frame.size.width, self.view.frame.size.height));
        dcsView.currentView = DVE_VIDEOVIEW;
        dcsView.imageGalleryView.delegate = self;
        //////////////video view setting/////////////////////////
        //Set the videoview mode to document
        dcsView.videoView.mode      = DME_DOCUMENT;
        dcsView.videoView.nextViewAfterCancel  = DVE_IMAGEGALLERYVIEW;
        dcsView.videoView.nextViewAfterCapture = DVE_EDITORVIEW;
        dcsView.videoView.delegate = self;
        ////////////DocumentEditView setting////////////////////
        dcsView.documentEditorView.nextViewAfterOK     = DVE_IMAGEGALLERYVIEW;
        dcsView.documentEditorView.nextViewAfterCancel = DVE_VIDEOVIEW;
        dcsView.documentEditorView.delegate = self;
        self.view.addSubview(dcsView);
        
        //////////////add open video button////////////////////////////////
        openVideoViewButton = CreateOpenVideoButton(imageFrame:CGRect.init(x:(self.view.frame.size.width-84)/2, y:self.view.frame.size.height-175, width:84, height:84));
        openVideoViewButton.addTarget(self, action:#selector(onClick), for:UIControl.Event.touchUpInside);
        
        dcsView.imageGalleryView.addSubview(openVideoViewButton);
        
        createViews()
        
    }
    
    func createViews() {
        topView.frame = CGRect(x: 0, y: 20, width: self.view.frame.width, height: 40)
        topView.backgroundColor = UIColor.white
        
        
        bottomView.frame = CGRect(x: 0, y: self.view.frame.height - 40, width: self.view.frame.width, height: 40)
        bottomView.backgroundColor = UIColor.white
        
        button.setTitle("Add", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        dcsView.imageGalleryView.enterManualSortMode()
        
        selectBtn.setTitle("Select", for: .normal)
        selectBtn.setTitleColor(UIColor.blue, for: .normal)
        selectBtn.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        selectBtn.addTarget(self, action: #selector(selectMode), for: .touchUpInside)
        
        cancelBtn.setTitle("Save", for: .normal)
        cancelBtn.setTitleColor(UIColor.blue, for: .normal)
        cancelBtn.frame = CGRect(x: self.view.frame.width - 100, y: 0, width: 100, height: 40)
        cancelBtn.addTarget(self, action: #selector(save), for: .touchUpInside)

        
        bottomView.addSubview(button)
        topView.addSubview(selectBtn)
        topView.addSubview(cancelBtn)
        
        dcsView.imageGalleryView.enterManualSortMode()
        dcsView.imageGalleryView.frame = CGRect(x: 0, y: topView.frame.origin.y + topView.frame.height, width: self.view.frame.width, height: self.view.frame.height - (topView.frame.origin.y + (2 * topView.frame.height)))

    }
    
    @objc func selectMode() {
        if selectBtn.titleLabel?.text == "Select" {
            selectedMode = true
            selectBtn.setTitle("Cancel", for: .normal)
            dcsView.imageGalleryView.enterSelectMode()
        }else{
            selectedMode = false
            selectBtn.setTitle("Select", for: .normal)
            dcsView.imageGalleryView.enterNormalMode()
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func CreateOpenVideoButton(imageFrame:CGRect)->UIButton{
        var button:UIButton!
        let btnNormalImg    = UIImage.init(named: "icon_camera");
        let btnSelectedImg  = UIImage.init(named: "icon_camera-selected");
        
        button          = UIButton.init(type:UIButton.ButtonType.custom);
        button.frame    = imageFrame;//CGRect.init(x:0, y:0, width:(btnNormalImg?.size.width)!, height:(btnNormalImg?.size.height)!);
        button.setBackgroundImage(btnNormalImg, for: UIControl.State.normal);
        button.setBackgroundImage(btnSelectedImg, for: UIControl.State.selected);
        return button;
    }
    
    @objc func onClick(){
        dcsView.currentView = DVE_VIDEOVIEW;
    }
    @objc func save() {
//        if cancelBtn.titleLabel?.text == "Save" {
//
//            cancelBtn.setTitle("Show", for: .normal)
//            let dcsPDFEncodeParameter = DcsPDFEncodeParameter()
//            var indexArray = Array<Int>()
//            indexArray = dcsView.imageGalleryView.selectedIndices as! [Int]
//            print(dcsView.imageGalleryView.selectedIndices.count)
////            for index in 0...dcsView.buffer.count()-1
////            {
////
////                indexArray.append(index)
////                print(index)
////                print(dcsView.imageGalleryView.selectedIndices.co)
////
////                count += 1
////            }
//            let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/" + "Vinod.pdf"
//            savedPath = path
//            print(path)
//            dcsView.io.save(indexArray, file: path, encodeParameter: dcsPDFEncodeParameter)
//            dcsView.buffer.deleteAll()
//
//        }else if cancelBtn.titleLabel?.text == "Cancel" {
//            webView.removeFromSuperview()
//            cancelBtn.setTitle("Save", for: .normal)
//        } else{
//
//            cancelBtn.setTitle("Cancel", for: .normal)
//
//            webView.frame = CGRect(x: 0, y: 70, width: self.view.frame.width, height: self.view.frame.height - 70)
//            dcsView.addSubview(webView)
//            let request = NSURLRequest(url: URL(string: savedPath)!);
//            webView.loadRequest(request as URLRequest);
//        }

    }
    
    ///////////////////////////////////////////////////////
    //UIVideoView delegate implement
    func onCancelTapped(_ sender: Any!) {
        if sender is DcsUIVideoView{
            
            print("Vinod Reddy Sure")
            bottomView.removeFromSuperview()
            topView.removeFromSuperview()
            dcsView.addSubview(bottomView)
            dcsView.addSubview(topView)
            
        }
        if sender is DcsUIDocumentEditorView{
            print("Vinod Reddy Sure")
            bottomView.removeFromSuperview()
            topView.removeFromSuperview()
            
        }
        
    }
    
    func onPostCapture(_ sender: Any!, image: DcsImage!) {
        print("PostCapture invoked");
    }
    
    func onCaptureTapped(_ sender: Any!) {
        print("CaptureTapped invoked");
    }
    
    func onPreCapture(_ sender: Any!) -> Bool {
        print("PreCapture invoked");
        return true;
    }
    
    func onCaptureFailure(_ sender: Any!, exception: DcsException!) {
        print("CaptureFailure invoked");
    }
    
    /**
     * @since 6.0
     *
     * @param sender  Invoke Object,this means the DcsUIVideoView object
     * @param document The document that been dectected.
     */
    func onDocumentDetected(_ sender: Any!, document: DcsDocument!) {
        
    }
    //////////////////////////////////////////////////////
    //DcsUIImageEditorView Delegate implement
    func  onOkTapped(_ sender: Any!,exception:DcsException) {
        print("Vinod Reddy Sure")
        bottomView.removeFromSuperview()
        topView.removeFromSuperview()
        dcsView.addSubview(bottomView)
        dcsView.addSubview(topView)
        

    }
    @objc func action() {
        print("Add")
        if dcsView.buffer.count() == 1 {
            onClick()
            dcsView.buffer.delete(dcsView.buffer.currentIndex)
            button.setTitle("Add", for: .normal)
            button.removeTarget(self, action: #selector(action), for: .touchUpInside)
            button.addTarget(self, action: #selector(onClick), for: .touchUpInside)

        }else{
            dcsView.buffer.delete(dcsView.buffer.currentIndex)
            
        }

    }
    
    //////////////////////////////////////////////////////
    //DcsUIImageGalleryViewDelegate implement
    func onSingleTap(_ sender: Any!, index: Int) {
        print("SingleTap invoked")
        
        if selectedMode == false {
            selectedImageIndex = index
            
            if button.titleLabel?.text == "Add" {
                button.setTitle("Delete", for: .normal)
                button.removeTarget(self, action: #selector(onClick), for: .touchUpInside)
                button.addTarget(self, action: #selector(action), for: .touchUpInside)
                
            }else{
                button.setTitle("Add", for: .normal)
                button.removeTarget(self, action: #selector(action), for: .touchUpInside)
                button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
            }
        }else{
        }
        
    }
    
    func onLongPress(_ sender: Any!, index: Int) {
        print( "LongPress invoked");
        //dcsView.imageGalleryView.enterManualSortMode()
        //dcsView.imageGalleryView.enterSelectMode()
        
    }
    
    func onSelectChanged(_ sender:Any!, selectedIndices indices: [Any]!)  {
        print( "SelectChanged invoked");
    }
    
}


