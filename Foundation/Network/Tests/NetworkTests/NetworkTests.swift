import XCTest
@testable import Network
@testable import NetworkMock

final class NetworkTests: XCTestCase {
    var apiClientService: IAPIClientService!
    override func setUp() {
        apiClientService = createAPIClientServiceMock()
    }
    func testApiClientService() {
        Task {
            let result = await apiClientService.request(APIEndpoint(path: "/v1/public/characters", httpMethod: .get))
            XCTAssertNotNil(result)

            switch result {
            case let .success(response):
                XCTAssertNotNil(response.statusCode)
            case let .failure(error):
                print(error)
            }
        }
    }
}
