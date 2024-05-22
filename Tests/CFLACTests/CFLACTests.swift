import XCTest
@testable import FLAC

final class CFLACTests: XCTestCase {
    func testStreamDecoder() throws {
		let decoder = FLAC__stream_decoder_new()
		XCTAssertNotNil(decoder)
		FLAC__stream_decoder_delete(decoder)
    }
}
