import UIKit

public final class AlignedCollectionViewFlowLayout: UICollectionViewFlowLayout {
	
	let alignment: Alignment
	
	// MARK: - Life Cycle
	
	public init(
		_ alignment: Alignment = .center,
		isAutomaticItemSize: Bool = false
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
