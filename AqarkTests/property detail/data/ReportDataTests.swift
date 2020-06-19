//
//  ReportDataTests.swift
//  AqarkTests
//
//  Created by Mostafa Samir on 6/17/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import XCTest
@testable import Aqark

class ReportDataTests: XCTestCase {

    var reportdata: ReportData!
    var mocReportdata: MocReportData!
    
    override func setUp() {
        reportdata = ReportData()
        mocReportdata = MocReportData()
    }
    
    func testAddReport(){
        let reportModel=ReportModel(reportText: " reportText ", advertisementId: "-MA16-T80n1xqodilijf", userId: "26895", agentId: "568989")
        mocReportdata.addReport(reportModel: reportModel) { (result) in
            if(result!){
                XCTAssertTrue(result != false)
               // XCTFail()
            }else{
                XCTAssertTrue(result == false)
            }
        }
    }
    
    override func tearDown() {
        reportdata = nil
        mocReportdata = nil
    }

}
