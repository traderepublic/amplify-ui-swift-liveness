//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import SwiftUI
import AVFoundation
import AWSPredictionsPlugin

@_spi(PredictionsFaceLiveness)
public struct CameraView: UIViewControllerRepresentable {
    @ObservedObject var faceLivenessDetectionViewModel: FaceLivenessDetectionViewModel

    public init(
        faceLivenessDetectionViewModel: FaceLivenessDetectionViewModel
    ) {
        self.faceLivenessDetectionViewModel = faceLivenessDetectionViewModel
    }

    public func makeUIViewController(
        context: Context
    ) -> _LivenessViewController {
        let livenessViewController = _LivenessViewController(
            viewModel: faceLivenessDetectionViewModel
        )
        return livenessViewController
    }

    public func updateUIViewController(
        _ uiViewController: _LivenessViewController,
        context: Context
    ) {}
}
