import UIKit
import SceneKit

class GameViewController: UIViewController {
    
    var scnView: SCNView!
    var scnScene: SCNScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupScene()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func setupView() {
        scnView = self.view as! SCNView
    }
    
    func setupScene() {
        scnScene = SCNScene()
//        let boxGeometry = SCNBox(width: 2, height: 2, length: 2, chamferRadius: 1)
//        let boxNode =  SCNNode(geometry: boxGeometry)
//        scnScene.rootNode.addChildNode(boxNode)
        scnView.backgroundColor = UIColor.redColor()
        scnView.scene = scnScene
    }
    
}