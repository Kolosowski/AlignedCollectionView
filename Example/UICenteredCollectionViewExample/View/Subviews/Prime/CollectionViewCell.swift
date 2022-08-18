import UIKit

final class CollectionViewCell: UICollectionViewCell {
	
	// MARK: - Stored Properties - Views
	
	let label: UILabel = .init()
	
	// MARK: - Life Cycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setupViews()
		setupLayout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
