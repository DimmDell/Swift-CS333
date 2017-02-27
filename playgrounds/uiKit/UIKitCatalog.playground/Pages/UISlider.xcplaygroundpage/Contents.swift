import UIKit
import PlaygroundSupport

class Controller {
    let label: UILabel!
    @objc func valueChanged(sender: UISlider) {
        label.text = "\(sender.value)"
    }
    
    init(with label: UILabel){
        self.label = label
    }
}

let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
containerView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

let slider = UISlider(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
slider.tintColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
containerView.addSubview(slider)

let minMaxSlider = UISlider(frame: CGRect(x: 0, y: 70, width: 250, height: 50))
minMaxSlider.maximumTrackTintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
minMaxSlider.minimumTrackTintColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
minMaxSlider.setThumbImage("🌼".image, for: .normal)
containerView.addSubview(minMaxSlider)

let imageSlider = UISlider(frame: CGRect(x: 0, y: 150, width: 250, height: 50))
imageSlider.minimumValue = 0
imageSlider.maximumValue = 100
imageSlider.setThumbImage("🔴".image, for: .normal)
imageSlider.setMaximumTrackImage(#imageLiteral(resourceName: "gradient.png"), for: .normal)
imageSlider.minimumTrackTintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
imageSlider.layer.cornerRadius = 0

let displayLabel = UILabel(frame: CGRect(x: 0, y: 200, width: 250, height: 30))
displayLabel.textAlignment = .center
let controller = Controller(with: displayLabel)
imageSlider.addTarget(controller, action: #selector(Controller.valueChanged(sender:)), for: .valueChanged)

containerView.addSubview(imageSlider)
containerView.addSubview(displayLabel)

PlaygroundPage.current.liveView = containerView
