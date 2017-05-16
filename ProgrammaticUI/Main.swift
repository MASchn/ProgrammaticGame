//
//  Main.swift
//  ProgrammaticUI
//
//  Created by Maxwell Schneider on 5/2/17.
//  Copyright © 2017 GangstaRapPrograms. All rights reserved.
//

import Foundation
import UIKit


// mark AppDelegate
@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let rootVC = ViewController()
        rootVC.view.backgroundColor = .white
        self.window = UIWindow(frame: UIScreen.main.bounds)
        rootVC.view.frame = (window?.frame)!
        self.window?.rootViewController = rootVC
        self.window?.makeKeyAndVisible()
        
        
        // Override point for customization after application launch.
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

// mark View
class MyView: UIView{
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
}

    required override init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = .green
        self.alpha = 0.5
        self.layer.cornerRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 0.3
   }

}

class ViewController: UIViewController {
    
    var myView = MyView(frame: CGRect(x: 20, y: 35, width: 130, height: 50))
    
    var myImageView = UIImageView(frame: CGRect(x: -80, y: -10, width: 700, height: 700))
    var potatoImageView = UIImageView(frame: CGRect(x: -50, y: 0, width: 400, height: 400))
    var rollingThunderAnimation:UIImage?;
    var jabAnimation:UIImage?
    var idleAnimation: UIImage?
    var punchCounter = 0
    var score = 0
    var timer = Timer()
    var myTextView = UITextView()
    
    //////////////////////////////////  ANIMATION DECLARATION ZONE  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    let rollingThunder = [UIImage (named: "thunder1")!, UIImage (named: "thunder2")!, UIImage (named: "thunder3")!, UIImage (named: "thunder4")!, UIImage (named: "thunder5")!, UIImage (named: "thunder6")!, UIImage (named: "thunder7")!, UIImage (named: "thunder8")!, UIImage (named: "thunder9")!, UIImage (named: "thunder10")!, UIImage (named: "thunder11")!, UIImage (named: "thunder12")!, UIImage (named: "thunder13")!, UIImage (named: "thunder14")!, UIImage (named: "thunder15")!, UIImage (named: "thunder16")!, UIImage (named: "thunder17")!, UIImage (named: "thunder18")!, UIImage (named: "thunder19")!, UIImage (named: "thunder20")!]
    
    
    let jab = [UIImage (named: "jab1")!, UIImage (named: "jab2")!, UIImage (named: "jab3")!, UIImage (named: "jab4")!, UIImage (named: "jab5")!, UIImage (named: "jab6")!, UIImage (named: "jab7")!, UIImage (named: "jab8")!]
    
    
    let idle = [UIImage (named: "idle1")!, UIImage (named: "idle2")!, UIImage (named: "idle3")!, UIImage (named: "idle4")!, UIImage (named: "idle5")!, UIImage (named: "idle6")!]
    
    
    let fiercePunch = [UIImage (named: "Fierce1")!, UIImage (named: "Fierce2")!, UIImage (named: "Fierce3")!, UIImage (named: "Fierce4")!, UIImage (named: "Fierce5")!, UIImage (named: "Fierce6")!, UIImage (named: "Fierce7")!, UIImage (named: "Fierce8")!, UIImage (named: "Fierce9")!, UIImage (named: "Fierce10")!, UIImage (named: "Fierce11")!, UIImage (named: "Fierce12")!, UIImage (named: "Fierce13")!, UIImage (named: "Fierce14")!]
    
    let machineGunPunch = [UIImage (named: "MGP1")!, UIImage (named: "MGP2")!, UIImage (named: "MGP3")!, UIImage (named: "MGP4")!, UIImage (named: "MGP5")!, UIImage (named: "MGP6")!, UIImage (named: "MGP7")!, UIImage (named: "MGP8")!, UIImage (named: "MGP9")!, UIImage (named: "MGP10")!]
  
