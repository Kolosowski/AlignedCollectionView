import UIKit

public final class AlignedCollectionView: UICollectionView {
	
	// MARK: - Life Cycle
	
	public init(_ layout: AlignedCollectionViewFlowLayout) {
		super.init(frame: .zero, collectionViewLayout: layout)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
