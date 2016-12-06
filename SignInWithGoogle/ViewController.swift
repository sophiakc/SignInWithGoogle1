//
//  ViewController.swift
//  SignInWithGoogle
//
//  Created by Sophia KC on 05/12/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    
    // Outlets
    @IBOutlet weak var signInButton: GIDSignInButton!
    @IBOutlet weak var signOut: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Uncomment to automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
    }
    
    //// Implement these methods only if the GIDSignInUIDelegate is not a subclass of
    //// UIViewController.
    //
    //// Stop the UIActivityIndicatorView animation that was started when the user
    //// pressed the Sign In button
    //func signInWillDispatch(signIn: GIDSignIn!, error: NSError!) {
    //    myActivityIndicator.stopAnimating()
    //}
    //
    //// Present a view that prompts the user to sign in with Google
    //func signIn(signIn: GIDSignIn!,
    //            presentViewController viewController: UIViewController!) {
    //    self.presentViewController(viewController, animated: true, completion: nil)
    //}
    //
    //// Dismiss the "Sign in with Google" view
    //func signIn(signIn: GIDSignIn!,
    //            dismissViewController viewController: UIViewController!) {
    //    self.dismissViewControllerAnimated(true, completion: nil)
    //}


    @IBAction func didTapSignOut(_ sender: AnyObject) {
        GIDSignIn.sharedInstance().signOut()
    }

}


