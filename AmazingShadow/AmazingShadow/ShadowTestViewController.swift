import UIKit

class ShadowTestViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var purpleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueView.layer.shadowOffset = CGSize(width: 0, height: 15)
        blueView.layer.shadowRadius = 2
        blueView.layer.shadowColor = UIColor.darkGray.cgColor
        blueView.layer.shadowOpacity = 0.16
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
struct ShadowTestViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = ShadowTestViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ShadowTestViewControllerRepresentable>) -> ShadowTestViewController {
        UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "ShadowTestViewController")
    }
    
    func updateUIViewController(_ uiViewController: ShadowTestViewController, context: UIViewControllerRepresentableContext<ShadowTestViewControllerRepresentable>) {
        uiViewController.blueView.backgroundColor = .clear
        uiViewController.yellowView.backgroundColor = .clear
        uiViewController.purpleView.backgroundColor = .clear
    }
}

struct Preview: PreviewProvider {
    static var previews: some View {
        ShadowTestViewControllerRepresentable()
    }
}
#endif