    let straightPunch = [UIImage (named: "straight1")!, UIImage (named: "straight2")!, UIImage (named: "straight3")!, UIImage (named: "straight4")!, UIImage (named: "straight5")!, UIImage (named: "straight6")!, UIImage (named: "straight7")!, UIImage (named: "straight8")!, UIImage (named: "straight9")!]
    
    
    let hurricaneBlow = [UIImage (named: "hurricane1")!, UIImage (named: "hurricane2")!, UIImage (named: "hurricane3")!, UIImage (named: "hurricane4")!, UIImage (named: "hurricane5")!, UIImage (named: "hurricane6")!, UIImage (named: "hurricane7")!, UIImage (named: "hurricane8")!, UIImage (named: "hurricane9")!, UIImage (named: "hurricane10")!, UIImage (named: "hurricane11")!, UIImage (named: "hurricane12")!, UIImage (named: "hurricane13")!, UIImage (named: "hurricane13")!,UIImage (named: "hurricane13")!,UIImage (named: "hurricane13")!,UIImage (named: "hurricane14")!, UIImage (named: "hurricane15")!, UIImage (named: "hurricane16")!]
    
    
    
    /////////////////////////////  VIEWDIDLOAD  \\\\\\\\\\\\\\\\\\\\\\\\\\
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        self.potatoImageView.image = UIImage (named: "POTATES")
        self.potatoImageView.layer.shadowRadius = 10
        self.potatoImageView.layer.shadowOpacity = 1
        self.potatoImageView.layer.shadowColor = UIColor.clear.cgColor
        self.myImageView.animationImages = idle
        self.myImageView.animationDuration = 0.5
        self.myImageView.animationRepeatCount = 0
        self.myImageView.startAnimating()
       
        




        

    

        let label = UILabel(frame: CGRect(x: 10, y: 10, width: 150, height: 25 ))
        label.text = "WOOP WOOP"
        label.numberOfLines = 2
        label.textColor = .white

        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        myView.addSubview(label)
          myView.addSubview(potatoImageView)
        myView.addSubview(self.myImageView)
      
        
        self.view.addSubview(myView)

//        self.createSegmentControl()
        self.createTextView()
        self.createTapGesture()
        self.createLongPressGesture()
//        self.createButton()
        self.createSwipeGesture()
        self.createTwoFingerTapGesture()
        self.createPinchGesture()
//        self.myImageView = UIImageView(frame: CGRect(x:view.frame.width - self.myImageView.frame.width), y: -10, width: 700, height: 700)
//        self.potatoImageView.frame = CGRect(x:Double(view.frame.width - potatoImageView.frame.width * 1.5) , y: -20, width: 500, height: 500)
        self.myImageView.frame = CGRect(x: self.view.frame.origin.x-100 , y: self.view.frame.origin.y+100, width: 700, height: 700)
        self.potatoImageView.frame = CGRect(x: self.view.frame.origin.x-400 , y: self.view.frame.origin.y-100, width: 700, height: 700)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func createPinchGesture(){
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch))
        view.addGestureRecognizer(pinchGesture)
    }
    
    func handlePinch(){
        
        if(self.myImageView.animationImages! != hurricaneBlow){
        punchCounter+=1
            score += 10
            myTextView.text = "You have done \(score) damage to the attacking Potatoes"
        self.myImageView.animationImages = hurricaneBlow
        self.myImageView.animationDuration = 1
        self.myImageView.animationRepeatCount = 1
        self.myImageView.startAnimating()
        self.perform(#selector(ViewController.idleAnimatedState), with: nil, afterDelay: myImageView.animationDuration)
        }else{
            return
        }
    
    }
    
    func createTwoFingerTapGesture(){
        
        let twoFingerTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTwoFingerTap))
        twoFingerTapGesture.numberOfTouchesRequired = 2
        view.addGestureRecognizer(twoFingerTapGesture)
        
        
    }
    
