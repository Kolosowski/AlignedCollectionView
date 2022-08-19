import UIKit

extension AlignedCollectionViewFlowLayout {
	
	final class Row {
		
		// MARK: - Stored Properties - Layout
		
		private let alignment: Alignment
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
		
		init(alignment: Alignment, interItemSpacing: CGFloat) {
			self.alignment = alignment
			self.interItemSpacing = interItemSpacing
		}
		
		// MARK: - Setup Layout
		
		func add(attribute: UICollectionViewLayoutAttributes) {
			attributes.append(attribute)
		}
		
		func setupLayout(contentWidth: CGFloat) {
			let padding: CGFloat
			switch alignment {
			case .left:
				return
			case .center:
				padding = (contentWidth - rowWidth) / 2
			case .right:
				padding = contentWidth - rowWidth
			}
			
			var offset = padding
			attributes.forEach {
				$0.frame.origin.x = offset
				offset += $0.frame.width + interItemSpacing
			}
		}
		
	}
	
}
