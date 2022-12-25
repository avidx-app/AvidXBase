//
//  File.swift
//  
//
//  Created by Faerae on 25/12/22.
//

public class Observable<T> {
    // MARK: - Properties

    private var listener: ((T) -> ())?

    public var value: T {
        didSet { listener?(value) }
    }

    // MARK: - Initializers

    public init(_ value: T) {
        self.value = value
    }

    // MARK: - Helpers

    public func bind(_ listener: @escaping (T) -> Void) {
        self.listener = listener
        listener(value)
    }
}
