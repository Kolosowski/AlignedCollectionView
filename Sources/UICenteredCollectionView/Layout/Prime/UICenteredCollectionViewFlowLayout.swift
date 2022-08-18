import UIKit

public final class UICenteredCollectionViewFlowLayout: UICollectionViewFlowLayout {
	
	// MARK: - Life Cycle
	
	public init(
		interItemSpacing: CGFloat,
		lineSpacing: CGFloat,
		isAutomaticItemSize: Bool
	) {
		super.init()
		
		minimumInteritemSpacing = interItemSpacing
		minimumLineSpacing = lineSpacing
		estimatedItemSize = isAutomaticItemSize ? UICollectionViewFlowLayout.automaticSize : .zero
		scrollDirection = .vertical
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
