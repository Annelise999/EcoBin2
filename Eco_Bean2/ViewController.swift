//
//  ViewController.swift
//  Eco_Bean2
//
//  Created by Anne-Lise Hervé on 05/03/2020.
//  Copyright © 2020 Anne-Lise Hervé. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {
    @IBOutlet weak var sceneView: ARSCNView!
    let configuration = ARWorldTrackingConfiguration()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        self.sceneView.session.run(configuration)
        // Do any additional setup after loading the view.
    }
     
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func add(_ sender: Any) {
        let node = SCNNode()
        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        node.position = SCNVector3(0.1,0.2,-0.3)
        self.sceneView.scene.rootNode.addChildNode(node)
    }
   
   /* @IBAction func reset(_ sender: Any) {
         //self.restartSession()
    }*/
    
   /* func restartSession () {
        self.sceneView.session.pause()
        self.sceneView.scene.rootNode.enumerateChildNodes{ (node, _) in
            node.removeFromParentNode()
            }
        self.sceneView.session.run(configuration, options: [.resetTracking, .removeExistingAnchors])
    }*/
}

