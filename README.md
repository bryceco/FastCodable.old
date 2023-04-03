# FastCodable

An fast encoding/decoding library for Swift.
* Minimal, extensible implementation of binary object serialization.
* Not a drop-in replacement for Codable. You must add your own conformance to the protocol.
* Supports all standard types: Int, Double, String, Array, Dictionary, Optional

```
struct Test: FastCodable {
	var a: Int
	var b: String?
	var c: [Double]

	init(fromFast decoder: FastDecoder) throws {
		a = try decoder.decode()
		b = try decoder.decode()
		c = try decoder.decode()
	}

	func fastEncode(to encoder: FastEncoder) {
		a.fastEncode(to: encoder)
		b.fastEncode(to: encoder)
		c.fastEncode(to: encoder)
	}
}

var test: Test()
let buffer: Data = FastEncoder.encode(input)
let output = try FastDecoder.decode(Test.self, data: buffer)
assert(test == output)
```
