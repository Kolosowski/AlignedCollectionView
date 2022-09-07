import UIKit

extension AlignedCollectionView {
	
	public override var contentSize: CGSize {
		didSet {
			invalidateIntrinsicContentSize()
		}
	}
	
	public override var intrinsicContentSize: CGSize {
		let width = contentSize.width +
		contentInset.left +
		contentInset.right
		
		let height = contentSize.height +
		contentInset.top +
		contentInset.bottom
		
		return .init(
			width: width,
			height: height
		)
	}
	
}
