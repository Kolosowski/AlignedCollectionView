Pod::Spec.new do |s|
    s.name = "AlignedCollectionView"
    s.version = "1.1.1"
    s.summary = "Subclass of the UICollectionView instance with customized flow layout and dynamic size calculation"
    s.homepage = "https://github.com/Kolosowski/AlignedCollectionView"
    s.license = { :type => "MIT", :file => "LICENSE.md" }
    s.author = { "Kolosowski Arseny" => "kolosowski.a.r@gmail.com" }
    s.source = { :git => "https://github.com/Kolosowski/AlignedCollectionView.git", :tag => s.version.to_s }
    s.ios.deployment_target = "13.0"
    s.swift_version = "5.0"
    s.source_files = "Sources/**/*"
    s.frameworks = "UIKit"
end
