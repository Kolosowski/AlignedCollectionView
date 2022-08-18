import UIKit

public final class UICenteredCollectionView: UICollectionView {
	
	// MARK: - Life Cycle
	
	public init(_ layout: UICenteredCollectionViewFlowLayout = .init()) {
		super.init(frame: .zero, collectionViewLayout: layout)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
