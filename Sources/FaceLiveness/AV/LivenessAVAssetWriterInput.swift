//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import AVFoundation

fileprivate let videoWidth = 480
fileprivate let videoHeight = 640
fileprivate let bitRate = 1_000_000

public class LivenessAVAssetWriterInput: AVAssetWriterInput {
    public init() {
        super.init(
            mediaType: .video,
            outputSettings: [
                AVVideoCodecKey: AVVideoCodecType.h264,
                AVVideoWidthKey: videoWidth,
                AVVideoHeightKey: videoHeight,
                AVVideoCompressionPropertiesKey: [AVVideoAverageBitRateKey: bitRate]
            ],
            sourceFormatHint: nil
        )
    }
}
