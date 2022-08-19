import UIKit

public final class AlignedCollectionViewFlowLayout: UICollectionViewFlowLayout {
	
	// MARK: - Stored Properties - Alignment
	
	/**
	 Defines items alignment. Default value is `center`.
	 */
	var alignment: Alignment = .center
	
	// MARK: - Computed Properties - Automatic Size
	
	var isAutomaticSize: Bool {
		get {
			estimatedItemSize == UICollectionViewFlowLayout.automaticSize
		}
		
		set {
			estimatedItemSize = newValue ? UICollectionViewFlowLayout.automaticSize : .zero
		}
	}
	
	// MARK: - Life Cycle
	
	public override init() {
		super.init()
		
		scrollDirection = .vertical
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
