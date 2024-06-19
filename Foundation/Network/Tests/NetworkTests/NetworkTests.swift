import XCTest
@testable import Network
@testable import NetworkMock

final class NetworkTests: XCTestCase {
    var apiClientService: IAPIClientService!
    override func setUp() {
        apiClientService = createAPIClientServiceMock()
    }
    func testApiClientRequestMethod() async {
        let result = await apiClientService.request(APIEndpoint(path: "/v1/public/characters", httpMethod: .get))
        XCTAssertNotNil(result)
    }
}
