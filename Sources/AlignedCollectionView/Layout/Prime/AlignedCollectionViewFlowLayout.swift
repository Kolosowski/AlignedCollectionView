import UIKit

public final class AlignedCollectionViewFlowLayout: UICollectionViewFlowLayout {
	
	// MARK: - Life Cycle
	
	public init(
		isAutomaticItemSize: Bool = false
	) {
		super.init()
		
		estimatedItemSize = isAutomaticItemSize ? UICollectionViewFlowLayout.automaticSize : .zero
		scrollDirection = .vertical
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
