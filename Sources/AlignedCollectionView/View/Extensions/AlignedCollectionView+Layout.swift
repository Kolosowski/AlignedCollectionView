import UIKit

extension AlignedCollectionView {
	
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
	
	public override func layoutSubviews() {
		super.layoutSubviews()
		
		if bounds.height < intrinsicContentSize.height {
			invalidateIntrinsicContentSize()
		}
	}
	
}
