import UIKit

extension CollectionViewCell {
	
	func setupLayout() {
		contentView.addSubview(label)
		label.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			label.topAnchor.constraint(
				equalTo: contentView.topAnchor,
				constant: 5
			),
			label.leadingAnchor.constraint(
				equalTo: contentView.leadingAnchor,
				constant: 10
			),
			label.bottomAnchor.constraint(
				equalTo: contentView.bottomAnchor,
				constant: -5
			),
			label.trailingAnchor.constraint(
				equalTo: contentView.trailingAnchor,
				constant: -10
			),
		])
	}
	
}
