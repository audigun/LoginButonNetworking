//
//  ViewController.swift
//  LoginButonNetworking
//
//  Created by Audi Dharmawan on 09/12/17.
//  Copyright © 2017 Audi Dharmawan. All rights reserved.
//

import UIKit
import GoogleSignIn
import FirebaseAuth
import FBSDKLoginKit

class ViewController: UIViewController, GIDSignInUIDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
        // Add Google Button
        setupGoogleButtons()
        // Add Facebook Button
        setupFacebookButtons()
         
    }

    fileprivate func setupGoogleButtons() {
        let googleButton = GIDSignInButton()
        googleButton.frame = CGRect(x: 16, y: 166 + 66, width: view.frame.width - 32, height: 50)
        view.addSubview(googleButton)
        GIDSignIn.sharedInstance().uiDelegate = self
    }
    
    fileprivate func setupFacebookButtons() {
        let facebookButton = FBSDKLoginButton()
        facebookButton.frame = CGRect(x: 16, y: 50, width: view.frame.width - 32, height: 50)
        view.addSubview(facebookButton)
        
    }
    
}

