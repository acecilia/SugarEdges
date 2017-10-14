// The MIT License (MIT)
//
// Copyright (c) 2017 Andres Cecilia Luque (acecilia) <a.cecilia.luque@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

public struct Edges: OptionSet {
    public let rawValue: UInt8
    
    public init(rawValue: UInt8) {
        self.rawValue = rawValue
    }
    
    public static let top    = Edges(rawValue: 1 << 0)
    public static let left   = Edges(rawValue: 1 << 1)
    public static let bottom = Edges(rawValue: 1 << 2)
    public static let right  = Edges(rawValue: 1 << 3)
    public static let all    = .top + .left + .bottom + .right
}

extension Edges {
    public static func + (left: Edges, right: Edges) -> Edges {
        return left.union(right)
    }
}