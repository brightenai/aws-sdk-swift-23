// Code generated by smithy-swift-codegen. DO NOT EDIT!

@testable import AWSPricing
import AWSClientRuntime
import ClientRuntime
import SmithyTestUtil
import XCTest

class EndpointResolverTest: CrtXCBaseTestCase {
    /// For region ap-south-1 with FIPS enabled and DualStack enabled
    func testResolve1() throws {
        let endpointParams = EndpointParams(
            region: "ap-south-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.pricing-fips.ap-south-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-south-1 with FIPS enabled and DualStack disabled
    func testResolve2() throws {
        let endpointParams = EndpointParams(
            region: "ap-south-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.pricing-fips.ap-south-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-south-1 with FIPS disabled and DualStack enabled
    func testResolve3() throws {
        let endpointParams = EndpointParams(
            region: "ap-south-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.pricing.ap-south-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-south-1 with FIPS disabled and DualStack disabled
    func testResolve4() throws {
        let endpointParams = EndpointParams(
            region: "ap-south-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.pricing.ap-south-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack enabled
    func testResolve5() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.pricing-fips.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack disabled
    func testResolve6() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.pricing-fips.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack enabled
    func testResolve7() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.pricing.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack disabled
    func testResolve8() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.pricing.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with fips disabled and dualstack disabled
    func testResolve9() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://example.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with fips enabled and dualstack disabled
    func testResolve10() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: FIPS and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

    /// For custom endpoint with fips disabled and dualstack enabled
    func testResolve11() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: Dualstack and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

}