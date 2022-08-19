import Foundation

extension CollectionViewCell {
	
	func setupViews() {
		contentView.layer.cornerRadius = 15
		contentView.layer.masksToBounds = true
		contentView.layer.borderWidth = 1
		label.font = .boldSystemFont(ofSize: 25)
		label.textColor = .black
	}
	
}
