enum Pattern: String {
    case analyze
    case buildTarget
    case aggregateTarget
    case analyzeTarget
    case checkDependencies
    case shellCommand
    case cleanRemove
    case cleanTarget
    case codesign
    case codesignFramework
    case compile
    case compileCommand
    case compileXib
    case compileStoryboard
    case copyHeader
    case copyPlist
    case copyStrings
    case cpresource
    case executedWithoutSkipped
    case executedWithSkipped
    case failingTest
    case uiFailingTest
    case restartingTest
    case generateCoverageData
    case generatedCoverageReport
    case generateDsym
    case libtool
    case linking
    case testCasePassed
    case testCaseStarted
    case testCasePending
    case testCaseMeasured
    case parallelTestCasePassed
    case parallelTestCaseAppKitPassed
    case parallelTestCaseFailed
    case parallelTestingStarted
    case parallelTestingPassed
    case parallelTestingFailed
    case parallelTestSuiteStarted
    case phaseSuccess
    case phaseScriptExecution
    case processPch
    case processPchCommand
    case preprocess
    case pbxcp
    case processInfoPlist
    case testsRunCompletion
    case testSuiteStarted
    case testSuiteStart
    case testSuiteAllTestsPassed
    case testSuiteAllTestsFailed
    case tiffutil
    case touch
    case writeFile
    case writeAuxiliaryFiles
    case compileWarning
    case ldWarning
    case genericWarning
    case willNotBeCodeSigned
    case duplicateLocalizedStringKey
    case clangError
    case checkDependenciesErrors
    case provisioningProfileRequired
    case noCertificate
    case compileError
    case cursor
    case fatalError
    case fileMissingError
    case ldError
    case linkerDuplicateSymbolsLocation
    case linkerDuplicateSymbols
    case linkerUndefinedSymbolLocation
    case linkerUndefinedSymbols
    case podsError
    case symbolReferencedFrom
    case moduleIncludesError
    case undefinedSymbolLocation
    case packageFetching
    case packageUpdating
    case packageCheckingOut
    case packageGraphResolvingStart
    case packageGraphResolvingEnded
    case packageGraphResolvedItem
    case xcodebuildError

