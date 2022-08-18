import UIKit

extension UICenteredCollectionViewFlowLayout {
	
	final class Row {
		
		// MARK: - Stored Properties - Spacing
		
		private let interItemSpacing: CGFloat
		
		// MARK: - Stored Properties - Attributes
		
		private(set) var attributes: [UICollectionViewLayoutAttributes] = []
		
		// MARK: - Computed Properties - Row Width
		
		private var rowWidth: CGFloat {
			let interItemsSpacing = CGFloat(attributes.count - 1) * interItemSpacing
			let rowItemsWidth = attributes.reduce(.zero) {
				$0 + $1.frame.width
			}
			
			return rowItemsWidth + interItemsSpacing
		}
		
		// MARK: - Life Cycle
		
		init(interItemSpacing: CGFloat) {
			self.interItemSpacing = interItemSpacing
		}
		
		// MARK: - Setup Layout
		
		func add(attribute: UICollectionViewLayoutAttributes) {
			attributes.append(attribute)
		}
		
		func setupLayout(contentWidth: CGFloat) {
			let padding = (contentWidth - rowWidth) / 2
			var offset = padding
			
			attributes.forEach {
				$0.frame.origin.x = offset
				offset += $0.frame.width + interItemSpacing
			}
		}
		
	}
	
}
