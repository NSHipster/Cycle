public struct CycleSequence<S>: Sequence, IteratorProtocol where S: Sequence {
    private let base: S
    private var iterator: S.Iterator

    fileprivate init(_ base: S) {
        self.base = base
        self.iterator = base.makeIterator()
    }

    public mutating func next() -> S.Iterator.Element? {
        guard let next = iterator.next() else {
            iterator = base.makeIterator()
            return iterator.next()
        }

        return next
    }
}

extension Sequence {
    public func cycled() -> CycleSequence<Self> {
        return CycleSequence(self)
    }
}
