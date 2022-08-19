import UIKit

public final class AlignedCollectionViewFlowLayout: UICollectionViewFlowLayout {
	
	var alignment: Alignment
	
	// MARK: - Life Cycle
	
	public init(
		alignment: Alignment,
		isAutomaticItemSize: Bool
	) {
		self.alignment = alignment
		
		super.init()
		
		estimatedItemSize = isAutomaticItemSize ? UICollectionViewFlowLayout.automaticSize : .zero
		scrollDirection = .vertical
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
