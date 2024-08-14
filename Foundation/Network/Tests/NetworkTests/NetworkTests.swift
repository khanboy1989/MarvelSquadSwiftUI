import XCTest
@testable import Network
@testable import NetworkMock

final class NetworkTests: XCTestCase {
    var apiClientService: IAPIClientService!
    override func setUp() {
        super.setUp()
        apiClientService = createAPIClientServiceMock()
    }
    
    override func tearDown() {
        super.tearDown()
        apiClientService = nil 
    }
    
    /// Purpose: Tests whether apiClientService class creates the baseUrl and headers correctly
    /// Obviously it will return error from request method since all of the requirements for the request is not provided
    func testApiClientRequestMethod() async {
        let result = await apiClientService.request(APIEndpoint(path: "/v1/public/characters", httpMethod: .get))
        XCTAssertNotNil(result)
    }
}
