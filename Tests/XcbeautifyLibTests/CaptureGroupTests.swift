//
//  CaptureGroupTests.swift
//
//
//  Created by Charles Pisciotta on 2/25/24.
//

import XCTest
@testable import XcbeautifyLib

final class CaptureGroupTests: XCTestCase {
    func testSwiftCompiling() {
        let inputs = [
            #"SwiftCompile normal x86_64 Compiling\ BackyardBirdsDataContainer.swift,\ ColorData.swift,\ DataGeneration.swift,\ DataGenerationOptions.swift /Backyard-Birds/BackyardBirdsData/General/BackyardBirdsDataContainer.swift /Backyard-Birds/BackyardBirdsData/General/ColorData.swift /Backyard-Birds/BackyardBirdsData/General/DataGeneration.swift /Backyard-Birds/BackyardBirdsData/General/DataGenerationOptions.swift (in target 'BackyardBirdsData' from project 'BackyardBirdsData')"#,
            #"SwiftCompile normal x86_64 Compiling\ BackyardSnapshot.swift,\ BackyardSupplies.swift,\ BackyardTimeOfDay.swift,\ BackyardTimeOfDayColors.swift /Backyard-Birds/BackyardBirdsData/Backyards/BackyardSnapshot.swift /Backyard-Birds/BackyardBirdsData/Backyards/BackyardSupplies.swift /Backyard-Birds/BackyardBirdsData/Backyards/BackyardTimeOfDay.swift /Backyard-Birds/BackyardBirdsData/Backyards/BackyardTimeOfDayColors.swift (in target 'BackyardBirdsData' from project 'BackyardBirdsData')"#,
            #"SwiftCompile normal arm64 Compiling\ PlantSpecies.swift,\ PlantSpeciesInfo.swift,\ PassIdentifiers.swift,\ GeneratedAssetSymbols.swift /Backyard-Birds/BackyardBirdsData/Plants/PlantSpecies.swift /Backyard-Birds/BackyardBirdsData/Plants/PlantSpeciesInfo.swift /Backyard-Birds/BackyardBirdsData/Store/PassIdentifiers.swift /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData.build/DerivedSources/GeneratedAssetSymbols.swift (in target 'BackyardBirdsData' from project 'BackyardBirdsData')"#,
            #"SwiftCompile normal arm64 Compiling\ resource_bundle_accessor.swift,\ Account+DataGeneration.swift,\ Account.swift,\ Backyard+DataGeneration.swift,\ Backyard.swift /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData.build/DerivedSources/resource_bundle_accessor.swift /Backyard-Birds/BackyardBirdsData/Account/Account+DataGeneration.swift /Backyard-Birds/BackyardBirdsData/Account/Account.swift /Backyard-Birds/BackyardBirdsData/Backyards/Backyard+DataGeneration.swift /Backyard-Birds/BackyardBirdsData/Backyards/Backyard.swift (in target 'BackyardBirdsData' from project 'BackyardBirdsData')"#,
        ]

        for input in inputs {
            XCTAssertNotNil(SwiftCompilingCaptureGroup.regex.captureGroups(for: input))
        }
    }

    func testMatchCompilationResults() {
        let input = #"/* com.apple.actool.compilation-results */"#
        XCTAssertNotNil(CompilationResultCaptureGroup.regex.captureGroups(for: input))
    }

    func testMatchSwiftDriverJobDiscoveryEmittingModule() {
        let input = #"SwiftDriverJobDiscovery normal arm64 Emitting module for Widgets (in target 'Widgets' from project 'Backyard Birds')"#
        XCTAssertNotNil(SwiftDriverJobDiscoveryEmittingModuleCaptureGroup.regex.captureGroups(for: input))
    }

    func testMkDirCaptureGroup() throws {
        let input = "MkDir /Backyard-Birds/Build/Products/Debug/Widgets.appex/Contents (in target \'Widgets\' from project \'Backyard Birds\')"
        XCTAssertNotNil(MkDirCaptureGroup.regex.captureGroups(for: input))
    }