//////////////////////////////  MACHINE GUN PUNCH  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    
    func handleTwoFingerTap(){
//        print("WOOP WOOP THAT'S THE SOUND OF THE POLICE")
        punchCounter += 1
        score += 3
        
        myTextView.text = "You have done \(score) damage to the attacking Potatoes"
            self.myImageView.animationImages = machineGunPunch
            self.myImageView.animationDuration = 0.5
            self.myImageView.animationRepeatCount = 1
            self.myImageView.startAnimating()
            self.perform(#selector(ViewController.idleAnimatedState), with: nil, afterDelay: myImageView.animationDuration)
        
    
    }
    
    func createSwipeGesture(){
        let swipeGestureLeft = UISwipeGestureRecognizer(target:self, action: #selector(handleSwipeGesture))
        swipeGestureLeft.direction = UISwipeGestureRecognizerDirection.left
        
        
        let swipeGestureRight = UISwipeGestureRecognizer(target:self, action: #selector(handleSwipeGesture))
        swipeGestureRight.direction = UISwipeGestureRecognizerDirection.right
        
        view.addGestureRecognizer(swipeGestureLeft)
        view.addGestureRecognizer(swipeGestureRight)
        
    }
    
    
///////////////////////////////  FIERCE PUNCH HERE (SWIPE GESTURE)  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    
    func handleSwipeGesture(){
        punchCounter+=1
        score += 5
        myTextView.text = "You have done \(score) damage to the attacking Potatoes"
        self.myImageView.animationImages = fiercePunch
        self.myImageView.animationDuration = 0.5
        self.myImageView.animationRepeatCount = 0
        self.myImageView.startAnimating()
        self.perform(#selector(ViewController.idleAnimatedState), with: nil, afterDelay: myImageView.animationDuration)
    }
    
    func createLongPressGesture(){
        let longPressGesture = UILongPressGestureRecognizer(target:self, action: #selector(handleLongPress))
//        longPressGesture
        view.addGestureRecognizer(longPressGesture)
    }
    
    func handleLongPress(gesture: UILongPressGestureRecognizer) {
        switch gesture.state {
        case .began:
            punchCounter += 1
            timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(thunderScore), userInfo: nil, repeats: true)
            
        
//            score += 1
            self.myImageView.animationImages = rollingThunder
            self.myImageView.animationDuration = 0.5
            self.myImageView.animationRepeatCount = 0
            self.myImageView.startAnimating()
            // TODO: Alique is the man
            break
        case .ended:
            self.perform(#selector(ViewController.idleAnimatedState), with: nil, afterDelay: myImageView.animationDuration)
//            self.idleAnimatedState()
            timer.invalidate()
            break
        default:
            punchCounter += 1

            self.idleAnimatedState()
        }


    }
    
    func thunderScore(){
        score += 2
        myTextView.text = "You have done \(score) damage to the attacking Potatoes"
//        print(score)
    }
    
    
    func enterIdleAnimation(){
//        self.myImageView.stopAnimating()
        self.myImageView.animationDuration = 0.5
        self.myImageView.image = idleAnimation
        self.myImageView.animationRepeatCount = 0
        self.myImageView.startAnimating()

    }
    
    
    
    func handlePan(sender:UIPanGestureRecognizer)
    {
        sender.view?.center = sender.location(in: sender.view?.superview)
    }
    
    
    


////////////////////////////////////// JAB ATTACK (TAP GESTURE) \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    
    func handleTapGesture(sender: UITapGestureRecognizer){
        
        if(self.myImageView.animationImages! == straightPunch){
//            score += 1
            self.perform(#selector(ViewController.delayedPunch), with: nil, afterDelay: myImageView.animationDuration)
            
        }else{
            
            punchCounter += 1
            score += 1
            myTextView.text = "You have done \(score) damage to the attacking Potatoes"
            self.myImageView.animationImages = jab
            self.myImageView.animationDuration = 0.5
            self.myImageView.animationRepeatCount = 1
            self.myImageView.startAnimating()
            
            self.perform(#selector(ViewController.idleAnimatedState), with: nil, afterDelay: myImageView.animationDuration)
        }
    }
    
    func delayedPunch(){
        punchCounter += 1
        myTextView.text = "You have done \(score) damage to the attacking Potatoes"
        self.myImageView.animationImages = jab
        self.myImageView.animationDuration = 0.5
        self.myImageView.animationRepeatCount = 1
        self.myImageView.startAnimating()
        
        self.perform(#selector(ViewController.idleAnimatedState), with: nil, afterDelay: myImageView.animationDuration)
    }
    
////////////////////////////////////  CREATE TAP GESTURE  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    
    func createTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture))
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTapGesture))
            doubleTapGesture.numberOfTapsRequired = 2
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
        view.addGestureRecognizer(doubleTapGesture)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
            //perform before rotation begins
        
        coordinator.animate(alongsideTransition: { [unowned self] (context)  in
            
            //perform during rotation
            if size.width > size.height {
                self.potatoImageView.frame = CGRect(x: self.view.frame.origin.x-200 , y: self.view.frame.origin.y-300, width: 700, height: 700)
                self.myImageView.frame = CGRect(x: self.view.frame.origin.x+100 , y: self.view.frame.origin.y-120, width: 700, height: 700)
            } else {
                self.myImageView.frame = CGRect(x: self.view.frame.origin.x-100 , y: self.view.frame.origin.y+100, width: 700, height: 700)
                 self.potatoImageView.frame = CGRect(x: self.view.frame.origin.x-400 , y: self.view.frame.origin.y-100, width: 700, height: 700)
            }
            
            
        }) { (context) in
            
            //after rotation has finished
            
        }
        
    }
    
    
  
    func handleDoubleTapGesture(){
        punchCounter += 1
        score += 1
        myTextView.text = "You have done \(score) damage to the attacking Potatoes"
        self.myImageView.animationImages = straightPunch
        self.myImageView.animationDuration = 0.5
        self.myImageView.animationRepeatCount = 1
        self.myImageView.startAnimating()
        self.perform(#selector(ViewController.idleAnimatedState), with: nil, afterDelay: myImageView.animationDuration)

    }

////////////////////////////////////  OLD BUTTON PRESS METHOD. FIND SOMETHING TO DO WITH IT.  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    func handleButtonTap(sender:Any){
    
        punchCounter += 1
        myTextView.text = "You have done \(score) damage to the attacking Potatoes"
        self.myImageView.animationImages = rollingThunder
        self.myImageView.animationDuration = 0.5
        self.myImageView.animationRepeatCount = 1
        self.myImageView.startAnimating()
        
//        print("BREAK THE LINE MOFUGGA")
        
            self.perform(#selector(ViewController.idleAnimatedState), with: nil, afterDelay: myImageView.animationDuration)
       
    }
    func idleAnimatedState(){
//        self.myImageView.stopAnimating()
//        print(score)
        punchCounter -= 1
        if punchCounter == 0 {
            self.myImageView.animationImages = idle
            self.myImageView.animationRepeatCount = 0
            self.myImageView.startAnimating()
        }

    }
    
    func createTextView() {
       myTextView = UITextView(frame: CGRect(x: 0, y: self.view.bounds.size.height - 100, width: self.view.bounds.size.width, height: 100))
        myTextView.backgroundColor = .red
//        for _ in 0..<50{
//            myTextView.text = myTextView.text.appending("Lern2code \n")
        myTextView.text = "You have done \(score) damage to the attacking Potatoes \n"
        myTextView.isEditable = false
        self.view.addSubview(myTextView)
    }
//    func createImageView() {
//        self.myImageView.image = UIImage(named: "undo.png")
//        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
//        self.myImageView.addGestureRecognizer(panGesture)
//        self.myImageView.isUserInteractionEnabled = true
//        self.view.insertSubview(self.myImageView, at: 0)
//    }
    
//    func createButton() {
//        let button = UIButton(frame: CGRect(x: self.view.bounds.size.width/2, y: 35, width: 60, height: 25))
//        
//        button.setTitle("Rotate", for: UIControlState.normal)
//        button.backgroundColor = .blue
//        button.addTarget(self, action: #selector(handleButtonTap), for: UIControlEvents.touchUpInside)
//        self.view.addSubview(button)
//        
//    }


}



//    func createSegmentControl()  {
//        let segmentedControl = UISegmentedControl(frame: CGRect(x: 50, y: 350, width: 150, height: 32))
//        segmentedControl.backgroundColor = .white
//        segmentedControl.insertSegment(withTitle: "Gangsta", at: 0, animated: true)
//        segmentedControl.insertSegment(withTitle: "Rap", at: 1, animated: true)
//        segmentedControl.addTarget(self, action: #selector(handleSegmentChange), for: UIControlEvents.valueChanged)
//        self.view.addSubview(segmentedControl)
//    }
//
//    func handleSegmentChange(sender:UISegmentedControl)  {
//        if sender.selectedSegmentIndex == 1 {
//            self.myView.backgroundColor = .green
//        }else{
//            self.myView.backgroundColor = .blue
//        }
//    }


