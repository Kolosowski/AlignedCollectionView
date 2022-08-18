import UIKit

extension CollectionViewCell {
	
	func setupLayout() {
		contentView.addSubview(label)
		label.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			label.topAnchor.constraint(
				equalTo: contentView.topAnchor
			),
			label.leadingAnchor.constraint(
				equalTo: contentView.leadingAnchor
			),
			label.bottomAnchor.constraint(
				equalTo: contentView.bottomAnchor
			),
			label.trailingAnchor.constraint(
				equalTo: contentView.trailingAnchor
			),
		])
	}
	
}