    func testUnindentedShellCommand() throws {
        let input = #"/Applications/Xcode-16.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -Xlinker -reproducible -target arm64-apple-macos14.0 -dynamiclib -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.2.sdk -O0 -L/Backyard-Birds/Build/Intermediates.noindex/EagerLinkingTBDs/Debug -L/Backyard-Birds/Build/Products/Debug -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/usr/lib -F/Backyard-Birds/Build/Intermediates.noindex/EagerLinkingTBDs/Debug -F/Backyard-Birds/Build/Products/Debug/PackageFrameworks -F/Backyard-Birds/Build/Products/Debug -F/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -iframework /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -filelist /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData\ product.build/Objects-normal/arm64/BackyardBirdsData.LinkFileList -install_name @rpath/BackyardBirdsData.framework/Versions/A/BackyardBirdsData -Xlinker -rpath -Xlinker /Backyard-Birds/Build/Products/Debug/PackageFrameworks -Xlinker -object_path_lto -Xlinker /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData\ product.build/Objects-normal/arm64/BackyardBirdsData_lto.o -Xlinker -export_dynamic -Xlinker -no_deduplicate -fobjc-link-runtime -L/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/macosx -L/usr/lib/swift -Wl,-no_warn_duplicate_libraries -Xlinker -dependency_info -Xlinker /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData\ product.build/Objects-normal/arm64/BackyardBirdsData_dependency_info.dat -o /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData\ product.build/Objects-normal/arm64/Binary/BackyardBirdsData -Xlinker -add_ast_path -Xlinker /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData.build/Objects-normal/arm64/BackyardBirdsData.swiftmodule"#
        let groups = try XCTUnwrap(NonPCHClangCommandCaptureGroup.regex.captureGroups(for: input))
        XCTAssertEqual(groups.count, 1)
        XCTAssertEqual(groups[0], "/Applications/Xcode-16.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang")
    }

    func testIndentedShellCommand() throws {
        let input = #"    /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -Xlinker -reproducible -target arm64-apple-macos14.0 -dynamiclib -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.2.sdk -O0 -L/Backyard-Birds/Build/Intermediates.noindex/EagerLinkingTBDs/Debug -L/Backyard-Birds/Build/Products/Debug -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/usr/lib -F/Backyard-Birds/Build/Intermediates.noindex/EagerLinkingTBDs/Debug -F/Backyard-Birds/Build/Products/Debug/PackageFrameworks -F/Backyard-Birds/Build/Products/Debug -F/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -iframework /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -filelist /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData\ product.build/Objects-normal/arm64/BackyardBirdsData.LinkFileList -install_name @rpath/BackyardBirdsData.framework/Versions/A/BackyardBirdsData -Xlinker -rpath -Xlinker /Backyard-Birds/Build/Products/Debug/PackageFrameworks -Xlinker -object_path_lto -Xlinker /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData\ product.build/Objects-normal/arm64/BackyardBirdsData_lto.o -Xlinker -export_dynamic -Xlinker -no_deduplicate -fobjc-link-runtime -L/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/macosx -L/usr/lib/swift -Wl,-no_warn_duplicate_libraries -Xlinker -dependency_info -Xlinker /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData\ product.build/Objects-normal/arm64/BackyardBirdsData_dependency_info.dat -o /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData\ product.build/Objects-normal/arm64/Binary/BackyardBirdsData -Xlinker -add_ast_path -Xlinker /Backyard-Birds/Build/Intermediates.noindex/BackyardBirdsData.build/Debug/BackyardBirdsData.build/Objects-normal/arm64/BackyardBirdsData.swiftmodule"#
        let groups = try XCTUnwrap(NonPCHClangCommandCaptureGroup.regex.captureGroups(for: input))
        XCTAssertEqual(groups.count, 1)
        XCTAssertEqual(groups[0], "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang")
    }
}