    var rawValue: String {
        switch self {
        case .analyze:
            return AnalyzeCaptureGroup.pattern
        case .buildTarget:
            return BuildTargetCaptureGroup.pattern
        case .aggregateTarget:
            return AggregateTargetCaptureGroup.pattern
        case .analyzeTarget:
            return AnalyzeTargetCaptureGroup.pattern
        case .checkDependencies:
            return CheckDependenciesCaptureGroup.pattern
        case .shellCommand:
            return ShellCommandCaptureGroup.pattern
        case .cleanRemove:
            return CleanRemoveCaptureGroup.pattern
        case .cleanTarget:
            return CleanTargetCaptureGroup.pattern
        case .codesign:
            return CodesignCaptureGroup.pattern
        case .codesignFramework:
            return CodesignFrameworkCaptureGroup.pattern
        case .compile:
            return CompileCaptureGroup.pattern
        case .compileCommand:
            return CompileCommandCaptureGroup.pattern
        case .compileXib:
            return CompileXibCaptureGroup.pattern
        case .compileStoryboard:
            return CompileStoryboardCaptureGroup.pattern
        case .copyHeader:
            return CopyHeaderCaptureGroup.pattern
        case .copyPlist:
            return CopyPlistCaptureGroup.pattern
        case .copyStrings:
            return CopyStringsCaptureGroup.pattern
        case .cpresource:
            return CpresourceCaptureGroup.pattern
        case .executedWithoutSkipped:
            return ExecutedWithoutSkippedCaptureGroup.pattern
        case .executedWithSkipped:
            return ExecutedWithSkippedCaptureGroup.pattern
        case .failingTest:
            return FailingTestCaptureGroup.pattern
        case .uiFailingTest:
            return UIFailingTestCaptureGroup.pattern
        case .restartingTest:
            return RestartingTestCaptureGroup.pattern
        case .generateCoverageData:
            return GenerateCoverageDataCaptureGroup.pattern
        case .generatedCoverageReport:
            return GeneratedCoverageReportCaptureGroup.pattern
        case .generateDsym:
            return GenerateDSYMCaptureGroup.pattern
        case .libtool:
            return LibtoolCaptureGroup.pattern
        case .linking:
            return LinkingCaptureGroup.pattern
        case .testCasePassed:
            return TestCasePassedCaptureGroup.pattern
        case .testCaseStarted:
            return TestCaseStartedCaptureGroup.pattern
        case .testCasePending:
            return TestCasePendingCaptureGroup.pattern
        case .testCaseMeasured:
            return TestCaseMeasuredCaptureGroup.pattern
        case .parallelTestCasePassed:
            return ParallelTestCasePassedCaptureGroup.pattern
        case .parallelTestCaseAppKitPassed:
            return ParallelTestCaseAppKitPassedCaptureGroup.pattern
        case .parallelTestCaseFailed:
            return ParallelTestCaseFailedCaptureGroup.pattern
        case .parallelTestingStarted:
            return ParallelTestingStartedCaptureGroup.pattern
        case .parallelTestingPassed:
            return ParallelTestingPassedCaptureGroup.pattern
        case .parallelTestingFailed:
            return ParallelTestingFailedCaptureGroup.pattern
        case .parallelTestSuiteStarted:
            return ParallelTestSuiteStartedCaptureGroup.pattern
        case .phaseSuccess:
            return PhaseSuccessCaptureGroup.pattern
        case .phaseScriptExecution:
            return PhaseScriptExecutionCaptureGroup.pattern
        case .processPch:
            return ProcessPchCaptureGroup.pattern
        case .processPchCommand:
            return ProcessPchCommandCaptureGroup.pattern
        case .preprocess:
            return PreprocessCaptureGroup.pattern
        case .pbxcp:
            return PbxcpCaptureGroup.pattern
        case .processInfoPlist:
            return ProcessInfoPlistCaptureGroup.pattern
        case .testsRunCompletion:
            return TestsRunCompletionCaptureGroup.pattern
        case .testSuiteStarted:
            return TestSuiteStartedCaptureGroup.pattern
        case .testSuiteStart:
            return TestSuiteStartCaptureGroup.pattern
        case .testSuiteAllTestsPassed:
            return TestSuiteAllTestsPassedCaptureGroup.pattern
        case .testSuiteAllTestsFailed:
            return TestSuiteAllTestsFailedCaptureGroup.pattern
        case .tiffutil:
            return TIFFutilCaptureGroup.pattern
        case .touch:
            return TouchCaptureGroup.pattern
        case .writeFile:
            return WriteFileCaptureGroup.pattern
        case .writeAuxiliaryFiles:
            return WriteAuxiliaryFilesCaptureGroup.pattern
        case .compileWarning:
            return CompileWarningCaptureGroup.pattern
        case .ldWarning:
            return LDWarningCaptureGroup.pattern
        case .genericWarning:
            return GenericWarningCaptureGroup.pattern
        case .willNotBeCodeSigned:
            return WillNotBeCodeSignedCaptureGroup.pattern
        case .duplicateLocalizedStringKey:
            return DuplicateLocalizedStringKeyCaptureGroup.pattern
        case .clangError:
            return ClangErrorCaptureGroup.pattern
        case .checkDependenciesErrors:
            return CheckDependenciesCaptureGroup.pattern
        case .provisioningProfileRequired:
            return ProvisioningProfileRequiredCaptureGroup.pattern
        case .noCertificate:
            return NoCertificateCaptureGroup.pattern
        case .compileError:
            return CompileErrorCaptureGroup.pattern
        case .cursor:
            return CursorCaptureGroup.pattern
        case .fatalError:
            return FatalErrorCaptureGroup.pattern
        case .fileMissingError:
            return FileMissingErrorCaptureGroup.pattern
        case .ldError:
            return LDErrorCaptureGroup.pattern
        case .linkerDuplicateSymbolsLocation:
            return LinkerDuplicateSymbolsLocationCaptureGroup.pattern
        case .linkerDuplicateSymbols:
            return LinkerDuplicateSymbolsCaptureGroup.pattern
        case .linkerUndefinedSymbolLocation:
            return LinkerUndefinedSymbolLocationCaptureGroup.pattern
        case .linkerUndefinedSymbols:
            return LinkerUndefinedSymbolsCaptureGroup.pattern
        case .podsError:
            return PodsErrorCaptureGroup.pattern
        case .symbolReferencedFrom:
            return SymbolReferencedFromCaptureGroup.pattern
        case .moduleIncludesError:
            return ModuleIncludesErrorCaptureGroup.pattern
        case .undefinedSymbolLocation:
            return UndefinedSymbolLocationCaptureGroup.pattern
        case .packageFetching:
            return PackageFetchingCaptureGroup.pattern
        case .packageUpdating:
            return PackageUpdatingCaptureGroup.pattern
        case .packageCheckingOut:
            return PackageCheckingOutCaptureGroup.pattern
        case .packageGraphResolvingStart:
            return PackageGraphResolvingStartCaptureGroup.pattern
        case .packageGraphResolvingEnded:
            return PackageGraphResolvingEndedCaptureGroup.pattern
        case .packageGraphResolvedItem:
            return PackageGraphResolvedItemCaptureGroup.pattern
        case .xcodebuildError:
            return XcodebuildErrorCaptureGroup.pattern
        }
    }
}
