//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public struct LivenessCaptureSessionError: Error, Equatable {
    let code: UInt8

    public static let deviceInputUnavailable = Self(code: 1)
    public static let cameraUnavailable = Self(code: 2)
    public static let captureSessionUnavailable = Self(code: 3)
    public static let captureSessionInputUnavailable = Self(code: 5)
    public static let captureSessionOutputUnavailable = Self(code: 6)
}
