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
            do {
                let result =  await apiClientService.request(APIEndpoint(path: "/v1/public/characters", httpMethod: .get))
                switch result {
                case let .success(response):
                    XCTAssertNotNil(response)
                case let .failure(error):
                    print(error)
                }
            } catch {
                print("error = \(error.localizedDescription)")
            }
          
        }
    }
}
