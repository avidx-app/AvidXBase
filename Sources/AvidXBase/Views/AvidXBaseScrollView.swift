//
//  AvidXBaseScrollView.swift
//  
//
//  Created by Faerae on 25/12/22.
//

import UIKit

private typealias `Self` = AvidXBaseScrollView

open class AvidXBaseScrollView: UIScrollView {
    // MARK: - Properties

    public lazy var contentView: UIView = {
        let contentView = UIView()

        return contentView
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        contentView.translatesAutoresizingMaskIntoConstraints = false

        addSubview(contentView)

        let heightConstraint = contentView.heightAnchor.constraint(equalTo: heightAnchor)
        contentView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        heightConstraint.priority = .defaultLow
        heightConstraint.isActive = true
    }
}

