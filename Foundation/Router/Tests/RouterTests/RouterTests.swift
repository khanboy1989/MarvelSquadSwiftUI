import XCTest
@testable import Router

final class RouterTests: XCTestCase {
    var sut: Router!
    
    //Initialise the sut (Router)
    override  func setUp() {
        super.setUp()
        sut = .init()
    }
    
    //Teardown when tests are done deallocate the router from memory
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    //Test navigation when pushed, navigate back, return to root
    func testNaviagete() throws {
        sut.navigate(to: MockNavigateDestination.navigateOne)
        XCTAssertEqual(sut.navPath.count, 1)
        sut.navigateBack()
        XCTAssertEqual(sut.navPath.count, 0)
        sut.navigate(to: MockNavigateDestination.navigateTwo)
        sut.navigateToRoot()
        XCTAssertEqual(sut.navPath.count, 0)
    }
    
    //Test sheet presentation scenario 
    func testPresentedSheet() throws {
        sut.presentSheet(destination: MockPresenter.showError)
        XCTAssertEqual(sut.presentedSheet?.destination.id as? String, "showError")
    }
}
