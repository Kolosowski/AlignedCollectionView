import UIKit

extension ViewController {
	
	func setupLayout() {
		view.addSubview(collectionView)
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			collectionView.centerYAnchor.constraint(
				equalTo: view.centerYAnchor
			),
			collectionView.centerXAnchor.constraint(
				equalTo: view.centerXAnchor
			),
			collectionView.widthAnchor.constraint(
				equalTo: view.widthAnchor,
				multiplier: 0.7
			)
		])
	}
	
}
