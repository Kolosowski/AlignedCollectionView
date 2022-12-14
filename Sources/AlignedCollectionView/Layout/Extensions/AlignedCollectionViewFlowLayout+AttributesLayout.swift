import UIKit

extension AlignedCollectionViewFlowLayout {
	
	public override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
		guard
			let attributes = super.layoutAttributesForElements(in: rect),
			let collectionView = collectionView
		else {
			return super.layoutAttributesForElements(in: rect)
		}
		
		var rows: [Row] = []
		var currentRowVerticalCenter: CGFloat = .zero
		
		// Create collection rows
		attributes.forEach {
			if currentRowVerticalCenter != $0.frame.midY {
				currentRowVerticalCenter = $0.frame.midY
				rows.append(
					Row(alignment: alignment, interItemSpacing: minimumInteritemSpacing)
				)
			}
			
			rows.last?.add(attribute: $0)
		}
		
		// Configure each rows layout
		let collectionViewContentWidth = collectionView.bounds.width -
		collectionView.contentInset.left -
		collectionView.contentInset.right
		rows.forEach {
			$0.setupLayout(contentWidth: collectionViewContentWidth)
		}
		
		// Return attributes
		return rows.reduce(into: []) {
			$0 += $1.attributes
		}
	}
	
}
