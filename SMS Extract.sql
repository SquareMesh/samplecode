DECLARE
/*
The record length is limited to a maximum of 32767 characters.

DBMS OUTPUT must be on to view run statistics and any runtime errors.

-- Each LineType should be coded as a single cursor. 
-- Use UNIONs if merging multiple sources. The UNION will ensure that rthe datatypes 
-- and column numbers are consistent across the different sources.

-- The use of the END end of record marker is to ensure columns align and that items
-- such as comma in the data do not get interpreted as a CSV field delimiter.  
-- The END end of record marker should always be in the same column for all records.

*/

-- Main Driving Queries
CURSOR LBL IS
select   'Key'                                      KEY,
'Rank'                                              RANK,
'LineType'                                          LINETYPE,
'StudentId'                                         H003,
'StudentFamilyName'                                 H004,
'StudentGivenName'                                  H005,
'StudentOtherName'                                  H006,
'StudentTitle'                                      H007,
'StudentAlias'                                      H008,
'StudentPreferredName'                              H009,
'StudentFormalName1'                                H010,
'StudentFormalName2'                                H011,
'StudentPhoneticName'                               H012,
'StudentBirthDate'                                  H013,
'StudentGender'                                     H014,
'StudentInitials'                                   H015,
'StudentIsSuppressed'                               H016,
'StudentIsDeceased'                                 H017,
'StudentIsActive'                                   H018,
'StudentPictureServerFolder'                        H019,
'StudentPictureFileName'                            H020,
'StudentHomeLanguage'                               H021,
'StudentAboriginalOrTorresStraitIslander'           H022,
'StudentEmploymentStatus'                           H023,
'StudentIdCardBarcodeNumber'                        H024,
'StudentIdCardBarcodeIssueDate'                     H025,
'StudentIdCardLatestYear'                           H026,
'StudentNameEffectiveDate'                          H027,
'StudentNameChangeReason'                           H028,
'StudentIdCardExpiryDate'                           H029,
'StudentIdCardIssuer'                               H030,
'StudentYear12ExternalOrganisationCode'             H031,
'StudentYear12StudentId'                            H032,
'StudentYear12Year'                                 H033,
'StudentYear12State'                                H034,
'StudentHasCompletedYear12'                         H035,
'StudentYear12ResultType'                           H036,
'StudentGovernmentStudentNumber'                    H037,
'StudentGovernmentStudentNumberProvidedDate'        H038,
'StudentGovernmentStudentNumberSource'              H039,
'StudentGovernmentStudentNumberChangeReason'        H040,
'StudentEnglishSpokenProficiency'                   H041,
'StudentLanguageTestType'                           H042,
'StudentLanguageTestResultListening'                H043,
'StudentLanguageTestResultReading'                  H044,
'StudentLanguageTestResultWriting'                  H045,
'StudentLanguageTestResultTwe'                      H046,
'StudentLanguageTestResultSpeaking'                 H047,
'StudentLanguageTestResultOverall'                  H048,
'StudentLanguageTestResultDate'                     H049,
'StudentIsLanguageTestIncomplete'                   H050,
'StudentIsLanguageTestVerified'                     H051,
'StudentLanguageTestVerifiedByUserId'               H052,
'StudentApplicantStatus'                            H053,
'StudentIgnoreDuplicateCheck'                       H054,
'StudentCitizenship'                                H055,
'StudentCitizenshipIsSelfNominated'                 H056,
'StudentCitizenshipEffectiveDate'                   H057,
'StudentCitizenshipConferralDate'                   H058,
'StudentCitizenshipCountry'                         H059,
'StudentBirthCountry'                               H060,
'StudentIsPermanentResident'                        H061,
'StudentPermanentResidentDate'                      H062,
'StudentIsPermanentResidencyMet'                    H063,
'StudentIsResidentInAustralia'                      H064,
'StudentIsResidentOutsideAustralia'                 H065,
'StudentEntryYear'                                  H066,
'StudentDualCitizenshipCountry'                     H067,
'StudentVisaType'                                   H068,
'StudentVisaSubType'                                H069,
'StudentSchoolingLevelCompleted'                    H070,
'StudentSchoolingLevelCompletedYear'                H071,
'StudentIsAtSchool'                                 H072,
'StudentGv4StudyReason'                             H073,
'StudentNationality'                                H074,
'StudentLengthOfResidence'                          H075,
'StudentPurposeOfResidence'                         H076,
'StudentReasonForTemporaryAbsence'                  H077,
'StudentResidentialCategory'                        H078,
'StudentCountryOfOrdinaryResidence'                 H079,
'StudentAdmissionCentreImportProfileCode'           H080,
'StudentHasNoDisability'                            H081,
'StudentUserFieldsValue1'    H082,
'StudentUserFieldsValue2'    H083,
'StudentUserFieldsValue3'    H084,
'StudentUserFieldsValue4'    H085,
'StudentUserFieldsValue5'    H086,
'StudentUserFieldsValue6'    H087,
'StudentUserFieldsValue7'    H088,
'StudentUserFieldsValue8'    H089,
'StudentUserFieldsValue9'    H090,
'StudentUserFieldsValue10'    H091,
'StudentUserFieldsValue11'    H092,
'StudentUserFieldsValue12'    H093,
'StudentUserFieldsValue13'    H094,
'StudentUserFieldsValue14'    H095,
'StudentUserFieldsValue15'    H096,
'StudentUserFieldsValue16'    H097,
'StudentUserFieldsValue17'    H098,
'StudentUserFieldsValue18'    H099,
'StudentUserFieldsValue19'    H100,
'StudentUserFieldsValue20'    H101,
'StudentDisabilityRequiresDisabilityInfo'    H102,
'StudentDisabilityDeleteFlag'    H103,
'StudentDisabilitySupportSupportType'    H104,
'StudentDisabilitySupportNotes'    H105,
'StudentDisabilitySupportDeleteFlag'    H106,
'StudentDisabilityTypeDisabilityType'    H107,
'StudentDisabilityTypeNotes'    H108,
'StudentDisabilityTypeDeleteFlag'    H109,
'StudentAddressType'    H110,
'StudentAddressLine1'    H111,
'StudentAddressLine2'    H112,
'StudentAddressLine3'    H113,
'StudentAddressSuburb'    H114,
'StudentAddressState'    H115,
'StudentAddressPostcode'    H116,
'StudentAddressCountry'    H117,
'StudentAddressIsPreferred'    H118,
'StudentAddressStartDate'    H119,
'StudentAddressEndDate'    H120,
'StudentAddressDPID'    H121,
'StudentAddressBarcode'    H122,
'StudentAddressVerifiedDate'    H123,
'StudentAddressIsInvalid'    H124,
'StudentAddressValidationStatus'    H125,
'StudentAddressAccommodationType'    H126,
'StudentAddressDeleteFlag'    H127,
'StudentEmailType'    H128,
'StudentEmailAddress'    H129,
'StudentEmailComments'    H130,
'StudentEmailIsPreferred'    H131,
'StudentEmailIsInvalid'    H132,
'StudentEmailDeleteFlag'    H133,
'StudentPhoneType'    H134,
'StudentPhoneNumber'    H135,
'StudentPhoneComments'    H136,
'StudentPhonePreferredVoice'    H137,
'StudentPhonePreferredSms'    H138,
'StudentPhonePreferredFax'    H139,
'StudentPhoneIsInvalid'    H140,
'StudentPhoneDeleteFlag'    H141,
'StudentAlternateIdType'    H142,
'StudentAlternateId'    H143,
'StudentAlternateIdYear'    H144,
'StudentAlternateIdValidationDate'    H145,
'StudentAlternateIdValidationOutcome'    H146,
'StudentAlternateIdValidationReason'    H147,
'StudentAlternateIdDeleteFlag'    H148,
'StudentOtherScoreSequenceNumber'    H149,
'StudentOtherScoreType'    H150,
'StudentOtherScoreSubject'    H151,
'StudentOtherScoreYear'    H152,
'StudentOtherScoreScore'    H153,
'StudentOtherScoreExternalOrganisationCode'    H154,
'StudentOtherScoreDeleteFlag'                  H155,
'StudentOtherContactType'    H156,
'StudentOtherContactName'    H157,
'StudentOtherContactRelationship'    H158,
'StudentOtherContactWorkPhone'    H159,
'StudentOtherContactHomePhone'    H160,
'StudentOtherContactMobilePhone'    H161,
'StudentOtherContactEmailAddress'    H162,
'StudentOtherContactCountry'    H163,
'StudentOtherContactLine1'    H164,
'StudentOtherContactLine2'    H165,
'StudentOtherContactLine3'    H166,
'StudentOtherContactSuburb'    H167,
'StudentOtherContactState'     H168,
'StudentOtherContactPostcode'    H169,
'StudentOtherContactDeleteFlag'    H170,
'StudentGuardianSequenceNumber'    H171,
'StudentGuardianGender'    H172,
'StudentGuardianHighestEducationalAttainment'    H173,
'StudentGuardianDeleteFlag'                      H174,
'StudentNameHistoryEffectiveDate'    H175,
'StudentNameHistoryEffectiveTime'    H176,
'StudentNameHistoryFamilyName'    H177,
'StudentNameHistoryGivenName'    H178,
'StudentNameHistoryOtherName'    H179,
'StudentNameHistoryTitle'    H180,
'StudentNameHistoryAlias'    H181,
'StudentNameHistoryPreferredName'    H182,
'StudentNameHistoryFormalName1'    H183,
'StudentNameHistoryFormalName2'    H184,
'StudentNameHistoryNameEffectiveDate'    H185,
'StudentNameHistoryNameChangeReason'    H186,
'StudentNameHistoryDeleteFlag'             H187,
'StudentOtherDetailType'    H188,
'StudentOtherDetailDescription'    H189,
'StudentOtherDetailDeleteFlag'    H190,
'StudentEmploymentBackgroundSequenceNumber'    H191,
'StudentEmploymentBackgroundExternalOrganisationCode'    H192,
'StudentEmploymentBackgroundIndustryCode'    H193,
'StudentEmploymentBackgroundStartDate'    H194,
'StudentEmploymentBackgroundEndDate'    H195,
'StudentEmploymentBackgroundDescription'    H196,
'StudentEmploymentBackgroundOccupationCode'    H197,
'StudentEmploymentBackgroundDeleteFlag'    H198,
'StudentEmploymentBackgroundEmploymentType'    H199,
'StudentEmploymentBackgroundEmploymentStatus'    H200,
'StudentEducationalBackgroundSequenceNumber'    H201,
'StudentEducationalBackgroundEducationType'    H202,
'StudentEducationalBackgroundEducationStatus'    H203,
'StudentEducationalBackgroundLastEnrolmentYear'    H204,
'StudentEducationalBackgroundExternalOrganisationCode'    H205,
'StudentEducationalBackgroundEducationDescription'    H206,
'StudentEducationalBackgroundDeleteFlag'    H207,
'StudentEducationalBackgroundVETFlag'    H208,
'EducationalBackgroundType'    H209,
'EducationalBackgroundSequenceNumber'    H210,
'EducationalBackgroundEffectiveDate'    H211,
'EducationalBackgroundExternalOrganisationCode'    H212,
'EducationalBackgroundExternalOrganisationType'    H213,
'EducationalBackgroundInstitutionName'    H214,
'EducationalBackgroundInstitutionStudentId'    H215,
'EducationalBackgroundWasStudentExcludedFromInstitution'    H216,
'EducationalBackgroundReasonStudentWasExcludedFromInstitution'    H217,
'EducationalBackgroundExternalOrganisationCountry'    H218,
'EducationalBackgroundState'    H219,
'EducationalBackgroundInstitutionRegion'    H220,
'EducationalBackgroundQualificationType'    H221,
'EducationalBackgroundQualificationInExternalStudyPackage'    H222,
'EducationalBackgroundQualificationSubjectCode'    H223,
'EducationalBackgroundQualificationDescription'    H224,
'EducationalBackgroundQualificationNotes'    H225,
'EducationalBackgroundQualificationScore'    H226,
'EducationalBackgroundQualificationScoreType'    H227,
'EducationalBackgroundFieldOfEducation'    H228,
'EducationalBackgroundQualificationLevel'    H229,
'EducationalBackgroundCompletionStatus'    H230,
'EducationalBackgroundIsHighestLevelOfParticipation'    H231,
'EducationalBackgroundHasStudentCompletedSchool'    H232,
'EducationalBackgroundSchoolLevelCompleted'    H233,
'EducationalBackgroundIsStudentCurrentlyAttendingSchool'    H234,
'EducationalBackgroundEquivalentFullTimeYearsOfEnrolment'    H235,
'EducationalBackgroundLanguageOfInstruction'    H236,
'EducationalBackgroundFirstYearOfStudy'    H237,
'EducationalBackgroundLastYearOfStudy'    H238,
'EducationalBackgroundFirstDateOfStudy'    H239,
'EducationalBackgroundLastDateOfStudy'    H240,
'EducationalBackgroundResultsAvailableFrom'    H241,
'EducationalBackgroundVerificationStatus'    H242,
'EducationalBackgroundVerifiedOn'    H243,
'EducationalBackgroundVerifiedBy'    H244,
'EducationalBackgroundGV1HighestQualificationOnEntry'    H245,
'EducationalBackgroundHighestQualificationOnEntry'    H246,
'EducationalBackgroundHighestAttainedQualification'    H247,
'EducationalBackgroundHighestExpectedQualification'    H248,
'EducationalBackgroundVerifiedByStaff'    H249,
'EducationalBackgroundVerifiedByExternalSystem'    H250,
'EducationalBackgroundIncludeInScoreCalculation'    H251,
'EducationalBackgroundGradeReceived'    H252,
'EducationalBackgroundIndustryCode'    H253,
'EducationalBackgroundEmploymentStartDate'    H254,
'EducationalBackgroundEmploymentEndDate'    H255,
'EducationalBackgroundEmploymentDescription'    H256,
'EducationalBackgroundOccupationCode'    H257,
'EducationalBackgroundEmploymentType'    H258,
'EducationalBackgroundEmploymentStatus'    H259,
'EducationalBackgroundStatusMonitoringType'    H260,
'EducationalBackgroundStatusMonitoringOutcome'    H261,
'EducationalBackgroundAddressLine1'    H262,
'EducationalBackgroundAddressLine2'    H263,
'EducationalBackgroundAddressLine3'    H264,
'EducationalBackgroundAddressSuburb'    H265,
'EducationalBackgroundAddressState'      H266,
'EducationalBackgroundAddressPostcode'    H267,
'EducationalBackgroundAddressCountry'    H268,
'EducationalBackgroundExamSitting'       H269,
'EducationalBackgroundPredictedGrades'    H270,
'EducationalBackgroundPredictedPracticalGrades'    H271,
'EducationalBackgroundReportToGV1'         H272,
'EducationalBackgroundActivityName'        H273,
'EducationalBackgroundActivityEndDate'     H274,
'EducationalBackgroundCustomTextField1'    H275,
'EducationalBackgroundCustomTextField2'    H276,
'EducationalBackgroundCustomTextField3'    H277,
'EducationalBackgroundCustomTextField4'    H278,
'EducationalBackgroundCustomTextField5'    H279,
'EducationalBackgroundCustomTextField6'    H280,
'EducationalBackgroundCustomTextField7'     H281,
'EducationalBackgroundCustomTextField8'     H282,
'EducationalBackgroundCustomTextField9'     H283,
'EducationalBackgroundCustomTextField10'    H284,
'EducationalBackgroundCustomTextField11'    H285,
'EducationalBackgroundCustomTextField12'    H286,
'EducationalBackgroundCustomTextField13'    H287,
'EducationalBackgroundCustomTextField14'    H288,
'EducationalBackgroundCustomTextField15'    H289,
'EducationalBackgroundCustomTextField16'    H290,
'EducationalBackgroundCustomTextField17'    H291,
'EducationalBackgroundCustomTextField18'    H292,
'EducationalBackgroundCustomTextField19'    H293,
'EducationalBackgroundCustomTextField20'    H294,
'EducationalBackgroundCustomDateField1'     H295,
'EducationalBackgroundCustomDateField2'    H296,
'EducationalBackgroundCustomDateField3'    H297,
'EducationalBackgroundCustomDateField4'    H298,
'EducationalBackgroundCustomDateField5'    H299,
'EducationalBackgroundCustomDateField6'    H300,
'EducationalBackgroundCustomDateField7'    H301,
'EducationalBackgroundCustomDateField8'    H302,
'EducationalBackgroundCustomDateField9'    H303,
'EducationalBackgroundCustomDateField10'    H304,
'EducationalBackgroundCustomDateField11'    H305,
'EducationalBackgroundCustomDateField12'    H306,
'EducationalBackgroundCustomDateField13'    H307,
'EducationalBackgroundCustomDateField14'    H308,
'EducationalBackgroundCustomDateField15'    H309,
'EducationalBackgroundCustomDateField16'    H310,
'EducationalBackgroundCustomDateField17'    H311,
'EducationalBackgroundCustomDateField18'    H312,
'EducationalBackgroundCustomDateField19'    H313,
'EducationalBackgroundCustomDateField20'    H314,
'EducationalBackgroundCustomDecimalField1'     H315,
'EducationalBackgroundCustomDecimalField2'     H316,
'EducationalBackgroundCustomDecimalField3'     H317,
'EducationalBackgroundCustomDecimalField4'     H318,
'EducationalBackgroundCustomDecimalField5'     H319,
'EducationalBackgroundCustomDecimalField6'     H320,
'EducationalBackgroundCustomDecimalField7'     H321,
'EducationalBackgroundCustomDecimalField8'     H322,
'EducationalBackgroundCustomDecimalField9'     H323,
'EducationalBackgroundCustomDecimalField10'    H324,
'EducationalBackgroundCustomDecimalField11'    H325,
'EducationalBackgroundCustomDecimalField12'    H326,
'EducationalBackgroundCustomDecimalField13'    H327,
'EducationalBackgroundCustomDecimalField14'    H328,
'EducationalBackgroundCustomDecimalField15'    H329,
'EducationalBackgroundCustomDecimalField16'    H330,
'EducationalBackgroundCustomDecimalField17'    H331,
'EducationalBackgroundCustomDecimalField18'    H332,
'EducationalBackgroundCustomDecimalField19'    H333,
'EducationalBackgroundCustomDecimalField20'    H334,
'EducationalBackgroundAdmissionCentreApplicantId'    H335,
'EducationalBackgroundAdmissionCentreApplicationId'    H336,
'EducationalBackgroundAdmissionCentreImportProfileCode'    H337,
'EducationalBackgroundAdmissionCentreReferenceId'  H338,
'EducationalBackgroundExternalReferenceId'    H339,
'EducationalBackgroundDeleteFlag'             H340,
'EducationalBackgroundAssessmentSequenceNumber'    H341,
'EducationalBackgroundAssessmentApplicationIdBeingAssessed'    H342,
'EducationalBackgroundAssessmentNotesForApplicationBeingAssessed'    H343,
'EducationalBackgroundAssessmentUsedForBasisOfAssessment'    H344,
'EducationalBackgroundAssessmentBasisForAssessmentNotes'    H345,
'EducationalBackgroundAssessmentScoreType'    H346,
'EducationalBackgroundAssessmentScore'    H347,
'EducationalBackgroundAssessmentScoreNotes'    H348,
'EducationalBackgroundAssessmentQualificationLevel'    H349,
'EducationalBackgroundAssessmentQualificationType'    H350,
'EducationalBackgroundAssessmentVerifiedByStaff'    H351,
'EducationalBackgroundAssessmentVerifiedByExternalSystem'    H352,
'EducationalBackgroundAssessmentIncludeInScoreCalculation'    H353,
'EducationalBackgroundAssessmentGradeReceived'    H354,
'EducationalBackgroundAssessmentCustomTextField1'    H355,
'EducationalBackgroundAssessmentCustomTextField2'    H356,
'EducationalBackgroundAssessmentCustomTextField3'    H357,
'EducationalBackgroundAssessmentCustomTextField4'    H358,
'EducationalBackgroundAssessmentCustomTextField5'    H359,
'EducationalBackgroundAssessmentCustomTextField6'    H360,
'EducationalBackgroundAssessmentCustomTextField7'    H361,
'EducationalBackgroundAssessmentCustomTextField8'    H362,
'EducationalBackgroundAssessmentCustomTextField9'    H363,
'EducationalBackgroundAssessmentCustomTextField10'    H364,
'EducationalBackgroundAssessmentCustomTextField11'    H365,
'EducationalBackgroundAssessmentCustomTextField12'    H366,
'EducationalBackgroundAssessmentCustomTextField13'    H367,
'EducationalBackgroundAssessmentCustomTextField14'    H368,
'EducationalBackgroundAssessmentCustomTextField15'    H369,
'EducationalBackgroundAssessmentCustomTextField16'    H370,
'EducationalBackgroundAssessmentCustomTextField17'    H371,
'EducationalBackgroundAssessmentCustomTextField18'    H372,
'EducationalBackgroundAssessmentCustomTextField19'    H373,
'EducationalBackgroundAssessmentCustomTextField20'    H374,
'EducationalBackgroundAssessmentCustomDateField1'    H375,
'EducationalBackgroundAssessmentCustomDateField2'    H376,
'EducationalBackgroundAssessmentCustomDateField3'    H377,
'EducationalBackgroundAssessmentCustomDateField4'    H378,
'EducationalBackgroundAssessmentCustomDateField5'    H379,
'EducationalBackgroundAssessmentCustomDateField6'    H380,
'EducationalBackgroundAssessmentCustomDateField7'    H381,
'EducationalBackgroundAssessmentCustomDateField8'    H382,
'EducationalBackgroundAssessmentCustomDateField9'    H383,
'EducationalBackgroundAssessmentCustomDateField10'    H384,
'EducationalBackgroundAssessmentCustomDateField11'    H385,
'EducationalBackgroundAssessmentCustomDateField12'    H386,
'EducationalBackgroundAssessmentCustomDateField13'    H387,
'EducationalBackgroundAssessmentCustomDateField14'    H388,
'EducationalBackgroundAssessmentCustomDateField15'    H389,
'EducationalBackgroundAssessmentCustomDateField16'    H390,
'EducationalBackgroundAssessmentCustomDateField17'    H391,
'EducationalBackgroundAssessmentCustomDateField18'    H392,
'EducationalBackgroundAssessmentCustomDateField19'    H393,
'EducationalBackgroundAssessmentCustomDateField20'    H394,
'EducationalBackgroundAssessmentCustomDecimalField1'    H395,
'EducationalBackgroundAssessmentCustomDecimalField2'    H396,
'EducationalBackgroundAssessmentCustomDecimalField3'    H397,
'EducationalBackgroundAssessmentCustomDecimalField4'    H398,
'EducationalBackgroundAssessmentCustomDecimalField5'    H399,
'EducationalBackgroundAssessmentCustomDecimalField6'    H400,
'EducationalBackgroundAssessmentCustomDecimalField7'    H401,
'EducationalBackgroundAssessmentCustomDecimalField8'    H402,
'EducationalBackgroundAssessmentCustomDecimalField9'    H403,
'EducationalBackgroundAssessmentCustomDecimalField10'    H404,
'EducationalBackgroundAssessmentCustomDecimalField11'    H405,
'EducationalBackgroundAssessmentCustomDecimalField12'    H406,
'EducationalBackgroundAssessmentCustomDecimalField13'    H407,
'EducationalBackgroundAssessmentCustomDecimalField14'    H408,
'EducationalBackgroundAssessmentCustomDecimalField15'    H409,
'EducationalBackgroundAssessmentCustomDecimalField16'    H410,
'EducationalBackgroundAssessmentCustomDecimalField17'    H411,
'EducationalBackgroundAssessmentCustomDecimalField18'    H412,
'EducationalBackgroundAssessmentCustomDecimalField19'    H413,
'EducationalBackgroundAssessmentCustomDecimalField20'    H414,
'EducationalBackgroundAssessmentDeleteFlag'             H415,
'EducationalBackgroundResultSequenceNumber'    H416,
'EducationalBackgroundResultYearResultReceived'    H417,
'EducationalBackgroundResultType'    H418,
'EducationalBackgroundResultExaminationPeriod'    H419,
'EducationalBackgroundResultSubjectName'    H420,
'EducationalBackgroundResultSubjectArea'    H421,
'EducationalBackgroundResultSubjectLevel'    H422,
'EducationalBackgroundResultGradeReceived'    H423,
'EducationalBackgroundResultScore'    H424,
'EducationalBackgroundResultIsFinalResult'    H425,
'EducationalBackgroundResultVerifiedByStaff'    H426,
'EducationalBackgroundResultVerifiedByExternalSystem'    H427,
'EducationalBackgroundResultIncludeInScoreCalculation'    H428,
'EducationalBackgroundResultAwardingBodyExternalOrganisationCode'    H429,
'EducationalBackgroundResultCustomTextField1'    H430,
'EducationalBackgroundResultCustomTextField2'    H431,
'EducationalBackgroundResultCustomTextField3'    H432,
'EducationalBackgroundResultCustomTextField4'    H433,
'EducationalBackgroundResultCustomTextField5'    H434,
'EducationalBackgroundResultCustomTextField6'    H435,
'EducationalBackgroundResultCustomTextField7'    H436,
'EducationalBackgroundResultCustomTextField8'    H437,
'EducationalBackgroundResultCustomTextField9'     H438,
'EducationalBackgroundResultCustomTextField10'    H439,
'EducationalBackgroundResultCustomTextField11'    H440,
'EducationalBackgroundResultCustomTextField12'    H441,
'EducationalBackgroundResultCustomTextField13'    H442,
'EducationalBackgroundResultCustomTextField14'    H443,
'EducationalBackgroundResultCustomTextField15'    H444,
'EducationalBackgroundResultCustomTextField16'    H445,
'EducationalBackgroundResultCustomTextField17'    H446,
'EducationalBackgroundResultCustomTextField18'    H447,
'EducationalBackgroundResultCustomTextField19'    H448,
'EducationalBackgroundResultCustomTextField20'    H449,
'EducationalBackgroundResultCustomDateField1'    H450,
'EducationalBackgroundResultCustomDateField2'    H451,
'EducationalBackgroundResultCustomDateField3'    H452,
'EducationalBackgroundResultCustomDateField4'    H453,
'EducationalBackgroundResultCustomDateField5'    H454,
'EducationalBackgroundResultCustomDateField6'    H455,
'EducationalBackgroundResultCustomDateField7'    H456,
'EducationalBackgroundResultCustomDateField8'    H457,
'EducationalBackgroundResultCustomDateField9'    H458,
'EducationalBackgroundResultCustomDateField10'    H459,
'EducationalBackgroundResultCustomDateField11'    H460,
'EducationalBackgroundResultCustomDateField12'    H461,
'EducationalBackgroundResultCustomDateField13'    H462,
'EducationalBackgroundResultCustomDateField14'    H463,
'EducationalBackgroundResultCustomDateField15'    H464,
'EducationalBackgroundResultCustomDateField16'    H465,
'EducationalBackgroundResultCustomDateField17'    H466,
'EducationalBackgroundResultCustomDateField18'    H467,
'EducationalBackgroundResultCustomDateField19'    H468,
'EducationalBackgroundResultCustomDateField20'    H469,
'EducationalBackgroundResultCustomDecimalField1'    H470,
'EducationalBackgroundResultCustomDecimalField2'    H471,
'EducationalBackgroundResultCustomDecimalField3'    H472,
'EducationalBackgroundResultCustomDecimalField4'    H473,
'EducationalBackgroundResultCustomDecimalField5'    H474,
'EducationalBackgroundResultCustomDecimalField6'    H475,
'EducationalBackgroundResultCustomDecimalField7'    H476,
'EducationalBackgroundResultCustomDecimalField8'    H477,
'EducationalBackgroundResultCustomDecimalField9'    H478,
'EducationalBackgroundResultCustomDecimalField10'    H479,
'EducationalBackgroundResultCustomDecimalField11'    H480,
'EducationalBackgroundResultCustomDecimalField12'    H481,
'EducationalBackgroundResultCustomDecimalField13'    H482,
'EducationalBackgroundResultCustomDecimalField14'    H483,
'EducationalBackgroundResultCustomDecimalField15'    H484,
'EducationalBackgroundResultCustomDecimalField16'    H485,
'EducationalBackgroundResultCustomDecimalField17'    H486,
'EducationalBackgroundResultCustomDecimalField18'    H487,
'EducationalBackgroundResultCustomDecimalField19'    H488,
'EducationalBackgroundResultCustomDecimalField20'    H489,
'ExternalSubject'    H490,
'EducationalBackgroundResultExternalReferenceId'    H491,
'EducationalBackgroundResultDeleteFlag'             H492,
'EducationalBackgroundApplicationId'                H493,
'EducationalBackgroundCrossReferenceDeleteFlag'     H494,
'StudentPreviousInstitutionSequenceNumber'    H495,
'StudentPreviousInstitutionInstitutionCode'    H496,
'StudentPreviousInstitutionLastYear'    H497,
'StudentPreviousInstitutionInstitutionStudentId'    H498,
'StudentPreviousInstitutionVetFieldOfEducation'    H499,
'StudentPreviousInstitutionVetLevel'    H500,
'StudentPreviousInstitutionExternalStudyPackageCode'    H501,
'StudentPreviousInstitutionCommencedDate'    H502,
'StudentPreviousInstitutionLastAttendedDate'    H503,
'StudentPreviousInstitutionResultAvailabilityDate'    H504,
'StudentPreviousInstitutionIsUsedForAdmission'    H505,
'StudentPreviousInstitutionNotes'    H506,
'StudentPreviousInstitutionQualificationDescription'    H507,
'StudentPreviousInstitutionEnglishLanguageInstructionRequired'    H508,
'StudentPreviousInstitutionFirstYear'    H509,
'StudentPreviousInstitutionTotalEFTSL'    H510,
'StudentPreviousInstitutionInstitutionDescription'    H511,
'StudentPreviousInstitutionExternalOrganisationType'    H512,
'StudentPreviousInstitutionExternalOrganisationCountry'    H513,
'StudentPreviousInstitutionCountryArea'    H514,
'StudentPreviousInstitutionQualificationType'    H515,
'StudentPreviousInstitutionQualificationScore'    H516,
'StudentPreviousInstitutionQualificationScoreType'    H517,
'StudentPreviousInstitutionQualificationCompletionLevel'    H518,
'StudentPreviousInstitutionQualificationNotes'    H519,
'StudentPreviousInstitutionIsQualificationCompleted'    H520,
'StudentPreviousInstitutionIsStudentExcluded'    H521,
'StudentPreviousInstitutionStudentExcludedNotes'    H522,
'StudentPreviousInstitutionAssessmentQualificationType'    H523,
'StudentPreviousInstitutionAssessmentQualificationLevel'    H524,
'StudentPreviousInstitutionAssessmentGPA'    H525,
'StudentPreviousInstitutionAssessmentGPAScale'    H526,
'StudentPreviousInstitutionAssessmentRankScore'    H527,
'StudentPreviousInstitutionAssessmentRankSchedule'    H528,
'StudentPreviousInstitutionEffectiveDate'    H529,
'StudentPreviousInstitutionVerificationStatus'    H530,
'StudentPreviousInstitutionDeleteFlag'    H531,
'StudentHighestLevelParticipationSequenceNumber'    H532,
'StudentHighestLevelParticipationEffectiveDate'    H533,
'StudentHighestLevelParticipationParticipationLevel'    H534,
'StudentHighestLevelParticipationYear'    H535,
'StudentHighestLevelParticipationDeleteFlag'    H536,
'StudentCitizenshipLineEffectiveDate'    H537,
'StudentCitizenshipCitizenship'    H538,
'StudentCitizenshipIsPermanentResident'    H539,
'StudentCitizenshipPermanentResidencyDate'    H540,
'StudentCitizenshipPermanentResidencyMet'    H541,
'StudentCitizenshipLastConfirmedDate'    H542,
'StudentCitizenshipIsResidingInDomesticCountry'    H543,
'StudentCitizenshipIsResidingOutsideDomesticCountry'    H544,
'StudentCitizenshipYearOfEntry'    H545,
'StudentCitizenshipIsYearOfEntryUnknown'    H546,
'StudentCitizenshipCountryOfCitizenship'    H547,
'StudentCitizenshipIsCitizenshipSelfNominated'    H548,
'StudentCitizenshipDeleteFlag'      H549,
'StudentCommentSequenceNumber'    H550,
'StudentCommentApplicationId'    H551,
'StudentCommentApplicationLineId'    H552,
'StudentCommentEffectiveDate'    H553,
'StudentCommentCommentCode'    H554,
'StudentCommentFreeText'    H555,
'StudentCommentPrintSequenceNumber'    H556,
'StudentCommentStudyPackageCode'    H557,
'StudentCommentStudyPackageVersionNumber'    H558,
'StudentCommentStudentStudyPackageAttemptNumber'    H559,
'StudentCommentAvailabilityYear'    H560,
'StudentCommentStudyPeriod'    H561,
'StudentCommentEnrolmentPeriodYear'    H562,
'StudentCommentEnrolmentPeriodNumber'    H563,
'StudentCommentScholarshipCandidateId'    H564,
'StudentCommentScholarshipApplicationId'    H565,
'StudentCommentStudentScholarshipId'    H566,
'StudentCommentIncludeInScholarshipMerge'    H567,
'StudentCommentIncludeInOfferMerge'    H568,
'StudentCommentApplicationAssessmentNumber'    H569,
'StudentCommentApplicationReasonNumber'    H570,
'StudentCommentAgreementId'    H571,
'StudentCommentAgreementSequenceNumber'    H572,
'StudentCommentViewableByStudentInAgreements'    H573,
'StudentCommentViewableByStudent'    H574,
'StudentCommentDeleteFlag'         H575,
'IdentityApplicantPreviousName'    H576,
'IdentityGenderIdentityDifference'    H577,
'IdentitySexualOrientation'    H578,
'IdentityCardBarcodeNumber'    H579,
'IdentityCardIssueDate'    H580,
'IdentityCardIssueYear'    H581,
'IdentityCardExpiryDate'    H582,
'IdentityCardIssuer'    H583,
'IdentityGenderPronoun'  H584,
'IdentityCustomTextField1'    H585,
'IdentityCustomTextField2'    H586,
'IdentityCustomTextField3'    H587,
'IdentityCustomTextField4'    H588,
'IdentityCustomTextField5'    H589,
'IdentityCustomTextField6'    H590,
'IdentityCustomTextField7'    H591,
'IdentityCustomTextField8'    H592,
'IdentityCustomTextField9'    H593,
'IdentityCustomTextField10'   H594,
'IdentityCustomTextField11'    H595,
'IdentityCustomTextField12'    H596,
'IdentityCustomTextField13'    H597,
'IdentityCustomTextField14'    H598,
'IdentityCustomTextField15'    H599,
'IdentityCustomTextField16'    H600,
'IdentityCustomTextField17'    H601,
'IdentityCustomTextField18'    H602,
'IdentityCustomTextField19'    H603,
'IdentityCustomTextField20'    H604,
'IdentityCustomDecimalField1'    H605,
'IdentityCustomDecimalField2'    H606,
'IdentityCustomDecimalField3'    H607,
'IdentityCustomDecimalField4'    H608,
'IdentityCustomDecimalField5'    H609,
'IdentityCustomDecimalField6'    H610,
'IdentityCustomDecimalField7'    H611,
'IdentityCustomDecimalField8'    H612,
'IdentityCustomDecimalField9'    H613,
'IdentityCustomDecimalField10'    H614,
'IdentityCustomDecimalField11'    H615,
'IdentityCustomDecimalField12'    H616,
'IdentityCustomDecimalField13'    H617,
'IdentityCustomDecimalField14'    H618,
'IdentityCustomDecimalField15'    H619,
'IdentityCustomDecimalField16'    H620,
'IdentityCustomDecimalField17'    H621,
'IdentityCustomDecimalField18'    H622,
'IdentityCustomDecimalField19'    H623,
'IdentityCustomDecimalField20'    H624,
'IdentityCustomDateField1'    H625,
'IdentityCustomDateField2'    H626,
'IdentityCustomDateField3'    H627,
'IdentityCustomDateField4'    H628,
'IdentityCustomDateField5'    H629,
'IdentityCustomDateField6'    H630,
'IdentityCustomDateField7'    H631,
'IdentityCustomDateField8'    H632,
'IdentityCustomDateField9'    H633,
'IdentityCustomDateField10'    H634,
'IdentityCustomDateField11'    H635,
'IdentityCustomDateField12'    H636,
'IdentityCustomDateField13'    H637,
'IdentityCustomDateField14'    H638,
'IdentityCustomDateField15'    H639,
'IdentityCustomDateField16'    H640,
'IdentityCustomDateField17'    H641,
'IdentityCustomDateField18'    H642,
'IdentityCustomDateField19'    H643,
'IdentityCustomDateField20'    H644,
'NationalityVisaStudentVisaRequired'    H645,
'NationalityVisaStudentVisaIsCurrent'    H646,
'NationalityAreaOfPermanentResidence'    H647,
'NationalityDualNationalityCode'    H648,
'NationalityCustomTextField1'    H649,
'NationalityCustomTextField2'    H650,
'NationalityCustomTextField3'    H651,
'NationalityCustomTextField4'    H652,
'NationalityCustomTextField5'    H653,
'NationalityCustomTextField6'    H654,
'NationalityCustomTextField7'    H655,
'NationalityCustomTextField8'    H656,
'NationalityCustomTextField9'    H657,
'NationalityCustomTextField10'    H658,
'NationalityCustomTextField11'    H659,
'NationalityCustomTextField12'    H660,
'NationalityCustomTextField13'    H661,
'NationalityCustomTextField14'    H662,
'NationalityCustomTextField15'    H663,
'NationalityCustomTextField16'    H664,
'NationalityCustomTextField17'    H665,
'NationalityCustomTextField18'    H666,
'NationalityCustomTextField19'    H667,
'NationalityCustomTextField20'    H668,
'NationalityCustomDecimalField1'    H669,
'NationalityCustomDecimalField2'    H670,
'NationalityCustomDecimalField3'    H671,
'NationalityCustomDecimalField4'    H672,
'NationalityCustomDecimalField5'    H673,
'NationalityCustomDecimalField6'    H674,
'NationalityCustomDecimalField7'    H675,
'NationalityCustomDecimalField8'    H676,
'NationalityCustomDecimalField9'    H677,
'NationalityCustomDecimalField10'    H678,
'NationalityCustomDecimalField11'    H679,
'NationalityCustomDecimalField12'    H680,
'NationalityCustomDecimalField13'    H681,
'NationalityCustomDecimalField14'    H682,
'NationalityCustomDecimalField15'    H683,
'NationalityCustomDecimalField16'    H684,
'NationalityCustomDecimalField17'    H685,
'NationalityCustomDecimalField18'    H686,
'NationalityCustomDecimalField19'    H687,
'NationalityCustomDecimalField20'    H688,
'NationalityCustomDateField1'    H689,
'NationalityCustomDateField2'    H690,
'NationalityCustomDateField3'    H691,
'NationalityCustomDateField4'    H692,
'NationalityCustomDateField5'    H693,
'NationalityCustomDateField6'    H694,
'NationalityCustomDateField7'    H695,
'NationalityCustomDateField8'    H696,
'NationalityCustomDateField9'    H697,
'NationalityCustomDateField10'    H698,
'NationalityCustomDateField11'    H699,
'NationalityCustomDateField12'    H700,
'NationalityCustomDateField13'    H701,
'NationalityCustomDateField14'    H702,
'NationalityCustomDateField15'    H703,
'NationalityCustomDateField16'    H704,
'NationalityCustomDateField17'    H705,
'NationalityCustomDateField18'    H706,
'NationalityCustomDateField19'    H707,
'NationalityCustomDateField20'    H708,
'DisabilitySpecialNeedsNotes'    H709,
'PersonalHistoryMainLanguageSpoken'    H710,
'PersonalHistoryProficiencyInSpokenEnglish'    H711,
'PersonalHistoryAboriginalOrTorresStraitIslander'    H712,
'PersonalHistoryEthnicity'    H713,
'PersonalHistoryDomicile'    H714,
'PersonalHistoryMaritalStatus'    H715,
'PersonalHistoryNationalIdentity'    H716,
'PersonalHistorySecondNationalIdentity'    H717,
'PersonalHistoryReligion'    H718,
'PersonalHistoryReligiousBelief'    H719,
'PersonalHistorySexualOrientation'    H720,
'PersonalHistorySocioEconomicClassification'    H721,
'PersonalHistorySocioEconomicClassification2010'    H722,
'PersonalHistorySocioEconomicClassification2020'    H723,
'PersonalHistoryGenderIdentityDifference'    H724,
'PersonalHistoryNumberOfDependents'    H725,
'PersonalHistoryDisabledStudentAllowance'    H726,
'PersonalHistoryCareLeaver'    H727,
'PersonalHistoryCarerType'    H728,
'PersonalHistoryCarerStartDate'    H729,
'PersonalHistoryCarerEndDate'    H730,
'PersonalHistoryCriminalConvictionDeclaration'    H731,
'PersonalHistoryParentOccupation'    H732,
'PersonalHistoryParentOccupation2010'    H733,
'PersonalHistoryParentOccupation2020'    H734,
'PersonalHistoryParentEducation'    H735,
'PersonalHistoryParentEducation2'   H736,
'PersonalHistoryClassificationScore'    H737,
'PersonalHistoryFeePayer'    H738,
'PersonalHistoryEstranged'    H739,
'PersonalHistoryServiceLeaver'    H740,
'PersonalHistoryServiceStudent'    H741,
'PersonalHistorySignLanguage'    H742,
'PersonalHistorySettledPresettledStatus'    H743,
'PersonalHistoryGeographicClassification'   H744,
'PersonalHistoryTransgender'    H745,
'PersonalHistoryRefugeeAsylumStatus'   H746,
'PersonalHistoryFreeSchoolMeals'    H747,
'PersonalHistoryParentOrParentResp'  H748,
'PersonalHistoryParentOrCarerServices' H749,
'PersonalHistoryCustomTextField1'    H750,
'PersonalHistoryCustomTextField2'    H751,
'PersonalHistoryCustomTextField3'    H752,
'PersonalHistoryCustomTextField4'    H753,
'PersonalHistoryCustomTextField5'    H754,
'PersonalHistoryCustomTextField6'    H755,
'PersonalHistoryCustomTextField7'    H756,
'PersonalHistoryCustomTextField8'    H757,
'PersonalHistoryCustomTextField9'    H758,
'PersonalHistoryCustomTextField10'    H759,
'PersonalHistoryCustomTextField11'    H760,
'PersonalHistoryCustomTextField12'    H761,
'PersonalHistoryCustomTextField13'    H762,
'PersonalHistoryCustomTextField14'    H763,
'PersonalHistoryCustomTextField15'    H764,
'PersonalHistoryCustomTextField16'    H765,
'PersonalHistoryCustomTextField17'    H766,
'PersonalHistoryCustomTextField18'    H767,
'PersonalHistoryCustomTextField19'    H768,
'PersonalHistoryCustomTextField20'    H769,
'PersonalHistoryCustomDecimalField1'    H770,
'PersonalHistoryCustomDecimalField2'    H771,
'PersonalHistoryCustomDecimalField3'    H772,
'PersonalHistoryCustomDecimalField4'    H773,
'PersonalHistoryCustomDecimalField5'    H774,
'PersonalHistoryCustomDecimalField6'    H775,
'PersonalHistoryCustomDecimalField7'    H776,
'PersonalHistoryCustomDecimalField8'    H777,
'PersonalHistoryCustomDecimalField9'    H778,
'PersonalHistoryCustomDecimalField10'    H779,
'PersonalHistoryCustomDecimalField11'    H780,
'PersonalHistoryCustomDecimalField12'    H781,
'PersonalHistoryCustomDecimalField13'    H782,
'PersonalHistoryCustomDecimalField14'    H783,
'PersonalHistoryCustomDecimalField15'    H784,
'PersonalHistoryCustomDecimalField16'    H785,
'PersonalHistoryCustomDecimalField17'    H786,
'PersonalHistoryCustomDecimalField18'    H787,
'PersonalHistoryCustomDecimalField19'    H788,
'PersonalHistoryCustomDecimalField20'    H789,
'PersonalHistoryCustomDateField1'    H790,
'PersonalHistoryCustomDateField2'    H791,
'PersonalHistoryCustomDateField3'    H792,
'PersonalHistoryCustomDateField4'    H793,
'PersonalHistoryCustomDateField5'    H794,
'PersonalHistoryCustomDateField6'    H795,
'PersonalHistoryCustomDateField7'    H796,
'PersonalHistoryCustomDateField8'    H797,
'PersonalHistoryCustomDateField9'    H798,
'PersonalHistoryCustomDateField10'    H799,
'PersonalHistoryCustomDateField11'    H800,
'PersonalHistoryCustomDateField12'    H801,
'PersonalHistoryCustomDateField13'    H802,
'PersonalHistoryCustomDateField14'    H803,
'PersonalHistoryCustomDateField15'    H804,
'PersonalHistoryCustomDateField16'    H805,
'PersonalHistoryCustomDateField17'    H806,
'PersonalHistoryCustomDateField18'    H807,
'PersonalHistoryCustomDateField19'    H808,
'PersonalHistoryCustomDateField20'    H809,
'VisaSequenceNumber'                  H810,
'VisaClass'                           H811,
'VisaSubClass'                        H812,
'VisaVerificationStatus'              H813,
'VisaNumber'                          H814,
'VisaSponsor'                         H815,
'VisaSponsorLicenceNumber'            H816,
'VisaStartDate'                       H817,
'VisaExpiryDate'                      H818,
'VisaInactiveDate'                    H819,
'VisaCourse'                          H820,
'VisaCourseLevel'                     H821,
'VisaHasCompletedCourse'              H822,
'VisaWorkingConditions'               H823,
'VisaEntryVignetteNumber'             H824,
'VisaEntryVignetteClearanceDate'       H825,
'VisaBiometricResidencePermitCollectionDate'       H826,
'VisaBiometricResidencePermitCollectionLocation'    H827,
'VisaBiometricResidencePermitCollected'             H828,
'VisaBiometricResidencePermitAvailableDate'        H829,
'VisaDocumentType'    H830,
'VisaDocumentNumber'    H831,
'VisaDocumentIssueDate'    H832,
'VisaDocumentExpiryDate'    H833,
'VisaDocumentStatus'    H834,
'VisaCustomTextField1'    H835,
'VisaCustomTextField2'    H836,
'VisaCustomTextField3'    H837,
'VisaCustomTextField4'    H838,
'VisaCustomTextField5'    H839,
'VisaCustomTextField6'    H840,
'VisaCustomTextField7'    H841,
'VisaCustomTextField8'    H842,
'VisaCustomTextField9'    H843,
'VisaCustomTextField10'    H844,
'VisaCustomTextField11'    H845,
'VisaCustomTextField12'    H846,
'VisaCustomTextField13'    H847,
'VisaCustomTextField14'    H848,
'VisaCustomTextField15'    H849,
'VisaCustomTextField16'    H850,
'VisaCustomTextField17'    H851,
'VisaCustomTextField18'    H852,
'VisaCustomTextField19'    H853,
'VisaCustomTextField20'    H854,
'VisaCustomDecimalField1'               H855,
'VisaCustomDecimalField2'               H856,
'VisaCustomDecimalField3'               H857,
'VisaCustomDecimalField4'               H858,
'VisaCustomDecimalField5'               H859,
'VisaCustomDecimalField6'               H860,
'VisaCustomDecimalField7'               H861,
'VisaCustomDecimalField8'               H862,
'VisaCustomDecimalField9'               H863,
'VisaCustomDecimalField10'              H864,
'VisaCustomDecimalField11'              H865,
'VisaCustomDecimalField12'              H866,
'VisaCustomDecimalField13'              H867,
'VisaCustomDecimalField14'              H868,
'VisaCustomDecimalField15'              H869,
'VisaCustomDecimalField16'              H870,
'VisaCustomDecimalField17'              H871,
'VisaCustomDecimalField18'              H872,
'VisaCustomDecimalField19'              H873,
'VisaCustomDecimalField20'              H874,
'VisaCustomDateField1'                  H875,
'VisaCustomDateField2'                  H876,
'VisaCustomDateField3'                  H877,
'VisaCustomDateField4'                  H878,
'VisaCustomDateField5'                  H879,
'VisaCustomDateField6'                  H880,
'VisaCustomDateField7'                  H881,
'VisaCustomDateField8'                  H882,
'VisaCustomDateField9'                  H883,
'VisaCustomDateField10'                 H884,
'VisaCustomDateField11'                 H885,
'VisaCustomDateField12'                 H886,
'VisaCustomDateField13'                 H887,
'VisaCustomDateField14'                 H888,
'VisaCustomDateField15'                 H889,
'VisaCustomDateField16'                 H890,
'VisaCustomDateField17'                 H891,
'VisaCustomDateField18'                 H892,
'VisaCustomDateField19'                 H893,
'VisaCustomDateField20'                 H894,
'VisaDeleteFlag'                        H895,
'StudentVisaRefusalSequenceNumber'      H896,
'StudentVisaRefusalVisaClass'           H897,
'StudentVisaRefusalVisaNumber'          H898,
'StudentVisaRefusalVisaSubClass'        H899,
'StudentVisaRefusalDate'                H900,
'StudentVisaRefusalDocumentNumber'      H901,
'StudentVisaRefusalReason'              H902,
'StudentVisaRefusalReissueVisaDocument' H903,
'StudentVisaRefusalVerificationStatus'  H904,
'StudentVisaRefusalDeleteFlag'          H905,
'END'                                   "END"
from dual;

CURSOR STU (t_run_mode varchar2) IS
Select  NULL    KEY, '0'     RANK, NULL LINETYPE,NULL    H003, NULL    H004, NULL    H005, NULL    H006, NULL    H007, NULL    H008, NULL    H009, NULL    H010,
        NULL    H011, NULL    H012, NULL    H013, NULL    H014, NULL    H015, NULL    H016, NULL    H017, NULL    H018, NULL    H019, NULL    H020,
        NULL    H021, NULL    H022, NULL    H023, NULL    H024, NULL    H025, NULL    H026, NULL    H027, NULL    H028, NULL    H029, NULL    H030,
        NULL    H031, NULL    H032, NULL    H033, NULL    H034, NULL    H035, NULL    H036, NULL    H037, NULL    H038, NULL    H039, NULL    H040,
        NULL    H041, NULL    H042, NULL    H043, NULL    H044, NULL    H045, NULL    H046, NULL    H047, NULL    H048, NULL    H049, NULL    H050,
        NULL    H051, NULL    H052, NULL    H053, NULL    H054, NULL    H055, NULL    H056, NULL    H057, NULL    H058, NULL    H059, NULL    H060,
        NULL    H061, NULL    H062, NULL    H063, NULL    H064, NULL    H065, NULL    H066, NULL    H067, NULL    H068, NULL    H069, NULL    H070,
        NULL    H071, NULL    H072, NULL    H073, NULL    H074, NULL    H075, NULL    H076, NULL    H077, NULL    H078, NULL    H079, NULL    H080,
        NULL    H081,
        'END'   "END",
        NULL    pers,
        NULL email_addr
FROM DUAL WHERE 1=2
UNION        
select p.person_id||'_'||'STU', --KEY
    '1',                       --RANK
    'STU',                      --LINETYPE
    p.person_id,  --Student ID                            H003
    p.surname ,                --Family Name
    p.given_names,             --Given Name
    null,                       --Middle Name/s
    null  title,                --Title
    null,                       --Alias
    p.preferred_given_name,     --Preferred Name
    null,                       --Formal Name
    null,                       --Formal Name 2
    null,                       --Phonetic Name
    case when p.person_id in (942637) then '01/01/1990 12:00:00 AM' 
         else nvl(to_char(p.birth_dt,'DD-MON-YYYY'),'01/01/1990 12:00:00 AM')
         end birth_dt,--Date of Birth -- Added Case statement for student 942637 due to wrong birthdate n avoid any enrollment or tcsi issue
   case when p.sex in ('U') then '9' else p.sex end,                      --Gender
    null,                       --Initials
    'N',                        --Private
    p.deceased_ind,             --Deceased
    'Y',                        --Is Active
    null,                       --Picture Directory Code
    null,                       --Picture File Name                     H020
    null,                       --Main Language Spoken at Perm Home Res H021
    null,                       --Aboriginal or Torres Strait Islander  H022
    null,                       --Current Employment Status             H023
    null,                       --ID Card Barcode
    null,                       --Barcode Issued
    null,                       --Card Latest Issue Year
    '02/01/1990 12:00:00 AM',              --Name Effective From
    null,                       --Name Change Reason
    null,                       --Card Expiry
    null,                       --Card Issuer
    null, --'9999',             --External Organisation Code
    null,                       --Student Number
    null,                       --Year
    null,                       --State
    null,                       --Year 12 Completed
    null,                       --Year 12 Result Type
    -- PERSON CHESSN DETAILS START
    pc.chessn,                  --CHESSN                                H037
    pc.chessn_recorded_dt,      --Government Student Number Provided Date
    case when pc.s_chessn_crtn_mthd in ('MANUAL') then 'MNL' else pc.s_chessn_crtn_mthd end,      --Government Student Number Source
    null,                       --Government Student Number Change Reason
    -- PERSON CHESSN DETAILS END
    null,                       --Proficiency in Spoken English         H041
    -- ADMISSION TEST START
    null,                       --Test Type                             H042
    null,                       --Listening Score                       H043
    null,                       --Reading Score                         H044
    null,                       --Writing Score                         H045
    null,                       --TWE Score                             H046
    null,                       --Speaking Score                        H047
    null,                       --Overall Score                         H048
    null,                       --Tested                                H049
    null,                       --Incomplete test                       H050
    null,                       --Verified                              H051
    null,                       --Verified By                           H052
    -- ADMISSION TEST END
    'STU',                      --Student Status                        H053
    'TRUE',                     --Ignore Student Duplicate Check
    '1',                        --Citizenship                           H055
    null,                       --Student Nominated Citizenship
    null,                       --Student Nationality Effective Date
    null,                       --Citizenship/Residency Details Last Confirmed Date
    null,                       --Main Nationality Country
    null,                       --Country of Birth                      H060
    null,                       --Permanent Resident of Australia       H061  
    null,                       --Date Residency Granted                H062
    null,                       --Residency Reqts Citizenship Met > 1yr H063
    null,                       --Resident In Australia                 H064
    null,                       --Resident Outside Australia            H065 Assuming CDU has none of these
    null,                       --Year of Entry into Australia          H066
    'R',                        --Dual Nationality Country
    'R',                        --Visa Type
    null,                       --Visa Subclass
    'NA',                       --Highest School Level Completed        H070
    null,                       --Highest School Level Completed Year   H071
    null,                       --Currently Attending School            H072
    'NA',                       --Study Reason                          H073
    '1',                        --Nationality
    'NA',                       --Length of Residence
    'NA',                       --Purpose of Residence
    'NA',                       --Temporary Absence
    'NA',                       --Residential Category
    'NA',                       --Country of Ordinary Residence
    null,                       --Admission Centre Import Profile Code
    null,                       --HasNoDisability                       H081
    'END',
    p.person_id  pers,
   case when p.email_addr not like '%@%' then  's'||p.person_id||'@students.cdu.edu.au' 
         else nvl(p.email_addr,'s'||p.person_id||'@students.cdu.edu.au') end
    from person p
         , 
         person_chessn pc
         ,
        (select DISTINCT atr1.person_id, atr1.admission_test_type, atr1.verification_status, atr1.achieved_dt 
         from admission_test_result atr1
         where atr1.achieved_dt = (select max(atr2.achieved_dt) from admission_test_result atr2
                                   where atr2.person_id = atr1.person_id
                                   and   atr2.admission_test_type <> 'ACER-TEP')
         ) atr
---- STANDARD PERSON EXCLUSION ---
    where not exists (select 1 from alternate_person_id api where api.pe_person_id = p.person_id
    and api.person_id_type = 'MERGE-INTO')
    and p.person_id >= 100000
    and p.surname <> 'ACCOUNTS PAYABLE'
    -----------
    and pc.person_id(+)  = p.person_id
    and pc.s_chessn_status(+) in ('ACTIVE','PROVISIONL')   -- exclude NOT_APPLIC, INVALID, INACTIVE
    and atr.person_id(+) = p.person_id
    and atr.verification_status(+) = 'VERIFIED'
    ---- Exclude Student Fee Sponsors
    and p.person_id not in    (select p1.person_id
                         from student_fee_sponsor  sfs, person p1
                         where sfs.person_id = p1.person_id
                         and p1.sex = 'U'
                         and p1.birth_dt is null
                         and sfs.sponsor_status <> 'CANCELLED'
                         and not exists (select 1 from student_course_attempt sca where sca.person_id = p1.person_id)
                         and not exists (select 1 from admission_appl aa where aa.person_id = p1.person_id))
    ---- Exclude Student Fee Sponsors
--- STANDARD PERSON EXCLUSION ---
    ---- IMPORT CONTROL - Only import students mentioned in the control table or all students when run_mode is et to FULL.
--    and (exists (select 1 from cdu_t1_import_control ctrl 
--                 where ctrl.entity_type = 'STUDENT' 
--                 and   ctrl.pkey = p.person_id 
--                 and   ctrl.logical_delete_dt is null)
--         or
--         t_run_mode = 'FULL')            
    ---- IMPORT CONTROL    

------ Debug
   -- and p.person_id in (select sca.person_id from student_course_attempt sca where sca.person_id = p.person_id and sca.course_attempt_status='ENROLLED')
   -- and p.person_id like '36%'
   -- and p.STAFF_MEMBER_IND = 'N'
   -- and p.sex='F'
  -- and p.person_id between  117020 and 119045
   --fetch first row only
    -- and p.person_id  in (934900)
   -- and p.person_id between  250001 and 251050 
   -- and p.person_id  not in (365002,365145,365766,368295)

   --and p.person_id = 130004
--    and p.person_id in ( 273468,246574,260310,319793,316155,283966,319191,326856,273703,328838,294757,315020
--                        ,323760,356808,346042,296416,217035,357941,120928,308651,358318,346697,102172,339708
--                        ,343426,262286,320518,352855,264778,334208,228504,280642,199005,282460,222382,300567
--                        ,248248,356953,345343,352400,299750,282320,302949,292603,327728,356668,321909,162426
--                        ,358135,357707,358620,358389,358281,358256,347180,359368,346681,984453,316101,984453
--                        ,148518,334458,356104,304486,321878,324208,354072,337384,341908,304278,321430,327693
--                        ,342686,307028,321878,345906,333555,347666,114181,333812,315997,304278,304379,314201
--                        ,325291,306500,347328,292515,307514,325257,252981,302524,333555,327009,318816,198055
--                        ,315997,356585,954368,322863,356901,350056,357041,357247,272381,355839,882745,100444
--                        ,100744,101233,101624,101787,101938,102093,102399,103141,104470,105588,105936,106339
--                        ,106445,106966,107153,107190,107633,108192,108226)
-------------------Testing for Student Middle names 
--     and p.person_id in (132963,134890,158842,159745,164857,117749,125202,125203,125209,973941,116506,116592,125210,
--                         125211,125221,157370,251047,307144,311500,312279,207711,264694,305026,311732,311843,104753,
--                         106099,107465,108890,114015,104885,104907,106000,106580,963874,105989,107843,912489,963704,
--                         963752,352317,353103,229744,346583,293143,358602,354480)

   -- and p.person_id in (select sca.person_id  from student_course_attempt sca where sca.person_id=p.person_id and sca.course_attempt_status ='ENROLLED')
    --and p.title in ('MR')
   -- order by p.person_id
   -- and p.person_id between 117000 and 121000    --115684 records
   -- and p.person_id in ( '115972','116438')

 --  For debugging OVERSEAS EDUCATION
 -- and p.person_id in  (200276,200280,200282,200284,200286,200288,200291,200292,200294,200295,186901,154013,200328,200329,200335,200337,200338,200344,200344,179978,179981,179982,181783,181784,181785,
                   --   181786,181787,181788,181789,181790,181791,181792,192872,192882,192883,192885,192889,192901,192904,192907,191776,190566,188002,200919,200920,200927,201775,203958,203962,203968,
                   --  203972,203981,203982,203983,203990,203992,203995,203995,204043,204045)    
  --and p.person_id in (321269,315525,315316)
  --and p.person_id between 250001 and 500000    --105077 records
  --and p.person_id between 500001 and 999999    -- 92225 records
  --and p.person_id in (356169) 
------ Debug
;


-- Parameterised Subqueries
CURSOR ATSI(p_person_id number) IS
select 'V' SECTOR,ps.start_dt,
  case ps.aborig_torres_cd
    when '@'   then 'X'
    when '1'   then 'Y'
    when '2'   then 'T'
    when '3'   then 'B'
    when '4'   then 'N'
    else 'NA'
  end atsi
from person_statistics_vet ps
where (ps.end_dt > sysdate or ps.end_dt is NULL)
and    ps.person_id = p_person_id
UNION
select 'H' SECTOR,ps.start_dt,
  case ps.aborig_torres_cd 
    when '2'   then 'N'
    when '3'   then 'Y'
    when '4'   then 'T'
    when '5'   then 'B'
    when '9'   then 'X'
    else 'NA'
  end atsi  
from person_statistics ps
where (ps.end_dt > sysdate or ps.end_dt is NULL)
and    ps.person_id = p_person_id
order by start_dt desc;
atsi_rec    atsi%rowtype;

CURSOR ATR(p_person_id number) IS
select * from admission_test_result atr
where atr.admission_test_type not in ('ACER-TEP','STAT')
and   atr.verification_status = 'VERIFIED'
and   atr.expiry_dt is null
------
and   atr.person_id = p_person_id
------
and   atr.achieved_dt = (select max(atr2.achieved_dt) from admission_test_result atr2
                         where atr2.person_id = atr.person_id
                         and   atr2.admission_test_type <> 'ACER-TEP'
                         and   atr2.verification_status = 'VERIFIED'
                         and   atr2.expiry_dt is null)
order by atr.sequence_number desc;
atr_rec     atr%rowtype;

CURSOR STAT(p_person_id number) IS
select * from admission_test_result atr
where atr.admission_test_type in ('STAT')
and   atr.verification_status = 'VERIFIED'
and   atr.result_score is not null
and   atr.expiry_dt is null
------
and   atr.person_id = p_person_id
------
and   atr.achieved_dt = (select max(atr2.achieved_dt) from admission_test_result atr2
                         where atr2.person_id = atr.person_id
                         and   atr2.admission_test_type = atr.admission_test_type
                         and   atr2.verification_status = 'VERIFIED'
                         and   atr2.result_score is not null
                         and   atr2.expiry_dt is null)
order by atr.sequence_number desc;
stat_rec     stat%rowtype;

CURSOR STDYRSN(p_person_id number) IS
select sca.person_id,commencement_dt,
     case when study_reason_cd in ('09','10') then '12'
     else study_reason_cd
     end study_reason_cd
from student_course_attempt sca 
where  sca.person_id = p_person_id
and sca.study_reason_cd is not null
and sca.course_attempt_status not in ('LAPSED','DISCONTIN') 
and sca.course_cd <> 'LRNSUPP' 
and sca.commencement_dt = (select max(sca2.commencement_dt) 
                           from student_course_attempt sca2
                           where sca2.person_id = sca.person_id
                           and   sca2.study_reason_cd is not null
                           and   sca2.course_attempt_status not in ('LAPSED','DISCONTIN')                              
                           and   sca2.course_cd <> 'LRNSUPP')
order by sca.person_id,commencement_dt desc,study_reason_cd asc;
stdyrsn_rec     stdyrsn%rowtype;

CURSOR ATS(p_person_id number, p_atr_sequence_number number, p_admission_test_type varchar2) IS
select * from admission_test_subscore ats
where ats.person_id = p_person_id
and   ats.atr_sequence_number = p_atr_sequence_number
and   ats.admission_test_type = p_admission_test_type;
ats_rec     ats%rowtype;

CURSOR DISA(p_person_id number) IS
select 'DISABLED' from person_disability pd
where pd.person_id = p_person_id
and   pd.disability_type <> 'NONE' 
and   pd.end_dt is null;
disa_rec    disa%rowtype;

CURSOR PSHE(p_person_id number) IS
select * from person_statistics ps
where ps.person_id = p_person_id
and   ps.start_dt = (select max(ps2.start_dt) from person_statistics ps2
                     where ps2.person_id = ps.person_id
                     and   ps2.end_dt is null);
pshe_rec     pshe%rowtype;

CURSOR PSVET(p_person_id number) IS
select * from person_statistics_vet ps
where ps.person_id = p_person_id
and   ps.start_dt = (select max(ps2.start_dt) from person_statistics_vet ps2
                     where ps2.person_id = ps.person_id
                     and   ps2.end_dt is null);
psvet_rec     psvet%rowtype;

CURSOR STUDISAB(p_person_id number) IS
select case 
       when a.ci >0 then 'Y' else 'N' 
       end Disability from (

select count(contact_ind) ci
from  person_disability pd where end_dt is null 
and pd.disability_type <>'NONE'
and pd.person_id=p_person_id
and contact_ind='Y'
)a;
studisab_rec studisab%rowtype;

CURSOR STUDISABTYPE(p_person_id number) IS
SELECT  '1.2'   RANK, NULL LINETYPE, NULL    H107, NULL    H108, NULL    H109,
        'END'   "END"
FROM DUAL WHERE 1=2
UNION        
/*
11          HEARING/DEAF UPDATE               
12          PHYSICAL                          
13          INTELLECTUAL                      
14          LEARNING                          
15          MENTAL ILLNESS                    
16          ACQUIRED BRAIN IMPAIRMENT         
17          VISION                            
18          MEDICAL CONDITION                 
19          OTHER                             
20          NEUROLOGICAL CONDITION            
99          UNSPECIFIED                       
ACQ BRAIN   ACQUIRED BRAIN IMPAIRMENT         
HEARING     HEARING/DEAF                      
INTELLECT   INTELLECTUAL                      
LEARNING    LEARNING                          
MEDICAL     MEDICAL CONDITION                 
MENTAL      MENTAL ILLNESS                    
 MOBILITY    MOBILITY                          
NONE        STUDENT HAS NO DISABILITY VET & HE
OTHER       OTHER                             
PHYSICAL    PHYSICAL                          
UNSPEC      UNSPECIFIED                       
VISION      VISION                                
*/
select '1.2',                     --RANK
    'STUDISABTYPE',               --LINETYPE        
    case 
        when pd.disability_type in ('11','HEARING')                 then '$HEAR'
        when pd.disability_type in ('12','PHYSICAL')                then 'PHYS'
        when pd.disability_type in ('13','INTELLECT')               then 'BRAIN'
        when pd.disability_type in ('14','LEARNING')                then '$LEARN'
        when pd.disability_type in ('15','MENTAL')                  then 'MEILL'
        when pd.disability_type in ('16','ACQ BRAIN')               then 'ABI'
        when pd.disability_type in ('17','VISION')                  then '$VISN'
        when pd.disability_type in ('18','MEDICAL')                 then '$MDCL'
        when pd.disability_type in ('19','OTHER')                   then '$OTH'
        when pd.disability_type in ('20')                           then 'NEUR'
        when pd.disability_type in ('99','UNSPEC')                  then 'UNSPC'
        when pd.disability_type in ('MOBILITY')                     then '$MBLTY'
        else 'UNSPC'
    end case,
    null,
    'FALSE',
    'END'
    from person_disability pd
    where pd.person_id = p_person_id
    and   pd.disability_type <> 'NONE'
    and   pd.end_dt is null;
studisabtype_rec        studisabtype%rowtype;

CURSOR PHHWM(p_person_id number) IS
-- Home Ph, Work Ph and Mobile Ph
select * from person_addr pa
where pa.person_id = p_person_id
and   pa.addr_type in ('POSTAL','OS-POSTAL','CEN-POSTAL')
and  (pa.end_dt > sysdate or pa.end_dt is null)
and   pa.start_dt = (select max(pa1.start_dt) from person_addr pa1
                    where pa1.person_id = pa.person_id
                    and   pa1.addr_type in ('POSTAL','OS-POSTAL','CEN-POSTAL')
                    and  (pa1.end_dt > sysdate or pa1.end_dt is null));
phhwm_rec       phhwm%rowtype;

CURSOR PHFAX(p_person_id number) IS
-- Fax
select * from person_addr pa
where pa.person_id = p_person_id
and   pa.addr_type in ('HOME','CEN-HOME')
and  (pa.end_dt > sysdate or pa.end_dt is null)
and   pa.start_dt = (select max(pa1.start_dt) from person_addr pa1
                    where pa1.person_id = pa.person_id
                    and   pa1.addr_type in ('HOME','CEN-HOME')
                    and  (pa1.end_dt > sysdate or pa1.end_dt is null));
phfax_rec       phfax%rowtype;

CURSOR PHEMG(p_person_id number) IS
-- Emergency Contact
select phone_1,phone_2,phone_3,
replace(replace(translate(other_details,chr(10)||chr(13),' '),chr(32),null),'"',' ') other_details,
addr_type
from person_addr pa
where pa.person_id = p_person_id
and   pa.addr_type in ('HOME','CEN-HOME','OS-HOME')
and  (pa.end_dt > sysdate or pa.end_dt is null)
and   pa.start_dt = (select max(pa1.start_dt) from person_addr pa1
                    where pa1.person_id = pa.person_id
                    and   pa1.addr_type in ('HOME','CEN-HOME','OS-HOME')
                    and  (pa1.end_dt > sysdate or pa1.end_dt is null));
phemg_rec       phemg%rowtype;

-- Employer Contact

CURSOR APID(p_person_id number) IS
select * from alternate_person_id api 
where api.pe_person_id = p_person_id
and api.person_id_type in ('SATAC','TCI','CENTRALIAN','ACI','STUDYLINK','OBSOLETE','OSSI','STAFF','UAC','C-LINK-CRN','OUA','COT','BIITE','JOB-SEEK');
apid_rec        apid%rowtype;

--Person USI

CURSOR USI(p_person_id number) IS
select pusi.person_usi,pusi.verification_dt from person_usi pusi
where pusi.exemption_dt is null 
and   pusi.verification_dt is not null 
and   pusi.person_id=p_person_id;
usi_rec       usi%rowtype;


/* Deprecated by Dennis 27 Sept 2022
CURSOR ADDR(p_person_id number,t_addr_type varchar) IS
/*
POSTAL      POSTAL ADDRESS                      297035
HOME        HOME ADDRESS                        250702
OS-HOME     OVERSEAS HOME ADDRESS               15167 
OS-POSTAL   OVERSEAS POSTAL ADDRESS             12078 
SEMESTER    SEMESTER ADDRESS                    49786 
EMPLOYER    EMPLOYER ADDRESS                    38539 
SPONSOR     SPONSORSHIP ADDRESS                 3852  
APP-AGENT   APPRENTICE AGENT                    260   
SCHOOL-APP  SCHOOL BASED APPRENTICE             451   

select a.addr_type1,
       a.addr addr_type,
       ----max(a.start_dt) start_dt,
       a.start_dt,
       a.end_dt,
       a.addr_line_1,
       a.addr_line_2,
       a.addr_line_3,
       a.addr_line_4,
       a.addr_line_5,
       a.os_code,
       a.aust_postcode
from
(select pa.addr_type addr_Type1,
  case 
      when cdu_t1_is_intl(p_person_id) ='Y' then
            case pa.addr_type
                when 'POSTAL'        then 'C'
                when 'OS-POSTAL'     then 'C'
                when 'HOME'          then '$T'
                when 'OS-HOME'       then 'P'
                when 'SEMESTER'      then '$T'
                when 'EMPLOYER'      then 'EP'
                when 'SPONSOR'       then 'NA'
                when 'APP-AGENT'     then 'NA'
                when 'SCHOOL-APP'    then 'NA'
            end
      else 
            case pa.addr_type
                when 'POSTAL'        then 'C'
                when 'OS-POSTAL'     then 'C'
                when 'HOME'          then 'P'
                when 'OS-HOME'       then 'P'
                when 'SEMESTER'      then '$T'
                when 'EMPLOYER'      then 'EP'
                when 'SPONSOR'       then 'NA'
                when 'APP-AGENT'     then 'NA'
                when 'SCHOOL-APP'    then 'NA'
      end 
  end 
 addr,pa.start_dt,pa.end_dt,pa.addr_line_1,pa.addr_line_2,pa.addr_line_3,pa.addr_line_4,pa.addr_line_5,pa.os_code,pa.aust_postcode
 from person_addr pa
 where pa.person_id =p_person_id
 and   pa.addr_type in ('HOME','OS-HOME','POSTAL','OS-POSTAL','SEMESTER','EMPLOYER','SPONSOR','APP-AGENT','SCHOOL-APP')
 and  (pa.end_dt > sysdate or pa.end_dt is null)  --<-- active only
 and   pa.start_dt = (select max(pa1.start_dt) from person_addr pa1  --<--latest
                      where pa1.person_id = pa.person_id
                      and   pa1.addr_type = pa.addr_type
                      and  (pa1.end_dt > sysdate or pa1.end_dt is null))
)a 
where a.addr =t_addr_type
order by 1,2 desc
fetch first row only; 
*/

--International Address
CURSOR ADDR_INTL_HIST (p_person_id number) IS
select  case when pa.addr_type  in ('POSTAL','OS-POSTAL','CEN-POSTAL') then '1' 
             when pa.addr_type  in ('HOME','SEMESTER') then '2'
             when pa.addr_type in  ('OS-HOME','CEN-HOME') then '3'
             when pa.addr_type = 'EMPLOYER' then '4'
             when pa.addr_type = 'SPONSOR'  then '5'
             when pa.addr_type = 'APP-AGENT' then '6'
             else '7'
        end rank,
       pa.person_id,
       pa.addr_type,
       cdu_t1_is_intl(pa.person_id) intl,
       case cdu_t1_is_intl(pa.person_id)
          when 'Y' then  
             case pa.addr_type
              when 'OS-HOME'       then 'P'
              when 'CEN-HOME'      then 'P'
              when 'POSTAL'        then 'C'
              when 'OS-POSTAL'     then 'C'
              when 'CEN-POSTAL'    then 'C'
              when 'HOME'          then '$T'
              when 'SEMESTER'      then '$T'
              when 'EMPLOYER'      then 'EP'
              when 'SPONSOR'       then 'NA'
              when 'APP-AGENT'     then 'NA'
              when 'SCHOOL-APP'    then 'NA'
             end
       end  t1_addr_new_code, 
       pa.start_dt,
       pa.end_dt,
       substr(pa.addr_line_1,1,50) addr_line_1,
       pa.addr_line_2,
       pa.addr_line_3,
       pa.addr_line_4,
       pa.addr_line_5,
       pa.os_code,
       pa.aust_postcode
from person_addr pa 
where pa.addr_type in ('HOME','OS-HOME','POSTAL','OS-POSTAL','SEMESTER','EMPLOYER','SPONSOR','APP-AGENT','SCHOOL-APP')
and  pa.person_id = p_person_id
order by rank,start_dt desc;
addr_rec       addr_intl_hist%rowtype;

CURSOR ADDR_INTL (p_person_id number) IS
select  case when pa.addr_type  in ('POSTAL','OS-POSTAL','CEN-POSTAL') then '1' 
             when pa.addr_type  in ('HOME','SEMESTER') then '2'
             when pa.addr_type in  ('OS-HOME','CEN-HOME') then '3'
             when pa.addr_type = 'EMPLOYER' then '4'
             when pa.addr_type = 'SPONSOR'  then '5'
             when pa.addr_type = 'APP-AGENT' then '6'
             else '7'
        end rank,
       pa.person_id,
       pa.addr_type,
       cdu_t1_is_intl(pa.person_id) intl,
       case cdu_t1_is_intl(pa.person_id)
          when 'Y' then  
             case pa.addr_type
              when 'OS-HOME'       then 'P'
              when 'CEN-HOME'      then 'P'
              when 'POSTAL'        then 'C'
              when 'OS-POSTAL'     then 'C'
              when 'CEN-POSTAL'    then 'C'
              when 'HOME'          then '$T'
              when 'SEMESTER'      then '$T'
              when 'EMPLOYER'      then 'EP'
              when 'SPONSOR'       then 'NA'
              when 'APP-AGENT'     then 'NA'
              when 'SCHOOL-APP'    then 'NA'
             end
       end  t1_addr_new_code, 
       pa.start_dt,
       pa.end_dt,
       substr(pa.addr_line_1,1,50) addr_line_1,
       pa.addr_line_2,
       pa.addr_line_3,
       pa.addr_line_4,
       pa.addr_line_5,
       pa.os_code,
       pa.aust_postcode
from person_addr pa 
where pa.addr_type in ('HOME','OS-HOME','POSTAL','OS-POSTAL','SEMESTER','EMPLOYER','SPONSOR','APP-AGENT','SCHOOL-APP')
and  pa.person_id = p_person_id
order by rank,start_dt desc;

addr_rec       addr_intl%rowtype;

--Non International Addresses

CURSOR ADDR_LOC_HIST (p_person_id number) IS
select case when pa.addr_type  in ('POSTAL','OS-POSTAL','CEN-POSTAL') then '1' 
             when pa.addr_type  in ('HOME','OS-HOME','CEN-HOME') then '2'
             when pa.addr_type = 'SEMESTER' then '3'
             when pa.addr_type = 'EMPLOYER' then '4'
             when pa.addr_type = 'SPONSOR'  then '5'
             when pa.addr_type = 'APP-AGENT' then '6'
             else '7'
        end rank,
       pa.person_id,
       pa.addr_type,
      case pa.addr_type
          when 'CEN-POSTAL'    then 'CP'
          when 'CEN-HOME'      then 'CH'
          when 'POSTAL'        then 'PO'
          when 'OS-POSTAL'     then 'OP'
          when 'HOME'          then 'H'
          when 'OS-HOME'       then 'OH'
          when 'SEMESTER'      then 'S'
          when 'EMPLOYER'      then 'EP'
          when 'SPONSOR'       then 'NA'
          when 'APP-AGENT'     then 'NA'
          when 'SCHOOL-APP'    then 'NA'
       end    t1_addr_old_code,
       pa.start_dt,
       pa.end_dt,
       substr(pa.addr_line_1,1,50) addr_line_1,
       pa.addr_line_2,
       pa.addr_line_3,
       pa.addr_line_4,
       pa.addr_line_5,
       pa.os_code,
       pa.aust_postcode
from person_addr pa 
where pa.addr_type in ('HOME','OS-HOME','POSTAL','OS-POSTAL','SEMESTER','EMPLOYER','SPONSOR','APP-AGENT','SCHOOL-APP')
and  pa.person_id = p_person_id
order by t1_addr_old_code,start_dt desc;

addr_rec       addr_loc_hist%rowtype;

CURSOR ADDR_LOC (p_person_id number) IS
select case when pa.addr_type  in ('POSTAL','OS-POSTAL','CEN-POSTAL') then '1' 
             when pa.addr_type  in ('HOME','OS-HOME','CEN-HOME') then '2'
             when pa.addr_type = 'SEMESTER' then '3'
             when pa.addr_type = 'EMPLOYER' then '4'
             when pa.addr_type = 'SPONSOR'  then '5'
             when pa.addr_type = 'APP-AGENT' then '6'
             else '7'
        end rank,
      pa.person_id,
       pa.addr_type,
      case pa.addr_type
          when 'CEN-POSTAL'    then 'CP'
          when 'CEN-HOME'      then 'CH'
          when 'POSTAL'        then 'PO'
          when 'OS-POSTAL'     then 'OP'
          when 'HOME'          then 'H'
          when 'OS-HOME'       then 'OH'
          when 'SEMESTER'      then 'S'
          when 'EMPLOYER'      then 'EP'
          when 'SPONSOR'       then 'NA'
          when 'APP-AGENT'     then 'NA'
          when 'SCHOOL-APP'    then 'NA'
       end    t1_addr_old_code,
       pa.start_dt,
       pa.end_dt,
       substr(pa.addr_line_1,1,50) addr_line_1,
       pa.addr_line_2,
       pa.addr_line_3,
       pa.addr_line_4,
       pa.addr_line_5,
       pa.os_code,
       pa.aust_postcode
from person_addr pa 
where pa.addr_type in ('HOME','OS-HOME','POSTAL','OS-POSTAL','SEMESTER','EMPLOYER','SPONSOR','APP-AGENT','SCHOOL-APP')
and  pa.person_id = p_person_id
order by rank,start_dt desc;

addr_rec       addr_loc%rowtype;

CURSOR ALIAS(p_person_id number) IS
select distinct person_id,to_char(start_dt,'DD/MM/YYYY')start_dt,end_dt,surname,given_names,title,alias_comment,update_on from person_alias 
where person_id = p_person_id;
alias_rec       alias%rowtype;

CURSOR NOTE(p_person_id number) IS
select case 
           when pn.pe_note_type ='STUD ADMIN' then 'ADMIN'
           when pn.pe_note_type='AUTH GEN'   then 'AUTH'
           when pn.pe_note_type='GENERAL'   then 'GEN'
           else pn.pe_note_type
        end pe_note_type,
        n.note_text,
        least(pn.update_on,n.update_on)  Eff 
from person_note pn, note n
where pn.person_id = p_person_id
and   pn.reference_number = n.reference_number
--and   pn.pe_note_type in ('GENERAL','AUTH GEN','STUD ADMIN','ARC','FACULTY','COVIDVAX-2','COVIDVAX-1','COVIDVAX-E','VET-COVID')
 and pn.pe_note_type in ('GENERAL','AUTH GEN','STUD ADMIN','ARC')
 and   n.note_text is not null;
note_rec        note%rowtype;

CURSOR CITZ(p_person_id number) IS
--select ps.person_id, ps.start_dt, ps.end_dt,ps.citizenship_cd, ps.perm_resident_cd, ps.yr_arrival 
--from person_statistics ps
--where ps.person_id = p_person_id
--and  (ps.citizenship_cd is not null or ps.perm_resident_cd is not null)
----group by ps.person_id,ps.citizenship_cd,ps.perm_resident_cd,ps.yr_arrival
----and ps.start_dt =(select max(ps1.start_dt) from person_statistics ps1 where ps1.person_id=ps.person_id)
--order by ps.person_id,ps.start_dt; 
select a.person_id,a.start_dt,a.citizenship_cd,a.perm_resident_cd,
Case when a.yr_arrival between '1900'and '2027' then a.yr_arrival
                               when a.yr_arrival = 'A998' then '9998'
                               when a.yr_arrival = 'A999' then '9999'
                               when a.yr_arrival = '9999' then '9999'
                               when a.yr_arrival = '9998' then '9998'
                               when a.yr_arrival = '3082' then '2000'
                               when a.yr_arrival = '3012' then '2012'
                               when a.yr_arrival = '7009' then '2015'
                               when a.yr_arrival = '3429' then '2000'
                               else null
 end  yr_arrival
from 
(
select distinct ps.person_id,min(ps.start_dt) start_dt,ps.citizenship_cd, ps.perm_resident_cd, ps.yr_arrival 
from person_statistics ps
where ps.person_id = p_person_id
and (ps.citizenship_cd is not null or ps.perm_resident_cd is not null)
group by ps.person_id,ps.citizenship_cd,ps.perm_resident_cd,ps.yr_arrival)a
order by a.person_id,a.start_dt desc
fetch first 1 row only;

citz_rec        citz%rowtype;

--CURSOR CITZ1(p_person_id number) IS 
--select a.person_id,a.start_dt,a.citizenship_cd,a.perm_resident_cd,a.yr_arrival from 
--(
--select ps.person_id,min(ps.start_dt) start_dt,ps.citizenship_cd, ps.perm_resident_cd, ps.yr_arrival 
--from person_statistics ps
--where ps.person_id =p_person_id
--and  (ps.citizenship_cd is not null or ps.perm_resident_cd is not null)
--group by ps.person_id,ps.citizenship_cd,ps.perm_resident_cd,ps.yr_arrival)a
--order by a.person_id,a.start_dt desc
--fetch first 1 row only;
--citz1_rec        citz1%rowtype;

CURSOR EDUC(p_person_id number) IS
select 
tertiary_edu_lvl_comp,
institution_cd,
institution_name,
enrolment_first_yr,
enrolment_latest_yr,
course_cd,
course_title,
field_of_study,
equiv_full_time_yrs_enr,
tertiary_edu_lvl_qual,
qualification,
state_cd,
country_cd,
notes,
assessment_comments,
verification_status
from tertiary_education t
where t.person_id = p_person_id
order by enrolment_first_yr desc;
educ_rec        educ%rowtype;

CURSOR SECED(p_person_id number) IS
select 
person_id,
sequence_number,
state_cd,
result_obtained_yr,
score,
aus_scndry_edu_ass_type,
candidate_number,
case when secondary_school_cd is null and state_Cd in ('WA','SA','NT') then state_cd||' '||'SCHOOLS'
     when secondary_school_cd is null and state_Cd in ('VIC','TAS','QLD','NSW','TAS','ACT') then state_Cd||' '||'SCHOOL'
     else secondary_school_cd
     end secondary_school_cd,
verification_status,
  case 
     when secondary_school_name is null and state_Cd in ('VIC','TAS','QLD','NSW','ACT','WA','SA') then 'ALL'||' '||state_cd||' '||'SCHOOLS'
     when secondary_School_name is null and state_cd in ('NT') then 'ALL NORTHERN TERRITORY SCHOOLS'
     else
     secondary_school_name
     end secondary_school_name,
completed_ind,
assessment_comments
from aus_scndry_education
where person_id = p_person_id
and score <> 0
order by 1,2 desc;  --48624
seced_rec       seced%rowtype;

CURSOR OSED(p_person_id number) IS
select 
result_obtained_yr,
--os_scndry_edu_qualification,
result,
school_name,
country_cd,
--comments,
substr(replace(translate(comments,chr(10)||chr(13),' '),chr(34),''''),1,40) comments,
verification_status,
completed_ind,
qualification,
substr(replace(translate(assessment_comments,chr(10)||chr(13),' '),chr(34),''''),1,40) assessment_comments
from os_scndry_education
where person_id = p_person_id
order by person_id,sequence_number desc;
osed_rec        osed%rowtype;

CURSOR PRED(p_person_id number) IS
select 
prior_education_type
from  person_prior_education
where person_id = p_person_id
order by person_id,update_on desc;
pred_rec        pred%rowtype;

CURSOR CHESSN(p_person_id number) is 
select pc.chessn chessn,
       pc.chessn_recorded_dt chessndate,
       pc.s_chessn_crtn_mthd method
from person_chessn pc
where pc.person_id=p_person_id
and pc.s_chessn_status in ('ACTIVE','PROVISIONL');
chessn_rec        chessn%rowtype;

CURSOR SN(p_person_id number) IS
select  pe.person_id,
        n.note_text 
from    person_note pe,
        note n 
where   pe.person_id = p_person_id
and     pe.reference_number=n.reference_number
and     pe_note_type='CASE_SNAME' ;
sn_rec      sn%rowtype;

CURSOR GN(p_person_id number) IS
select pe.person_id,
       n.note_text 
from   person_note pe,
       note n 
where pe.person_id=p_person_id
and   pe.reference_number=n.reference_number 
and   pe_note_type='CASE_GNAME' ;
gn_rec      gn%rowtype;

CURSOR AI(p_person_id number) IS
select * from admission_international ai
where ai.person_id = p_person_id
and   ai.primary_nationality_cd is not null
order by ai.admission_appl_number desc;
ai_rec      ai%rowtype;

--CURSOR MN(p_person_id number) IS
--select p.person_id, p.given_names, p.preferred_given_name, p.surname, null "Translates to... "
--
--,p.preferred_given_name  FIRST_NAME
--,replace(p.given_names,p.preferred_given_name,'') MIDDLE_NAME
--,p.surname  SURNAME
--from person p 
--where 1=1 --p.preferred_given_name is not null 
--and p.person_id=
-----
--and p.preferred_given_name not like 'MERGE%'
--and p.preferred_given_name not like 'DUPLIC%'
--and surname not like 'ACCOUNT%'
-----
--and cdu_apex.cdu.get_index_value(p.given_names,1,' ') = cdu_apex.cdu.get_index_value(preferred_given_name,1,' ') -- first word matches in preferred_name and given_names
--and instr(p.given_names,trim(p.preferred_given_name)||' ') > 0 
--and LENGTH(trim(p.given_names)) <> length(trim(p.preferred_given_name))


--IMPORTANT----------------------------------------------------------------------------------------------------
out_file_no               number        := 1;                      --<--- The starting file number
out_file_size             number        := 20000;                  --<--- the number of records per file
out_directory             varchar2(100) := 'CDU_EMU_LOG_DIR_STST';
out_filename_1            varchar2(100) := 'student_';      --<--- Requires setting for each new template
out_filename_2            varchar2(100) := 'student_';
err_filename              varchar2(100) := 'errors.txt';           --<--- Requires setting for each new template
---------------------------------------------------------------------------------------------------------------

--out_file_1                utl_file.file_type;
out_file_2                  utl_file.file_type;
err_file                    utl_file.file_type;
stu_pre_null                varchar2(1000) := null;
stu_post_null               varchar2(4000) := null;
studisab_pre_null           varchar2(4000) := null;
studisab_post_null          varchar2(4000) := null;
studisabtype_pre_null       varchar2(2000) := null;
studisabtype_post_null      varchar2(2000) := null;
stuemail_pre_null           varchar2(2000) := null;
stuemail_post_null          varchar2(2000) := null;
stuphone_pre_null           varchar2(2000) := null;
stuphone_post_null          varchar2(2000) := null;
stuothcntct_pre_null        varchar2(2000) := null;
stuothcntct_post_null       varchar2(2000) := null;
stualtid_pre_null           varchar2(2000) := null;
stualtid_post_null          varchar2(2000) := null;
stuguardian_pre_null        varchar2(2000) := null;
stuguardian_post_null       varchar2(2000) := null;
stuaddr_pre_null            varchar2(2000) := null;
stuaddr_post_null           varchar2(2000) := null;
stunmhst_pre_null           varchar2(2000) := null;
stunmhst_post_null          varchar2(2000) := null;
stuothscr_pre_null          varchar2(2000) := null;
stuothscr_post_null         varchar2(2000) := null;
stuhlp_pre_null             varchar2(2000) := null;
stuhlp_post_null            varchar2(2000) := null;
stucomment_pre_null         varchar2(2000) := null;
stucomment_post_null        varchar2(2000) := null;
stucitizen_pre_null         varchar2(2000) := null;
stucitizen_post_null        varchar2(2000) := null;
stuedubgdet_pre_null        varchar2(2000) := null;
stuedubgdet_post_null       varchar2(2000) := null;
stuprevinst_pre_null        varchar2(2000) := null;
stuprevinst_post_null       varchar2(2000) := null;

x                           number := 0;
t_idx                       number := 0;
t_intl                      varchar2(1);
t_addr_type                 varchar2(10); 
t_prnt_grdn_hea_cd          varchar2(10);
t_citizenship_cd            varchar2(10);
t_perm_resident_cd          varchar2(10);
t_addr_new_code             varchar2(10);
t_addr_old_code             varchar2(10);
t_prefadd_val               varchar2(10);
t_prefadd_loc_val           varchar2(10);
t_prefadd_flag              varchar2(1);
t_prefadd_loc_flag          varchar2(1);
count_drv1_total            number := 0;
count_drv1_export           number := 0;
count_drv1_error            number := 0;

count_stu_error             number := 0;
count_stu_export            number := 0;
count_studisab_error        number := 0;
count_studisab_export       number := 0;
count_studisabtype_error    number := 0;
count_studisabtype_export   number := 0;
count_stuemail_error        number := 0;
count_stuemail_export       number := 0;
count_stuphone_error        number := 0;
count_stuphone_export       number := 0;
count_stuothcntct_error     number := 0;
count_stuothcntct_export    number := 0;
count_stualtid_error        number := 0;
count_stualtid_export       number := 0;
count_stuguardian_error     number := 0;
count_stuguardian_export    number := 0;
count_stuaddr_error         number := 0;
count_stuaddr_export        number := 0;
count_stunmhst_error        number := 0;
count_stunmhst_export       number := 0;
count_stuothscr_error       number := 0;
count_stuothscr_export      number := 0;
count_stuhlp_error          number := 0;
count_stuhlp_export         number := 0;
count_stucomment_error      number := 0;
count_stucomment_export     number := 0;
count_stucitizen_error      number := 0;
count_stucitizen_export     number := 0;
count_stuedubgdet_error     number := 0;
count_stuedubgdet_export    number := 0;
count_stuprevinst_error     number := 0;
count_stuprevinst_export    number := 0;
run_mode                    varchar2(10) := 'FULL';


---Transformation temporary variables---
--Person having surname and given names greater than callista field size
T_H004                      varchar2(50);
T_H005                      varchar2(50);
T_H006                      varchar2(50);
T_H009                      varchar2(50);


T_H021                      varchar2(20);
T_H022                      varchar2(20);
T_H023                      varchar2(20);
---CHESSN
T_H037                      varchar2(20);
T_H038                      varchar2(20);
T_H039                      varchar2(20);
---CHESSN
T_H041                      varchar2(20);
T_H042                      varchar2(20);

T_H043                      varchar2(20);
T_H044                      varchar2(20);
T_H045                      varchar2(20);
T_H046                      varchar2(20);
T_H047                      varchar2(20);
T_H048                      varchar2(20);
T_H049                      varchar2(20);
T_H050                      varchar2(20);
T_H051                      varchar2(20);
T_H052                      varchar2(20);
T_H053                      varchar2(20);

T_H055                      varchar2(20);
T_H057                      varchar2(50);
T_H059                      varchar2(20);
T_H060                      varchar2(20);

T_H061                      varchar2(20);
T_H063                      varchar2(20);
T_H064                      varchar2(20);
T_H066                      varchar2(20);
T_H070                      varchar2(20);
T_H071                      varchar2(20);
T_H072                      varchar2(20);
T_H073                      varchar2(20);
T_H081                      varchar2(20);

---Transformation temporary variables---
BEGIN
    DBMS_OUTPUT.ENABLE (buffer_size => NULL);
    dbms_output.put_line('Student Package');
    dbms_output.put_line('Starting run:'||to_char(sysdate,'DD-Mon-YYYY HH24:MI:SS'));
    dbms_output.put_line('Batch size:  '||out_file_size);

    ----------------------------------------------------------------------------------------------
    --- Derive pre and post null padding for each record type 
    --- For STU Lines columns 82 thru to 905 are not used 
    for i in 82 .. 905  loop   stu_post_null := stu_post_null || ',';                    end loop;

    --- For STUDISAB Lines columns 3 thru to 101 and 104 thru to 905 are not used
    for i in   3 .. 101 loop   studisab_pre_null  := studisab_pre_null || ',';   end loop;
    for i in 104 .. 905 loop   studisab_post_null := studisab_post_null || ',';  end loop;

    --- For STUDISABTYPE Lines columns 3 thru to 106 and 110 thru to 905 are not used
    for i in   3 .. 106 loop   studisabtype_pre_null  := studisabtype_pre_null || ',';   end loop;
    for i in 110 .. 905 loop   studisabtype_post_null := studisabtype_post_null || ',';  end loop;

    --- For STUEMAIL Lines columns 3 thru to 127 and 134 thru to 905 are not used 
    for i in   3 .. 127 loop   stuemail_pre_null  := stuemail_pre_null  || ',';          end loop;
    for i in 134 .. 905 loop   stuemail_post_null := stuemail_post_null || ',';          end loop;

    --- For STUPHONE Lines columns 3 thru to 133 and 142 thru to 905 are not used 
    for i in   3 .. 133 loop   stuphone_pre_null  := stuphone_pre_null  || ',';          end loop;
    for i in 142 .. 905 loop   stuphone_post_null := stuphone_post_null || ',';          end loop;

    --- For STUOTHCNTCT Lines columns 3 thru to 155 and 171 thru to 905 are not used 
    for i in   3 .. 155 loop   stuothcntct_pre_null  := stuothcntct_pre_null  || ',';    end loop;
    for i in 171 .. 905 loop   stuothcntct_post_null := stuothcntct_post_null || ',';    end loop;

    --- For STUALTID Lines columns 3 thru to 141 and 149 thru to 905 are not used 
    for i in   3 .. 141 loop   stualtid_pre_null  := stualtid_pre_null  || ',';         end loop;
    for i in 149 .. 905 loop   stualtid_post_null := stualtid_post_null || ',';         end loop;

    --- For STUGUARDIAN Lines columns 3 thru to 170 and 175 thru to 905 are not used 
    for i in   3 .. 170 loop   stuguardian_pre_null  := stuguardian_pre_null  || ',';   end loop;
    for i in 175 .. 905 loop   stuguardian_post_null := stuguardian_post_null || ',';   end loop;

    --- For STUADDR Lines columns 3 thru to 109 and 128 thru to 905 are not used 
    for i in   3 .. 109 loop   stuaddr_pre_null  := stuaddr_pre_null  || ',';           end loop;
    for i in 128 .. 905 loop   stuaddr_post_null := stuaddr_post_null || ',';           end loop;

    --- For STUNMHST Lines columns 3 thru to 174 and 188 thru to 905 are not used 
    for i in   3 .. 174 loop   stunmhst_pre_null  := stunmhst_pre_null  || ',';         end loop;
    for i in 188 .. 905 loop   stunmhst_post_null := stunmhst_post_null || ',';         end loop;

    --- For STUOTHSCR Lines columns 3 thru to 148 and 156 thru to 905 are not used 
    for i in   3 .. 148 loop   stuothscr_pre_null  := stuothscr_pre_null  || ',';       end loop;
    for i in 156 .. 905 loop   stuothscr_post_null := stuothscr_post_null || ',';       end loop;

    --- For STUHLP Lines columns 3 thru to 531 and 537 thru to 905 are not used 
    for i in   3 .. 531 loop   stuhlp_pre_null  := stuhlp_pre_null  || ',';             end loop;
    for i in 537 .. 905 loop   stuhlp_post_null := stuhlp_post_null || ',';             end loop;

    --- For STUCOMMENT Lines columns 3 thru to 549 and 576 thru to 905 are not used 
    for i in   3 .. 549 loop   stucomment_pre_null  := stucomment_pre_null  || ',';     end loop;
    for i in 576 .. 905 loop   stucomment_post_null := stucomment_post_null || ',';     end loop;

    --- For STUCITIZEN Lines columns 3 thru to 536 and 550 thru to 905 are not used 
    for i in   3 .. 536 loop   stucitizen_pre_null  := stucitizen_pre_null  || ',';     end loop;
    for i in 550 .. 905 loop   stucitizen_post_null := stucitizen_post_null || ',';     end loop;

    --- For STUEDUBGDET Lines columns 3 thru to 208 and 341 thru to 905 are not used 
    for i in   3 .. 208 loop   stuedubgdet_pre_null  := stuedubgdet_pre_null  || ',';   end loop;
    for i in 341 .. 905 loop   stuedubgdet_post_null := stuedubgdet_post_null || ',';   end loop;

    --- For STUPREVINST Lines columns 3 thru to 494 and 532 thru to 905 are not used 
    for i in   3 .. 494 loop   stuprevinst_pre_null  := stuprevinst_pre_null  || ',';   end loop;
    for i in 532 .. 905 loop   stuprevinst_post_null := stuprevinst_post_null || ',';   end loop;

    ----------------------------------------------------------------------------------------------

    /*
    out_file_1 := utl_file.fopen(out_directory,out_filename_1||out_file_no||'.csv','W',32767); 
    utl_file.put_line(out_file_1,'"FORMAT STUDENT IMPORT , STANDARD 1.0"');
    */
    out_file_2 := utl_file.fopen(out_directory,out_filename_2||out_file_no||'.csv','W',32767);
    utl_file.put_line(out_file_2,'"FORMAT STUDENT IMPORT , STANDARD 1.0"');

    -- Determine Run Mode - Full or Debug based on Control table
--    begin
--        select 'DEBUG' into run_mode 
--        from cdu_t1_import_control ctrl
--        where ctrl.entity_type = 'STUDENT'
--        and   ctrl.logical_delete_dt is null
--        and   rownum < 2;
--    exception
--        when others then run_mode := 'FULL';
--    end;        

--  DEBUG SPIKE
--    run_mode := 'FULL';  -<--- use a spike to force it into FULL mode and ignore the students in the import control
--  DEBUG SPIKE

    dbms_output.put_line('Run Mode set to: '||run_mode);

    --- STEP 0. LBL LINE
    for drv1_rec in lbl
    loop
        /*
        utl_file.put_line(out_file_1,'"'||
        drv1_rec.RANK||'","'||
        drv1_rec.LINETYPE||'","'||
        drv1_rec.H003||'","'|| drv1_rec.H004||'","'|| drv1_rec.H005||'","'|| drv1_rec.H006||'","'|| drv1_rec.H007||'","'|| drv1_rec.H008||'","'|| drv1_rec.H009||'","'||
        drv1_rec.H010||'","'|| drv1_rec.H011||'","'|| drv1_rec.H012||'","'|| drv1_rec.H013||'","'|| drv1_rec.H014||'","'|| drv1_rec.H015||'","'|| drv1_rec.H016||'","'||
        drv1_rec.H017||'","'|| drv1_rec.H018||'","'|| drv1_rec.H019||'","'|| drv1_rec.H020||'","'|| drv1_rec.H021||'","'|| drv1_rec.H022||'","'|| drv1_rec.H023||'","'|| 
        drv1_rec.H024||'","'|| drv1_rec.H025||'","'|| drv1_rec.H026||'","'|| drv1_rec.H027||'","'|| drv1_rec.H028||'","'|| drv1_rec.H029||'","'|| drv1_rec.H030||'","'||
        drv1_rec.H031||'","'|| drv1_rec.H032||'","'|| drv1_rec.H033||'","'|| drv1_rec.H034||'","'|| drv1_rec.H035||'","'|| drv1_rec.H036||'","'|| drv1_rec.H037||'","'||
        drv1_rec.H038||'","'|| drv1_rec.H039||'","'|| drv1_rec.H040||'","'|| drv1_rec.H041||'","'|| drv1_rec.H042||'","'|| drv1_rec.H043||'","'|| drv1_rec.H044||'","'||
        drv1_rec.H045||'","'|| drv1_rec.H046||'","'|| drv1_rec.H047||'","'|| drv1_rec.H048||'","'|| drv1_rec.H049||'","'|| drv1_rec.H050||'","'|| drv1_rec.H051||'","'||
        drv1_rec.H052||'","'|| drv1_rec.H053||'","'|| drv1_rec.H054||'","'|| drv1_rec.H055||'","'|| drv1_rec.H056||'","'|| drv1_rec.H057||'","'|| drv1_rec.H058||'","'||        
        drv1_rec.H059||'","'|| drv1_rec.H060||'","'|| drv1_rec.H061||'","'|| drv1_rec.H062||'","'|| drv1_rec.H063||'","'|| drv1_rec.H064||'","'|| drv1_rec.H065||'","'||
        drv1_rec.H066||'","'|| drv1_rec.H067||'","'|| drv1_rec.H068||'","'|| drv1_rec.H069||'","'|| drv1_rec.H070||'","'|| drv1_rec.H071||'","'|| drv1_rec.H072||'","'||
        drv1_rec.H073||'","'|| drv1_rec.H074||'","'|| drv1_rec.H075||'","'|| drv1_rec.H076||'","'|| drv1_rec.H077||'","'|| drv1_rec.H078||'","'|| drv1_rec.H079||'","'||
        drv1_rec.H080||'","'|| drv1_rec.H081||'","'|| drv1_rec.H082||'","'|| drv1_rec.H083||'","'|| drv1_rec.H084||'","'|| drv1_rec.H085||'","'|| drv1_rec.H086||'","'||
        drv1_rec.H087||'","'|| drv1_rec.H088||'","'|| drv1_rec.H089||'","'|| drv1_rec.H090||'","'|| drv1_rec.H091||'","'|| drv1_rec.H092||'","'|| drv1_rec.H093||'","'||
        drv1_rec.H094||'","'|| drv1_rec.H095||'","'|| drv1_rec.H096||'","'|| drv1_rec.H097||'","'|| drv1_rec.H098||'","'|| drv1_rec.H099||'","'|| 

        drv1_rec.H100||'","'|| drv1_rec.H101||'","'|| drv1_rec.H102||'","'|| drv1_rec.H103||'","'|| drv1_rec.H104||'","'|| drv1_rec.H105||'","'|| drv1_rec.H106||'","'|| 
        drv1_rec.H107||'","'|| drv1_rec.H108||'","'|| drv1_rec.H109||'","'|| drv1_rec.H110||'","'|| drv1_rec.H111||'","'|| drv1_rec.H112||'","'|| drv1_rec.H113||'","'|| 
        drv1_rec.H114||'","'|| drv1_rec.H115||'","'|| drv1_rec.H116||'","'|| drv1_rec.H117||'","'|| drv1_rec.H118||'","'|| drv1_rec.H119||'","'|| drv1_rec.H120||'","'|| 
        drv1_rec.H121||'","'|| drv1_rec.H122||'","'|| drv1_rec.H123||'","'|| drv1_rec.H124||'","'|| drv1_rec.H125||'","'|| drv1_rec.H126||'","'|| drv1_rec.H127||'","'|| 
        drv1_rec.H128||'","'|| drv1_rec.H129||'","'|| drv1_rec.H130||'","'|| drv1_rec.H131||'","'|| drv1_rec.H132||'","'|| drv1_rec.H133||'","'|| drv1_rec.H134||'","'|| 
        drv1_rec.H135||'","'|| drv1_rec.H136||'","'|| drv1_rec.H137||'","'|| drv1_rec.H138||'","'|| drv1_rec.H139||'","'|| drv1_rec.H140||'","'|| drv1_rec.H141||'","'|| 
        drv1_rec.H142||'","'|| drv1_rec.H143||'","'|| drv1_rec.H144||'","'|| drv1_rec.H145||'","'|| drv1_rec.H146||'","'|| drv1_rec.H147||'","'|| drv1_rec.H148||'","'|| 
        drv1_rec.H149||'","'|| drv1_rec.H150||'","'|| drv1_rec.H151||'","'|| drv1_rec.H152||'","'|| drv1_rec.H153||'","'|| drv1_rec.H154||'","'|| drv1_rec.H155||'","'|| 
        drv1_rec.H156||'","'|| drv1_rec.H157||'","'|| drv1_rec.H158||'","'|| drv1_rec.H159||'","'|| drv1_rec.H160||'","'|| drv1_rec.H161||'","'|| drv1_rec.H162||'","'|| 
        drv1_rec.H163||'","'|| drv1_rec.H164||'","'|| drv1_rec.H165||'","'|| drv1_rec.H166||'","'|| drv1_rec.H167||'","'|| drv1_rec.H168||'","'|| drv1_rec.H169||'","'|| 
        drv1_rec.H170||'","'|| drv1_rec.H171||'","'|| drv1_rec.H172||'","'|| drv1_rec.H173||'","'|| drv1_rec.H174||'","'|| drv1_rec.H175||'","'|| drv1_rec.H176||'","'|| 
        drv1_rec.H177||'","'|| drv1_rec.H178||'","'|| drv1_rec.H179||'","'|| drv1_rec.H180||'","'|| drv1_rec.H181||'","'|| drv1_rec.H182||'","'|| drv1_rec.H183||'","'|| 
        drv1_rec.H184||'","'|| drv1_rec.H185||'","'|| drv1_rec.H186||'","'|| drv1_rec.H187||'","'|| drv1_rec.H188||'","'|| drv1_rec.H189||'","'|| drv1_rec.H190||'","'|| 
        drv1_rec.H191||'","'|| drv1_rec.H192||'","'|| drv1_rec.H193||'","'|| drv1_rec.H194||'","'|| drv1_rec.H195||'","'|| drv1_rec.H196||'","'|| drv1_rec.H197||'","'|| 
        drv1_rec.H198||'","'|| drv1_rec.H199||'","'|| drv1_rec.H200||'","'|| drv1_rec.H201||'","'|| drv1_rec.H202||'","'|| drv1_rec.H203||'","'|| drv1_rec.H204||'","'|| 
        drv1_rec.H205||'","'|| drv1_rec.H206||'","'|| drv1_rec.H207||'","'|| drv1_rec.H208||'","'|| drv1_rec.H209||'","'|| drv1_rec.H210||'","'|| drv1_rec.H211||'","'|| 
        drv1_rec.H212||'","'|| drv1_rec.H213||'","'|| drv1_rec.H214||'","'|| drv1_rec.H215||'","'|| drv1_rec.H216||'","'|| drv1_rec.H217||'","'|| drv1_rec.H218||'","'|| 
        drv1_rec.H219||'","'|| drv1_rec.H220||'","'|| drv1_rec.H221||'","'|| drv1_rec.H222||'","'|| drv1_rec.H223||'","'|| drv1_rec.H224||'","'|| drv1_rec.H225||'","'|| 
        drv1_rec.H226||'","'|| drv1_rec.H227||'","'|| drv1_rec.H228||'","'|| drv1_rec.H229||'","'|| drv1_rec.H230||'","'|| drv1_rec.H231||'","'|| drv1_rec.H232||'","'|| 
        drv1_rec.H233||'","'|| drv1_rec.H234||'","'|| drv1_rec.H235||'","'|| drv1_rec.H236||'","'|| drv1_rec.H237||'","'|| drv1_rec.H238||'","'|| drv1_rec.H239||'","'|| 
        drv1_rec.H240||'","'|| drv1_rec.H241||'","'|| drv1_rec.H242||'","'|| drv1_rec.H243||'","'|| drv1_rec.H244||'","'|| drv1_rec.H245||'","'|| drv1_rec.H246||'","'|| 
        drv1_rec.H247||'","'|| drv1_rec.H248||'","'|| drv1_rec.H249||'","'|| drv1_rec.H250||'","'|| drv1_rec.H251||'","'|| drv1_rec.H252||'","'|| drv1_rec.H253||'","'|| 
        drv1_rec.H254||'","'|| drv1_rec.H255||'","'|| drv1_rec.H256||'","'|| drv1_rec.H257||'","'|| drv1_rec.H258||'","'|| drv1_rec.H259||'","'|| drv1_rec.H260||'","'|| 
        drv1_rec.H261||'","'|| drv1_rec.H262||'","'|| drv1_rec.H263||'","'|| drv1_rec.H264||'","'|| drv1_rec.H265||'","'|| drv1_rec.H266||'","'|| drv1_rec.H267||'","'|| 
        drv1_rec.H268||'","'|| drv1_rec.H269||'","'|| drv1_rec.H270||'","'|| drv1_rec.H271||'","'|| drv1_rec.H272||'","'|| drv1_rec.H273||'","'|| drv1_rec.H274||'","'|| 
        drv1_rec.H275||'","'|| drv1_rec.H276||'","'|| drv1_rec.H277||'","'|| drv1_rec.H278||'","'|| drv1_rec.H279||'","'|| drv1_rec.H280||'","'|| drv1_rec.H281||'","'|| 
        drv1_rec.H282||'","'|| drv1_rec.H283||'","'|| drv1_rec.H284||'","'|| drv1_rec.H285||'","'|| drv1_rec.H286||'","'|| drv1_rec.H287||'","'|| drv1_rec.H288||'","'|| 
        drv1_rec.H289||'","'|| drv1_rec.H290||'","'|| drv1_rec.H291||'","'|| drv1_rec.H292||'","'|| drv1_rec.H293||'","'|| drv1_rec.H294||'","'|| drv1_rec.H295||'","'|| 
        drv1_rec.H296||'","'|| drv1_rec.H297||'","'|| drv1_rec.H298||'","'|| drv1_rec.H299||'","'||

        drv1_rec.H300||'","'|| drv1_rec.H301||'","'|| drv1_rec.H302||'","'|| drv1_rec.H303||'","'|| drv1_rec.H304||'","'|| drv1_rec.H305||'","'|| drv1_rec.H306||'","'|| 
        drv1_rec.H307||'","'|| drv1_rec.H308||'","'|| drv1_rec.H309||'","'|| drv1_rec.H310||'","'|| drv1_rec.H311||'","'|| drv1_rec.H312||'","'|| drv1_rec.H313||'","'|| 
        drv1_rec.H314||'","'|| drv1_rec.H315||'","'|| drv1_rec.H316||'","'|| drv1_rec.H317||'","'|| drv1_rec.H318||'","'|| drv1_rec.H319||'","'|| drv1_rec.H320||'","'|| 
        drv1_rec.H321||'","'|| drv1_rec.H322||'","'|| drv1_rec.H323||'","'|| drv1_rec.H324||'","'|| drv1_rec.H325||'","'|| drv1_rec.H326||'","'|| drv1_rec.H327||'","'|| 
        drv1_rec.H328||'","'|| drv1_rec.H329||'","'|| drv1_rec.H330||'","'|| drv1_rec.H331||'","'|| drv1_rec.H332||'","'|| drv1_rec.H333||'","'|| drv1_rec.H334||'","'|| 
        drv1_rec.H335||'","'|| drv1_rec.H336||'","'|| drv1_rec.H337||'","'|| drv1_rec.H338||'","'|| drv1_rec.H339||'","'|| drv1_rec.H340||'","'|| drv1_rec.H341||'","'|| 
        drv1_rec.H342||'","'|| drv1_rec.H343||'","'|| drv1_rec.H344||'","'|| drv1_rec.H345||'","'|| drv1_rec.H346||'","'|| drv1_rec.H347||'","'|| drv1_rec.H348||'","'|| 
        drv1_rec.H349||'","'|| drv1_rec.H350||'","'|| drv1_rec.H351||'","'|| drv1_rec.H352||'","'|| drv1_rec.H353||'","'|| drv1_rec.H354||'","'|| drv1_rec.H355||'","'|| 
        drv1_rec.H356||'","'|| drv1_rec.H357||'","'|| drv1_rec.H358||'","'|| drv1_rec.H359||'","'|| drv1_rec.H360||'","'|| drv1_rec.H361||'","'|| drv1_rec.H362||'","'|| 
        drv1_rec.H363||'","'|| drv1_rec.H364||'","'|| drv1_rec.H365||'","'|| drv1_rec.H366||'","'|| drv1_rec.H367||'","'|| drv1_rec.H368||'","'|| drv1_rec.H369||'","'|| 
        drv1_rec.H370||'","'|| drv1_rec.H371||'","'|| drv1_rec.H372||'","'|| drv1_rec.H373||'","'|| drv1_rec.H374||'","'|| drv1_rec.H375||'","'|| drv1_rec.H376||'","'|| 
        drv1_rec.H377||'","'|| drv1_rec.H378||'","'|| drv1_rec.H379||'","'|| drv1_rec.H380||'","'|| drv1_rec.H381||'","'|| drv1_rec.H382||'","'|| drv1_rec.H383||'","'|| 
        drv1_rec.H384||'","'|| drv1_rec.H385||'","'|| drv1_rec.H386||'","'|| drv1_rec.H387||'","'|| drv1_rec.H388||'","'|| drv1_rec.H389||'","'|| drv1_rec.H390||'","'|| 
        drv1_rec.H391||'","'|| drv1_rec.H392||'","'|| drv1_rec.H393||'","'|| drv1_rec.H394||'","'|| drv1_rec.H395||'","'|| drv1_rec.H396||'","'|| drv1_rec.H397||'","'|| 
        drv1_rec.H398||'","'|| drv1_rec.H399||'","'|| drv1_rec.H400||'","'|| drv1_rec.H401||'","'|| drv1_rec.H402||'","'|| drv1_rec.H403||'","'|| drv1_rec.H404||'","'|| 
        drv1_rec.H405||'","'|| drv1_rec.H406||'","'|| drv1_rec.H407||'","'|| drv1_rec.H408||'","'|| drv1_rec.H409||'","'|| drv1_rec.H410||'","'|| drv1_rec.H411||'","'|| 
        drv1_rec.H412||'","'|| drv1_rec.H413||'","'|| drv1_rec.H414||'","'|| drv1_rec.H415||'","'|| drv1_rec.H416||'","'|| drv1_rec.H417||'","'|| drv1_rec.H418||'","'|| 
        drv1_rec.H419||'","'|| drv1_rec.H420||'","'|| drv1_rec.H421||'","'|| drv1_rec.H422||'","'|| drv1_rec.H423||'","'|| drv1_rec.H424||'","'|| drv1_rec.H425||'","'|| 
        drv1_rec.H426||'","'|| drv1_rec.H427||'","'|| drv1_rec.H428||'","'|| drv1_rec.H429||'","'|| drv1_rec.H430||'","'|| drv1_rec.H431||'","'|| drv1_rec.H432||'","'|| 
        drv1_rec.H433||'","'|| drv1_rec.H434||'","'|| drv1_rec.H435||'","'|| drv1_rec.H436||'","'|| drv1_rec.H437||'","'|| drv1_rec.H438||'","'|| drv1_rec.H439||'","'|| 
        drv1_rec.H440||'","'|| drv1_rec.H441||'","'|| drv1_rec.H442||'","'|| drv1_rec.H443||'","'|| drv1_rec.H444||'","'|| drv1_rec.H445||'","'|| drv1_rec.H446||'","'|| 
        drv1_rec.H447||'","'|| drv1_rec.H448||'","'|| drv1_rec.H449||'","'|| drv1_rec.H450||'","'|| drv1_rec.H451||'","'|| drv1_rec.H452||'","'|| drv1_rec.H453||'","'|| 
        drv1_rec.H454||'","'|| drv1_rec.H455||'","'|| drv1_rec.H456||'","'|| drv1_rec.H457||'","'|| drv1_rec.H458||'","'|| drv1_rec.H459||'","'|| drv1_rec.H460||'","'|| 
        drv1_rec.H461||'","'|| drv1_rec.H462||'","'|| drv1_rec.H463||'","'|| drv1_rec.H464||'","'|| drv1_rec.H465||'","'|| drv1_rec.H466||'","'|| drv1_rec.H467||'","'|| 
        drv1_rec.H468||'","'|| drv1_rec.H469||'","'|| drv1_rec.H470||'","'|| drv1_rec.H471||'","'|| drv1_rec.H472||'","'|| drv1_rec.H473||'","'|| drv1_rec.H474||'","'|| 
        drv1_rec.H475||'","'|| drv1_rec.H476||'","'|| drv1_rec.H477||'","'|| drv1_rec.H478||'","'|| drv1_rec.H479||'","'|| drv1_rec.H480||'","'|| drv1_rec.H481||'","'|| 
        drv1_rec.H482||'","'|| drv1_rec.H483||'","'|| drv1_rec.H484||'","'|| drv1_rec.H485||'","'|| drv1_rec.H486||'","'|| drv1_rec.H487||'","'|| drv1_rec.H488||'","'|| 
        drv1_rec.H489||'","'|| drv1_rec.H490||'","'|| drv1_rec.H491||'","'|| drv1_rec.H492||'","'|| drv1_rec.H493||'","'|| drv1_rec.H494||'","'|| drv1_rec.H495||'","'|| 
        drv1_rec.H496||'","'|| drv1_rec.H497||'","'|| drv1_rec.H498||'","'|| drv1_rec.H499||'","'||        

        drv1_rec.H500||'","'|| drv1_rec.H501||'","'|| drv1_rec.H502||'","'|| drv1_rec.H503||'","'|| drv1_rec.H504||'","'|| drv1_rec.H505||'","'|| drv1_rec.H506||'","'|| 
        drv1_rec.H507||'","'|| drv1_rec.H508||'","'|| drv1_rec.H509||'","'|| drv1_rec.H510||'","'|| drv1_rec.H511||'","'|| drv1_rec.H512||'","'|| drv1_rec.H513||'","'|| 
        drv1_rec.H514||'","'|| drv1_rec.H515||'","'|| drv1_rec.H516||'","'|| drv1_rec.H517||'","'|| drv1_rec.H518||'","'|| drv1_rec.H519||'","'|| drv1_rec.H520||'","'|| 
        drv1_rec.H521||'","'|| drv1_rec.H522||'","'|| drv1_rec.H523||'","'|| drv1_rec.H524||'","'|| drv1_rec.H525||'","'|| drv1_rec.H526||'","'|| drv1_rec.H527||'","'|| 
        drv1_rec.H528||'","'|| drv1_rec.H529||'","'|| drv1_rec.H530||'","'|| drv1_rec.H531||'","'|| drv1_rec.H532||'","'|| drv1_rec.H533||'","'|| drv1_rec.H534||'","'|| 
        drv1_rec.H535||'","'|| drv1_rec.H536||'","'|| drv1_rec.H537||'","'|| drv1_rec.H538||'","'|| drv1_rec.H539||'","'|| drv1_rec.H540||'","'|| drv1_rec.H541||'","'|| 
        drv1_rec.H542||'","'|| drv1_rec.H543||'","'|| drv1_rec.H544||'","'|| drv1_rec.H545||'","'|| drv1_rec.H546||'","'|| drv1_rec.H547||'","'|| drv1_rec.H548||'","'|| 
        drv1_rec.H549||'","'|| drv1_rec.H550||'","'|| drv1_rec.H551||'","'|| drv1_rec.H552||'","'|| drv1_rec.H553||'","'|| drv1_rec.H554||'","'|| drv1_rec.H555||'","'|| 
        drv1_rec.H556||'","'|| drv1_rec.H557||'","'|| drv1_rec.H558||'","'|| drv1_rec.H559||'","'|| drv1_rec.H560||'","'|| drv1_rec.H561||'","'|| drv1_rec.H562||'","'|| 
        drv1_rec.H563||'","'|| drv1_rec.H564||'","'|| drv1_rec.H565||'","'|| drv1_rec.H566||'","'|| drv1_rec.H567||'","'|| drv1_rec.H568||'","'|| drv1_rec.H569||'","'|| 
        drv1_rec.H570||'","'|| drv1_rec.H571||'","'|| drv1_rec.H572||'","'|| drv1_rec.H573||'","'|| drv1_rec.H574||'","'|| drv1_rec.H575||'","'|| drv1_rec.H576||'","'|| 
        drv1_rec.H577||'","'|| drv1_rec.H578||'","'|| drv1_rec.H579||'","'|| drv1_rec.H580||'","'|| drv1_rec.H581||'","'|| drv1_rec.H582||'","'|| drv1_rec.H583||'","'|| 
        drv1_rec.H584||'","'|| drv1_rec.H585||'","'|| drv1_rec.H586||'","'|| drv1_rec.H587||'","'|| drv1_rec.H588||'","'|| drv1_rec.H589||'","'|| drv1_rec.H590||'","'|| 
        drv1_rec.H591||'","'|| drv1_rec.H592||'","'|| drv1_rec.H593||'","'|| drv1_rec.H594||'","'|| drv1_rec.H595||'","'|| drv1_rec.H596||'","'|| drv1_rec.H597||'","'|| 
        drv1_rec.H598||'","'|| drv1_rec.H599||'","'|| drv1_rec.H600||'","'|| drv1_rec.H601||'","'|| drv1_rec.H602||'","'|| drv1_rec.H603||'","'|| drv1_rec.H604||'","'|| 
        drv1_rec.H605||'","'|| drv1_rec.H606||'","'|| drv1_rec.H607||'","'|| drv1_rec.H608||'","'|| drv1_rec.H609||'","'|| drv1_rec.H610||'","'|| drv1_rec.H611||'","'|| 
        drv1_rec.H612||'","'|| drv1_rec.H613||'","'|| drv1_rec.H614||'","'|| drv1_rec.H615||'","'|| drv1_rec.H616||'","'|| drv1_rec.H617||'","'|| drv1_rec.H618||'","'|| 
        drv1_rec.H619||'","'|| drv1_rec.H620||'","'|| drv1_rec.H621||'","'|| drv1_rec.H622||'","'|| drv1_rec.H623||'","'|| drv1_rec.H624||'","'|| drv1_rec.H625||'","'|| 
        drv1_rec.H626||'","'|| drv1_rec.H627||'","'|| drv1_rec.H628||'","'|| drv1_rec.H629||'","'|| drv1_rec.H630||'","'|| drv1_rec.H631||'","'|| drv1_rec.H632||'","'|| 
        drv1_rec.H633||'","'|| drv1_rec.H634||'","'|| drv1_rec.H635||'","'|| drv1_rec.H636||'","'|| drv1_rec.H637||'","'|| drv1_rec.H638||'","'|| drv1_rec.H639||'","'|| 
        drv1_rec.H640||'","'|| drv1_rec.H641||'","'|| drv1_rec.H642||'","'|| drv1_rec.H643||'","'|| drv1_rec.H644||'","'|| drv1_rec.H645||'","'|| drv1_rec.H646||'","'|| 
        drv1_rec.H647||'","'|| drv1_rec.H648||'","'|| drv1_rec.H649||'","'|| drv1_rec.H650||'","'|| drv1_rec.H651||'","'|| drv1_rec.H652||'","'|| drv1_rec.H653||'","'|| 
        drv1_rec.H654||'","'|| drv1_rec.H655||'","'|| drv1_rec.H656||'","'|| drv1_rec.H657||'","'|| drv1_rec.H658||'","'|| drv1_rec.H659||'","'|| drv1_rec.H660||'","'|| 
        drv1_rec.H661||'","'|| drv1_rec.H662||'","'|| drv1_rec.H663||'","'|| drv1_rec.H664||'","'|| drv1_rec.H665||'","'|| drv1_rec.H666||'","'|| drv1_rec.H667||'","'|| 
        drv1_rec.H668||'","'|| drv1_rec.H669||'","'|| drv1_rec.H670||'","'|| drv1_rec.H671||'","'|| drv1_rec.H672||'","'|| drv1_rec.H673||'","'|| drv1_rec.H674||'","'|| 
        drv1_rec.H675||'","'|| drv1_rec.H676||'","'|| drv1_rec.H677||'","'|| drv1_rec.H678||'","'|| drv1_rec.H679||'","'|| drv1_rec.H680||'","'|| drv1_rec.H681||'","'|| 
        drv1_rec.H682||'","'|| drv1_rec.H683||'","'|| drv1_rec.H684||'","'|| drv1_rec.H685||'","'|| drv1_rec.H686||'","'|| drv1_rec.H687||'","'|| drv1_rec.H688||'","'|| 
        drv1_rec.H689||'","'|| drv1_rec.H690||'","'|| drv1_rec.H691||'","'|| drv1_rec.H692||'","'|| drv1_rec.H693||'","'|| drv1_rec.H694||'","'|| drv1_rec.H695||'","'|| 
        drv1_rec.H696||'","'|| drv1_rec.H697||'","'|| drv1_rec.H698||'","'|| drv1_rec.H699||'","'||

        drv1_rec.H700||'","'|| drv1_rec.H701||'","'|| drv1_rec.H702||'","'|| drv1_rec.H703||'","'|| drv1_rec.H704||'","'|| drv1_rec.H705||'","'|| drv1_rec.H706||'","'|| 
        drv1_rec.H707||'","'|| drv1_rec.H708||'","'|| drv1_rec.H709||'","'|| drv1_rec.H710||'","'|| drv1_rec.H711||'","'|| drv1_rec.H712||'","'|| drv1_rec.H713||'","'|| 
        drv1_rec.H714||'","'|| drv1_rec.H715||'","'|| drv1_rec.H716||'","'|| drv1_rec.H717||'","'|| drv1_rec.H718||'","'|| drv1_rec.H719||'","'|| drv1_rec.H720||'","'|| 
        drv1_rec.H721||'","'|| drv1_rec.H722||'","'|| drv1_rec.H723||'","'|| drv1_rec.H724||'","'|| drv1_rec.H725||'","'|| drv1_rec.H726||'","'|| drv1_rec.H727||'","'|| 
        drv1_rec.H728||'","'|| drv1_rec.H729||'","'|| drv1_rec.H730||'","'|| drv1_rec.H731||'","'|| drv1_rec.H732||'","'|| drv1_rec.H733||'","'|| drv1_rec.H734||'","'|| 
        drv1_rec.H735||'","'|| drv1_rec.H736||'","'|| drv1_rec.H737||'","'|| drv1_rec.H738||'","'|| drv1_rec.H739||'","'|| drv1_rec.H740||'","'|| drv1_rec.H741||'","'|| 
        drv1_rec.H742||'","'|| drv1_rec.H743||'","'|| drv1_rec.H744||'","'|| drv1_rec.H745||'","'|| drv1_rec.H746||'","'|| drv1_rec.H747||'","'|| drv1_rec.H748||'","'|| 
        drv1_rec.H749||'","'|| drv1_rec.H750||'","'|| drv1_rec.H751||'","'|| drv1_rec.H752||'","'|| drv1_rec.H753||'","'|| drv1_rec.H754||'","'|| drv1_rec.H755||'","'|| 
        drv1_rec.H756||'","'|| drv1_rec.H757||'","'|| drv1_rec.H758||'","'|| drv1_rec.H759||'","'|| drv1_rec.H760||'","'|| drv1_rec.H761||'","'|| drv1_rec.H762||'","'|| 
        drv1_rec.H763||'","'|| drv1_rec.H764||'","'|| drv1_rec.H765||'","'|| drv1_rec.H766||'","'|| drv1_rec.H767||'","'|| drv1_rec.H768||'","'|| drv1_rec.H769||'","'|| 
        drv1_rec.H770||'","'|| drv1_rec.H771||'","'|| drv1_rec.H772||'","'|| drv1_rec.H773||'","'|| drv1_rec.H774||'","'|| drv1_rec.H775||'","'|| drv1_rec.H776||'","'|| 
        drv1_rec.H777||'","'|| drv1_rec.H778||'","'|| drv1_rec.H779||'","'|| drv1_rec.H780||'","'|| drv1_rec.H781||'","'|| drv1_rec.H782||'","'|| drv1_rec.H783||'","'|| 
        drv1_rec.H784||'","'|| drv1_rec.H785||'","'|| drv1_rec.H786||'","'|| drv1_rec.H787||'","'|| drv1_rec.H788||'","'|| drv1_rec.H789||'","'|| drv1_rec.H790||'","'|| 
        drv1_rec.H791||'","'|| drv1_rec.H792||'","'|| drv1_rec.H793||'","'|| drv1_rec.H794||'","'|| drv1_rec.H795||'","'|| drv1_rec.H796||'","'|| drv1_rec.H797||'","'|| 
        drv1_rec.H798||'","'|| drv1_rec.H799||'","'|| drv1_rec.H800||'","'|| drv1_rec.H801||'","'|| drv1_rec.H802||'","'|| drv1_rec.H803||'","'|| drv1_rec.H804||'","'|| 
        drv1_rec.H805||'","'|| drv1_rec.H806||'","'|| drv1_rec.H807||'","'|| drv1_rec.H808||'","'|| drv1_rec.H809||'","'|| drv1_rec.H810||'","'|| drv1_rec.H811||'","'|| 
        drv1_rec.H812||'","'|| drv1_rec.H813||'","'|| drv1_rec.H814||'","'|| drv1_rec.H815||'","'|| drv1_rec.H816||'","'|| drv1_rec.H817||'","'|| drv1_rec.H818||'","'|| 
        drv1_rec.H819||'","'|| drv1_rec.H820||'","'|| drv1_rec.H821||'","'|| drv1_rec.H822||'","'|| drv1_rec.H823||'","'|| drv1_rec.H824||'","'|| drv1_rec.H825||'","'|| 
        drv1_rec.H826||'","'|| drv1_rec.H827||'","'|| drv1_rec.H828||'","'|| drv1_rec.H829||'","'|| drv1_rec.H830||'","'|| drv1_rec.H831||'","'|| drv1_rec.H832||'","'|| 
        drv1_rec.H833||'","'|| drv1_rec.H834||'","'|| drv1_rec.H835||'","'|| drv1_rec.H836||'","'|| drv1_rec.H837||'","'|| drv1_rec.H838||'","'|| drv1_rec.H839||'","'|| 
        drv1_rec.H840||'","'|| drv1_rec.H841||'","'|| drv1_rec.H842||'","'|| drv1_rec.H843||'","'|| drv1_rec.H844||'","'|| drv1_rec.H845||'","'|| drv1_rec.H846||'","'|| 
        drv1_rec.H847||'","'|| drv1_rec.H848||'","'|| drv1_rec.H849||'","'|| drv1_rec.H850||'","'|| drv1_rec.H851||'","'|| drv1_rec.H852||'","'|| drv1_rec.H853||'","'|| 
        drv1_rec.H854||'","'|| drv1_rec.H855||'","'|| drv1_rec.H856||'","'|| drv1_rec.H857||'","'|| drv1_rec.H858||'","'|| drv1_rec.H859||'","'|| drv1_rec.H860||'","'|| 
        drv1_rec.H861||'","'|| drv1_rec.H862||'","'|| drv1_rec.H863||'","'|| drv1_rec.H864||'","'|| drv1_rec.H865||'","'|| drv1_rec.H866||'","'|| drv1_rec.H867||'","'|| 
        drv1_rec.H868||'","'|| drv1_rec.H869||'","'|| drv1_rec.H870||'","'|| drv1_rec.H871||'","'|| drv1_rec.H872||'","'|| drv1_rec.H873||'","'|| drv1_rec.H874||'","'|| 
        drv1_rec.H875||'","'|| drv1_rec.H876||'","'|| drv1_rec.H877||'","'|| drv1_rec.H878||'","'|| drv1_rec.H879||'","'|| drv1_rec.H880||'","'|| drv1_rec.H881||'","'|| 
        drv1_rec.H882||'","'|| drv1_rec.H883||'","'|| drv1_rec.H884||'","'|| drv1_rec.H885||'","'|| drv1_rec.H886||'","'|| drv1_rec.H887||'","'|| drv1_rec.H888||'","'|| 
        drv1_rec.H889||'","'|| drv1_rec.H890||'","'|| drv1_rec.H891||'","'|| drv1_rec.H892||'","'|| drv1_rec.H893||'","'|| drv1_rec.H894||'","'|| drv1_rec.H895||'","'|| 
        drv1_rec.H896||'","'|| drv1_rec.H897||'","'|| drv1_rec.H898||'","'|| drv1_rec.H899||'","'|| drv1_rec.H900||'","'|| drv1_rec.H901||'","'|| drv1_rec.H902||'","'|| 
        drv1_rec.H903||'","'|| drv1_rec.H904||'","'|| drv1_rec.H905||'","'||
        drv1_rec."END"||'"'
        );
        */        

        utl_file.put_line(out_file_2,'"'||drv1_rec.KEY||'","'||
        drv1_rec.RANK||'","'||
        drv1_rec.LINETYPE||'","'||
        drv1_rec.H003||'","'|| drv1_rec.H004||'","'|| drv1_rec.H005||'","'|| drv1_rec.H006||'","'|| drv1_rec.H007||'","'|| drv1_rec.H008||'","'|| drv1_rec.H009||'","'||
        drv1_rec.H010||'","'|| drv1_rec.H011||'","'|| drv1_rec.H012||'","'|| drv1_rec.H013||'","'|| drv1_rec.H014||'","'|| drv1_rec.H015||'","'|| drv1_rec.H016||'","'||
        drv1_rec.H017||'","'|| drv1_rec.H018||'","'|| drv1_rec.H019||'","'|| drv1_rec.H020||'","'|| drv1_rec.H021||'","'|| drv1_rec.H022||'","'|| drv1_rec.H023||'","'|| 
        drv1_rec.H024||'","'|| drv1_rec.H025||'","'|| drv1_rec.H026||'","'|| drv1_rec.H027||'","'|| drv1_rec.H028||'","'|| drv1_rec.H029||'","'|| drv1_rec.H030||'","'||
        drv1_rec.H031||'","'|| drv1_rec.H032||'","'|| drv1_rec.H033||'","'|| drv1_rec.H034||'","'|| drv1_rec.H035||'","'|| drv1_rec.H036||'","'|| drv1_rec.H037||'","'||
        drv1_rec.H038||'","'|| drv1_rec.H039||'","'|| drv1_rec.H040||'","'|| drv1_rec.H041||'","'|| drv1_rec.H042||'","'|| drv1_rec.H043||'","'|| drv1_rec.H044||'","'||
        drv1_rec.H045||'","'|| drv1_rec.H046||'","'|| drv1_rec.H047||'","'|| drv1_rec.H048||'","'|| drv1_rec.H049||'","'|| drv1_rec.H050||'","'|| drv1_rec.H051||'","'||
        drv1_rec.H052||'","'|| drv1_rec.H053||'","'|| drv1_rec.H054||'","'|| drv1_rec.H055||'","'|| drv1_rec.H056||'","'|| drv1_rec.H057||'","'|| drv1_rec.H058||'","'||        
        drv1_rec.H059||'","'|| drv1_rec.H060||'","'|| drv1_rec.H061||'","'|| drv1_rec.H062||'","'|| drv1_rec.H063||'","'|| drv1_rec.H064||'","'|| drv1_rec.H065||'","'||
        drv1_rec.H066||'","'|| drv1_rec.H067||'","'|| drv1_rec.H068||'","'|| drv1_rec.H069||'","'|| drv1_rec.H070||'","'|| drv1_rec.H071||'","'|| drv1_rec.H072||'","'||
        drv1_rec.H073||'","'|| drv1_rec.H074||'","'|| drv1_rec.H075||'","'|| drv1_rec.H076||'","'|| drv1_rec.H077||'","'|| drv1_rec.H078||'","'|| drv1_rec.H079||'","'||
        drv1_rec.H080||'","'|| drv1_rec.H081||'","'|| drv1_rec.H082||'","'|| drv1_rec.H083||'","'|| drv1_rec.H084||'","'|| drv1_rec.H085||'","'|| drv1_rec.H086||'","'||
        drv1_rec.H087||'","'|| drv1_rec.H088||'","'|| drv1_rec.H089||'","'|| drv1_rec.H090||'","'|| drv1_rec.H091||'","'|| drv1_rec.H092||'","'|| drv1_rec.H093||'","'||
        drv1_rec.H094||'","'|| drv1_rec.H095||'","'|| drv1_rec.H096||'","'|| drv1_rec.H097||'","'|| drv1_rec.H098||'","'|| drv1_rec.H099||'","'|| 

        drv1_rec.H100||'","'|| drv1_rec.H101||'","'|| drv1_rec.H102||'","'|| drv1_rec.H103||'","'|| drv1_rec.H104||'","'|| drv1_rec.H105||'","'|| drv1_rec.H106||'","'|| 
        drv1_rec.H107||'","'|| drv1_rec.H108||'","'|| drv1_rec.H109||'","'|| drv1_rec.H110||'","'|| drv1_rec.H111||'","'|| drv1_rec.H112||'","'|| drv1_rec.H113||'","'|| 
        drv1_rec.H114||'","'|| drv1_rec.H115||'","'|| drv1_rec.H116||'","'|| drv1_rec.H117||'","'|| drv1_rec.H118||'","'|| drv1_rec.H119||'","'|| drv1_rec.H120||'","'|| 
        drv1_rec.H121||'","'|| drv1_rec.H122||'","'|| drv1_rec.H123||'","'|| drv1_rec.H124||'","'|| drv1_rec.H125||'","'|| drv1_rec.H126||'","'|| drv1_rec.H127||'","'|| 
        drv1_rec.H128||'","'|| drv1_rec.H129||'","'|| drv1_rec.H130||'","'|| drv1_rec.H131||'","'|| drv1_rec.H132||'","'|| drv1_rec.H133||'","'|| drv1_rec.H134||'","'|| 
        drv1_rec.H135||'","'|| drv1_rec.H136||'","'|| drv1_rec.H137||'","'|| drv1_rec.H138||'","'|| drv1_rec.H139||'","'|| drv1_rec.H140||'","'|| drv1_rec.H141||'","'|| 
        drv1_rec.H142||'","'|| drv1_rec.H143||'","'|| drv1_rec.H144||'","'|| drv1_rec.H145||'","'|| drv1_rec.H146||'","'|| drv1_rec.H147||'","'|| drv1_rec.H148||'","'|| 
        drv1_rec.H149||'","'|| drv1_rec.H150||'","'|| drv1_rec.H151||'","'|| drv1_rec.H152||'","'|| drv1_rec.H153||'","'|| drv1_rec.H154||'","'|| drv1_rec.H155||'","'|| 
        drv1_rec.H156||'","'|| drv1_rec.H157||'","'|| drv1_rec.H158||'","'|| drv1_rec.H159||'","'|| drv1_rec.H160||'","'|| drv1_rec.H161||'","'|| drv1_rec.H162||'","'|| 
        drv1_rec.H163||'","'|| drv1_rec.H164||'","'|| drv1_rec.H165||'","'|| drv1_rec.H166||'","'|| drv1_rec.H167||'","'|| drv1_rec.H168||'","'|| drv1_rec.H169||'","'|| 
        drv1_rec.H170||'","'|| drv1_rec.H171||'","'|| drv1_rec.H172||'","'|| drv1_rec.H173||'","'|| drv1_rec.H174||'","'|| drv1_rec.H175||'","'|| drv1_rec.H176||'","'|| 
        drv1_rec.H177||'","'|| drv1_rec.H178||'","'|| drv1_rec.H179||'","'|| drv1_rec.H180||'","'|| drv1_rec.H181||'","'|| drv1_rec.H182||'","'|| drv1_rec.H183||'","'|| 
        drv1_rec.H184||'","'|| drv1_rec.H185||'","'|| drv1_rec.H186||'","'|| drv1_rec.H187||'","'|| drv1_rec.H188||'","'|| drv1_rec.H189||'","'|| drv1_rec.H190||'","'|| 
        drv1_rec.H191||'","'|| drv1_rec.H192||'","'|| drv1_rec.H193||'","'|| drv1_rec.H194||'","'|| drv1_rec.H195||'","'|| drv1_rec.H196||'","'|| drv1_rec.H197||'","'|| 
        drv1_rec.H198||'","'|| drv1_rec.H199||'","'|| drv1_rec.H200||'","'|| drv1_rec.H201||'","'|| drv1_rec.H202||'","'|| drv1_rec.H203||'","'|| drv1_rec.H204||'","'|| 
        drv1_rec.H205||'","'|| drv1_rec.H206||'","'|| drv1_rec.H207||'","'|| drv1_rec.H208||'","'|| drv1_rec.H209||'","'|| drv1_rec.H210||'","'|| drv1_rec.H211||'","'|| 
        drv1_rec.H212||'","'|| drv1_rec.H213||'","'|| drv1_rec.H214||'","'|| drv1_rec.H215||'","'|| drv1_rec.H216||'","'|| drv1_rec.H217||'","'|| drv1_rec.H218||'","'|| 
        drv1_rec.H219||'","'|| drv1_rec.H220||'","'|| drv1_rec.H221||'","'|| drv1_rec.H222||'","'|| drv1_rec.H223||'","'|| drv1_rec.H224||'","'|| drv1_rec.H225||'","'|| 
        drv1_rec.H226||'","'|| drv1_rec.H227||'","'|| drv1_rec.H228||'","'|| drv1_rec.H229||'","'|| drv1_rec.H230||'","'|| drv1_rec.H231||'","'|| drv1_rec.H232||'","'|| 
        drv1_rec.H233||'","'|| drv1_rec.H234||'","'|| drv1_rec.H235||'","'|| drv1_rec.H236||'","'|| drv1_rec.H237||'","'|| drv1_rec.H238||'","'|| drv1_rec.H239||'","'|| 
        drv1_rec.H240||'","'|| drv1_rec.H241||'","'|| drv1_rec.H242||'","'|| drv1_rec.H243||'","'|| drv1_rec.H244||'","'|| drv1_rec.H245||'","'|| drv1_rec.H246||'","'|| 
        drv1_rec.H247||'","'|| drv1_rec.H248||'","'|| drv1_rec.H249||'","'|| drv1_rec.H250||'","'|| drv1_rec.H251||'","'|| drv1_rec.H252||'","'|| drv1_rec.H253||'","'|| 
        drv1_rec.H254||'","'|| drv1_rec.H255||'","'|| drv1_rec.H256||'","'|| drv1_rec.H257||'","'|| drv1_rec.H258||'","'|| drv1_rec.H259||'","'|| drv1_rec.H260||'","'|| 
        drv1_rec.H261||'","'|| drv1_rec.H262||'","'|| drv1_rec.H263||'","'|| drv1_rec.H264||'","'|| drv1_rec.H265||'","'|| drv1_rec.H266||'","'|| drv1_rec.H267||'","'|| 
        drv1_rec.H268||'","'|| drv1_rec.H269||'","'|| drv1_rec.H270||'","'|| drv1_rec.H271||'","'|| drv1_rec.H272||'","'|| drv1_rec.H273||'","'|| drv1_rec.H274||'","'|| 
        drv1_rec.H275||'","'|| drv1_rec.H276||'","'|| drv1_rec.H277||'","'|| drv1_rec.H278||'","'|| drv1_rec.H279||'","'|| drv1_rec.H280||'","'|| drv1_rec.H281||'","'|| 
        drv1_rec.H282||'","'|| drv1_rec.H283||'","'|| drv1_rec.H284||'","'|| drv1_rec.H285||'","'|| drv1_rec.H286||'","'|| drv1_rec.H287||'","'|| drv1_rec.H288||'","'|| 
        drv1_rec.H289||'","'|| drv1_rec.H290||'","'|| drv1_rec.H291||'","'|| drv1_rec.H292||'","'|| drv1_rec.H293||'","'|| drv1_rec.H294||'","'|| drv1_rec.H295||'","'|| 
        drv1_rec.H296||'","'|| drv1_rec.H297||'","'|| drv1_rec.H298||'","'|| drv1_rec.H299||'","'||

        drv1_rec.H300||'","'|| drv1_rec.H301||'","'|| drv1_rec.H302||'","'|| drv1_rec.H303||'","'|| drv1_rec.H304||'","'|| drv1_rec.H305||'","'|| drv1_rec.H306||'","'|| 
        drv1_rec.H307||'","'|| drv1_rec.H308||'","'|| drv1_rec.H309||'","'|| drv1_rec.H310||'","'|| drv1_rec.H311||'","'|| drv1_rec.H312||'","'|| drv1_rec.H313||'","'|| 
        drv1_rec.H314||'","'|| drv1_rec.H315||'","'|| drv1_rec.H316||'","'|| drv1_rec.H317||'","'|| drv1_rec.H318||'","'|| drv1_rec.H319||'","'|| drv1_rec.H320||'","'|| 
        drv1_rec.H321||'","'|| drv1_rec.H322||'","'|| drv1_rec.H323||'","'|| drv1_rec.H324||'","'|| drv1_rec.H325||'","'|| drv1_rec.H326||'","'|| drv1_rec.H327||'","'|| 
        drv1_rec.H328||'","'|| drv1_rec.H329||'","'|| drv1_rec.H330||'","'|| drv1_rec.H331||'","'|| drv1_rec.H332||'","'|| drv1_rec.H333||'","'|| drv1_rec.H334||'","'|| 
        drv1_rec.H335||'","'|| drv1_rec.H336||'","'|| drv1_rec.H337||'","'|| drv1_rec.H338||'","'|| drv1_rec.H339||'","'|| drv1_rec.H340||'","'|| drv1_rec.H341||'","'|| 
        drv1_rec.H342||'","'|| drv1_rec.H343||'","'|| drv1_rec.H344||'","'|| drv1_rec.H345||'","'|| drv1_rec.H346||'","'|| drv1_rec.H347||'","'|| drv1_rec.H348||'","'|| 
        drv1_rec.H349||'","'|| drv1_rec.H350||'","'|| drv1_rec.H351||'","'|| drv1_rec.H352||'","'|| drv1_rec.H353||'","'|| drv1_rec.H354||'","'|| drv1_rec.H355||'","'|| 
        drv1_rec.H356||'","'|| drv1_rec.H357||'","'|| drv1_rec.H358||'","'|| drv1_rec.H359||'","'|| drv1_rec.H360||'","'|| drv1_rec.H361||'","'|| drv1_rec.H362||'","'|| 
        drv1_rec.H363||'","'|| drv1_rec.H364||'","'|| drv1_rec.H365||'","'|| drv1_rec.H366||'","'|| drv1_rec.H367||'","'|| drv1_rec.H368||'","'|| drv1_rec.H369||'","'|| 
        drv1_rec.H370||'","'|| drv1_rec.H371||'","'|| drv1_rec.H372||'","'|| drv1_rec.H373||'","'|| drv1_rec.H374||'","'|| drv1_rec.H375||'","'|| drv1_rec.H376||'","'|| 
        drv1_rec.H377||'","'|| drv1_rec.H378||'","'|| drv1_rec.H379||'","'|| drv1_rec.H380||'","'|| drv1_rec.H381||'","'|| drv1_rec.H382||'","'|| drv1_rec.H383||'","'|| 
        drv1_rec.H384||'","'|| drv1_rec.H385||'","'|| drv1_rec.H386||'","'|| drv1_rec.H387||'","'|| drv1_rec.H388||'","'|| drv1_rec.H389||'","'|| drv1_rec.H390||'","'|| 
        drv1_rec.H391||'","'|| drv1_rec.H392||'","'|| drv1_rec.H393||'","'|| drv1_rec.H394||'","'|| drv1_rec.H395||'","'|| drv1_rec.H396||'","'|| drv1_rec.H397||'","'|| 
        drv1_rec.H398||'","'|| drv1_rec.H399||'","'|| drv1_rec.H400||'","'|| drv1_rec.H401||'","'|| drv1_rec.H402||'","'|| drv1_rec.H403||'","'|| drv1_rec.H404||'","'|| 
        drv1_rec.H405||'","'|| drv1_rec.H406||'","'|| drv1_rec.H407||'","'|| drv1_rec.H408||'","'|| drv1_rec.H409||'","'|| drv1_rec.H410||'","'|| drv1_rec.H411||'","'|| 
        drv1_rec.H412||'","'|| drv1_rec.H413||'","'|| drv1_rec.H414||'","'|| drv1_rec.H415||'","'|| drv1_rec.H416||'","'|| drv1_rec.H417||'","'|| drv1_rec.H418||'","'|| 
        drv1_rec.H419||'","'|| drv1_rec.H420||'","'|| drv1_rec.H421||'","'|| drv1_rec.H422||'","'|| drv1_rec.H423||'","'|| drv1_rec.H424||'","'|| drv1_rec.H425||'","'|| 
        drv1_rec.H426||'","'|| drv1_rec.H427||'","'|| drv1_rec.H428||'","'|| drv1_rec.H429||'","'|| drv1_rec.H430||'","'|| drv1_rec.H431||'","'|| drv1_rec.H432||'","'|| 
        drv1_rec.H433||'","'|| drv1_rec.H434||'","'|| drv1_rec.H435||'","'|| drv1_rec.H436||'","'|| drv1_rec.H437||'","'|| drv1_rec.H438||'","'|| drv1_rec.H439||'","'|| 
        drv1_rec.H440||'","'|| drv1_rec.H441||'","'|| drv1_rec.H442||'","'|| drv1_rec.H443||'","'|| drv1_rec.H444||'","'|| drv1_rec.H445||'","'|| drv1_rec.H446||'","'|| 
        drv1_rec.H447||'","'|| drv1_rec.H448||'","'|| drv1_rec.H449||'","'|| drv1_rec.H450||'","'|| drv1_rec.H451||'","'|| drv1_rec.H452||'","'|| drv1_rec.H453||'","'|| 
        drv1_rec.H454||'","'|| drv1_rec.H455||'","'|| drv1_rec.H456||'","'|| drv1_rec.H457||'","'|| drv1_rec.H458||'","'|| drv1_rec.H459||'","'|| drv1_rec.H460||'","'|| 
        drv1_rec.H461||'","'|| drv1_rec.H462||'","'|| drv1_rec.H463||'","'|| drv1_rec.H464||'","'|| drv1_rec.H465||'","'|| drv1_rec.H466||'","'|| drv1_rec.H467||'","'|| 
        drv1_rec.H468||'","'|| drv1_rec.H469||'","'|| drv1_rec.H470||'","'|| drv1_rec.H471||'","'|| drv1_rec.H472||'","'|| drv1_rec.H473||'","'|| drv1_rec.H474||'","'|| 
        drv1_rec.H475||'","'|| drv1_rec.H476||'","'|| drv1_rec.H477||'","'|| drv1_rec.H478||'","'|| drv1_rec.H479||'","'|| drv1_rec.H480||'","'|| drv1_rec.H481||'","'|| 
        drv1_rec.H482||'","'|| drv1_rec.H483||'","'|| drv1_rec.H484||'","'|| drv1_rec.H485||'","'|| drv1_rec.H486||'","'|| drv1_rec.H487||'","'|| drv1_rec.H488||'","'|| 
        drv1_rec.H489||'","'|| drv1_rec.H490||'","'|| drv1_rec.H491||'","'|| drv1_rec.H492||'","'|| drv1_rec.H493||'","'|| drv1_rec.H494||'","'|| drv1_rec.H495||'","'|| 
        drv1_rec.H496||'","'|| drv1_rec.H497||'","'|| drv1_rec.H498||'","'|| drv1_rec.H499||'","'||        

        drv1_rec.H500||'","'|| drv1_rec.H501||'","'|| drv1_rec.H502||'","'|| drv1_rec.H503||'","'|| drv1_rec.H504||'","'|| drv1_rec.H505||'","'|| drv1_rec.H506||'","'|| 
        drv1_rec.H507||'","'|| drv1_rec.H508||'","'|| drv1_rec.H509||'","'|| drv1_rec.H510||'","'|| drv1_rec.H511||'","'|| drv1_rec.H512||'","'|| drv1_rec.H513||'","'|| 
        drv1_rec.H514||'","'|| drv1_rec.H515||'","'|| drv1_rec.H516||'","'|| drv1_rec.H517||'","'|| drv1_rec.H518||'","'|| drv1_rec.H519||'","'|| drv1_rec.H520||'","'|| 
        drv1_rec.H521||'","'|| drv1_rec.H522||'","'|| drv1_rec.H523||'","'|| drv1_rec.H524||'","'|| drv1_rec.H525||'","'|| drv1_rec.H526||'","'|| drv1_rec.H527||'","'|| 
        drv1_rec.H528||'","'|| drv1_rec.H529||'","'|| drv1_rec.H530||'","'|| drv1_rec.H531||'","'|| drv1_rec.H532||'","'|| drv1_rec.H533||'","'|| drv1_rec.H534||'","'|| 
        drv1_rec.H535||'","'|| drv1_rec.H536||'","'|| drv1_rec.H537||'","'|| drv1_rec.H538||'","'|| drv1_rec.H539||'","'|| drv1_rec.H540||'","'|| drv1_rec.H541||'","'|| 
        drv1_rec.H542||'","'|| drv1_rec.H543||'","'|| drv1_rec.H544||'","'|| drv1_rec.H545||'","'|| drv1_rec.H546||'","'|| drv1_rec.H547||'","'|| drv1_rec.H548||'","'|| 
        drv1_rec.H549||'","'|| drv1_rec.H550||'","'|| drv1_rec.H551||'","'|| drv1_rec.H552||'","'|| drv1_rec.H553||'","'|| drv1_rec.H554||'","'|| drv1_rec.H555||'","'|| 
        drv1_rec.H556||'","'|| drv1_rec.H557||'","'|| drv1_rec.H558||'","'|| drv1_rec.H559||'","'|| drv1_rec.H560||'","'|| drv1_rec.H561||'","'|| drv1_rec.H562||'","'|| 
        drv1_rec.H563||'","'|| drv1_rec.H564||'","'|| drv1_rec.H565||'","'|| drv1_rec.H566||'","'|| drv1_rec.H567||'","'|| drv1_rec.H568||'","'|| drv1_rec.H569||'","'|| 
        drv1_rec.H570||'","'|| drv1_rec.H571||'","'|| drv1_rec.H572||'","'|| drv1_rec.H573||'","'|| drv1_rec.H574||'","'|| drv1_rec.H575||'","'|| drv1_rec.H576||'","'|| 
        drv1_rec.H577||'","'|| drv1_rec.H578||'","'|| drv1_rec.H579||'","'|| drv1_rec.H580||'","'|| drv1_rec.H581||'","'|| drv1_rec.H582||'","'|| drv1_rec.H583||'","'|| 
        drv1_rec.H584||'","'|| drv1_rec.H585||'","'|| drv1_rec.H586||'","'|| drv1_rec.H587||'","'|| drv1_rec.H588||'","'|| drv1_rec.H589||'","'|| drv1_rec.H590||'","'|| 
        drv1_rec.H591||'","'|| drv1_rec.H592||'","'|| drv1_rec.H593||'","'|| drv1_rec.H594||'","'|| drv1_rec.H595||'","'|| drv1_rec.H596||'","'|| drv1_rec.H597||'","'|| 
        drv1_rec.H598||'","'|| drv1_rec.H599||'","'|| drv1_rec.H600||'","'|| drv1_rec.H601||'","'|| drv1_rec.H602||'","'|| drv1_rec.H603||'","'|| drv1_rec.H604||'","'|| 
        drv1_rec.H605||'","'|| drv1_rec.H606||'","'|| drv1_rec.H607||'","'|| drv1_rec.H608||'","'|| drv1_rec.H609||'","'|| drv1_rec.H610||'","'|| drv1_rec.H611||'","'|| 
        drv1_rec.H612||'","'|| drv1_rec.H613||'","'|| drv1_rec.H614||'","'|| drv1_rec.H615||'","'|| drv1_rec.H616||'","'|| drv1_rec.H617||'","'|| drv1_rec.H618||'","'|| 
        drv1_rec.H619||'","'|| drv1_rec.H620||'","'|| drv1_rec.H621||'","'|| drv1_rec.H622||'","'|| drv1_rec.H623||'","'|| drv1_rec.H624||'","'|| drv1_rec.H625||'","'|| 
        drv1_rec.H626||'","'|| drv1_rec.H627||'","'|| drv1_rec.H628||'","'|| drv1_rec.H629||'","'|| drv1_rec.H630||'","'|| drv1_rec.H631||'","'|| drv1_rec.H632||'","'|| 
        drv1_rec.H633||'","'|| drv1_rec.H634||'","'|| drv1_rec.H635||'","'|| drv1_rec.H636||'","'|| drv1_rec.H637||'","'|| drv1_rec.H638||'","'|| drv1_rec.H639||'","'|| 
        drv1_rec.H640||'","'|| drv1_rec.H641||'","'|| drv1_rec.H642||'","'|| drv1_rec.H643||'","'|| drv1_rec.H644||'","'|| drv1_rec.H645||'","'|| drv1_rec.H646||'","'|| 
        drv1_rec.H647||'","'|| drv1_rec.H648||'","'|| drv1_rec.H649||'","'|| drv1_rec.H650||'","'|| drv1_rec.H651||'","'|| drv1_rec.H652||'","'|| drv1_rec.H653||'","'|| 
        drv1_rec.H654||'","'|| drv1_rec.H655||'","'|| drv1_rec.H656||'","'|| drv1_rec.H657||'","'|| drv1_rec.H658||'","'|| drv1_rec.H659||'","'|| drv1_rec.H660||'","'|| 
        drv1_rec.H661||'","'|| drv1_rec.H662||'","'|| drv1_rec.H663||'","'|| drv1_rec.H664||'","'|| drv1_rec.H665||'","'|| drv1_rec.H666||'","'|| drv1_rec.H667||'","'|| 
        drv1_rec.H668||'","'|| drv1_rec.H669||'","'|| drv1_rec.H670||'","'|| drv1_rec.H671||'","'|| drv1_rec.H672||'","'|| drv1_rec.H673||'","'|| drv1_rec.H674||'","'|| 
        drv1_rec.H675||'","'|| drv1_rec.H676||'","'|| drv1_rec.H677||'","'|| drv1_rec.H678||'","'|| drv1_rec.H679||'","'|| drv1_rec.H680||'","'|| drv1_rec.H681||'","'|| 
        drv1_rec.H682||'","'|| drv1_rec.H683||'","'|| drv1_rec.H684||'","'|| drv1_rec.H685||'","'|| drv1_rec.H686||'","'|| drv1_rec.H687||'","'|| drv1_rec.H688||'","'|| 
        drv1_rec.H689||'","'|| drv1_rec.H690||'","'|| drv1_rec.H691||'","'|| drv1_rec.H692||'","'|| drv1_rec.H693||'","'|| drv1_rec.H694||'","'|| drv1_rec.H695||'","'|| 
        drv1_rec.H696||'","'|| drv1_rec.H697||'","'|| drv1_rec.H698||'","'|| drv1_rec.H699||'","'||

        drv1_rec.H700||'","'|| drv1_rec.H701||'","'|| drv1_rec.H702||'","'|| drv1_rec.H703||'","'|| drv1_rec.H704||'","'|| drv1_rec.H705||'","'|| drv1_rec.H706||'","'|| 
        drv1_rec.H707||'","'|| drv1_rec.H708||'","'|| drv1_rec.H709||'","'|| drv1_rec.H710||'","'|| drv1_rec.H711||'","'|| drv1_rec.H712||'","'|| drv1_rec.H713||'","'|| 
        drv1_rec.H714||'","'|| drv1_rec.H715||'","'|| drv1_rec.H716||'","'|| drv1_rec.H717||'","'|| drv1_rec.H718||'","'|| drv1_rec.H719||'","'|| drv1_rec.H720||'","'|| 
        drv1_rec.H721||'","'|| drv1_rec.H722||'","'|| drv1_rec.H723||'","'|| drv1_rec.H724||'","'|| drv1_rec.H725||'","'|| drv1_rec.H726||'","'|| drv1_rec.H727||'","'|| 
        drv1_rec.H728||'","'|| drv1_rec.H729||'","'|| drv1_rec.H730||'","'|| drv1_rec.H731||'","'|| drv1_rec.H732||'","'|| drv1_rec.H733||'","'|| drv1_rec.H734||'","'|| 
        drv1_rec.H735||'","'|| drv1_rec.H736||'","'|| drv1_rec.H737||'","'|| drv1_rec.H738||'","'|| drv1_rec.H739||'","'|| drv1_rec.H740||'","'|| drv1_rec.H741||'","'|| 
        drv1_rec.H742||'","'|| drv1_rec.H743||'","'|| drv1_rec.H744||'","'|| drv1_rec.H745||'","'|| drv1_rec.H746||'","'|| drv1_rec.H747||'","'|| drv1_rec.H748||'","'|| 
        drv1_rec.H749||'","'|| drv1_rec.H750||'","'|| drv1_rec.H751||'","'|| drv1_rec.H752||'","'|| drv1_rec.H753||'","'|| drv1_rec.H754||'","'|| drv1_rec.H755||'","'|| 
        drv1_rec.H756||'","'|| drv1_rec.H757||'","'|| drv1_rec.H758||'","'|| drv1_rec.H759||'","'|| drv1_rec.H760||'","'|| drv1_rec.H761||'","'|| drv1_rec.H762||'","'|| 
        drv1_rec.H763||'","'|| drv1_rec.H764||'","'|| drv1_rec.H765||'","'|| drv1_rec.H766||'","'|| drv1_rec.H767||'","'|| drv1_rec.H768||'","'|| drv1_rec.H769||'","'|| 
        drv1_rec.H770||'","'|| drv1_rec.H771||'","'|| drv1_rec.H772||'","'|| drv1_rec.H773||'","'|| drv1_rec.H774||'","'|| drv1_rec.H775||'","'|| drv1_rec.H776||'","'|| 
        drv1_rec.H777||'","'|| drv1_rec.H778||'","'|| drv1_rec.H779||'","'|| drv1_rec.H780||'","'|| drv1_rec.H781||'","'|| drv1_rec.H782||'","'|| drv1_rec.H783||'","'|| 
        drv1_rec.H784||'","'|| drv1_rec.H785||'","'|| drv1_rec.H786||'","'|| drv1_rec.H787||'","'|| drv1_rec.H788||'","'|| drv1_rec.H789||'","'|| drv1_rec.H790||'","'|| 
        drv1_rec.H791||'","'|| drv1_rec.H792||'","'|| drv1_rec.H793||'","'|| drv1_rec.H794||'","'|| drv1_rec.H795||'","'|| drv1_rec.H796||'","'|| drv1_rec.H797||'","'|| 
        drv1_rec.H798||'","'|| drv1_rec.H799||'","'|| drv1_rec.H800||'","'|| drv1_rec.H801||'","'|| drv1_rec.H802||'","'|| drv1_rec.H803||'","'|| drv1_rec.H804||'","'|| 
        drv1_rec.H805||'","'|| drv1_rec.H806||'","'|| drv1_rec.H807||'","'|| drv1_rec.H808||'","'|| drv1_rec.H809||'","'|| drv1_rec.H810||'","'|| drv1_rec.H811||'","'|| 
        drv1_rec.H812||'","'|| drv1_rec.H813||'","'|| drv1_rec.H814||'","'|| drv1_rec.H815||'","'|| drv1_rec.H816||'","'|| drv1_rec.H817||'","'|| drv1_rec.H818||'","'|| 
        drv1_rec.H819||'","'|| drv1_rec.H820||'","'|| drv1_rec.H821||'","'|| drv1_rec.H822||'","'|| drv1_rec.H823||'","'|| drv1_rec.H824||'","'|| drv1_rec.H825||'","'|| 
        drv1_rec.H826||'","'|| drv1_rec.H827||'","'|| drv1_rec.H828||'","'|| drv1_rec.H829||'","'|| drv1_rec.H830||'","'|| drv1_rec.H831||'","'|| drv1_rec.H832||'","'|| 
        drv1_rec.H833||'","'|| drv1_rec.H834||'","'|| drv1_rec.H835||'","'|| drv1_rec.H836||'","'|| drv1_rec.H837||'","'|| drv1_rec.H838||'","'|| drv1_rec.H839||'","'|| 
        drv1_rec.H840||'","'|| drv1_rec.H841||'","'|| drv1_rec.H842||'","'|| drv1_rec.H843||'","'|| drv1_rec.H844||'","'|| drv1_rec.H845||'","'|| drv1_rec.H846||'","'|| 
        drv1_rec.H847||'","'|| drv1_rec.H848||'","'|| drv1_rec.H849||'","'|| drv1_rec.H850||'","'|| drv1_rec.H851||'","'|| drv1_rec.H852||'","'|| drv1_rec.H853||'","'|| 
        drv1_rec.H854||'","'|| drv1_rec.H855||'","'|| drv1_rec.H856||'","'|| drv1_rec.H857||'","'|| drv1_rec.H858||'","'|| drv1_rec.H859||'","'|| drv1_rec.H860||'","'|| 
        drv1_rec.H861||'","'|| drv1_rec.H862||'","'|| drv1_rec.H863||'","'|| drv1_rec.H864||'","'|| drv1_rec.H865||'","'|| drv1_rec.H866||'","'|| drv1_rec.H867||'","'|| 
        drv1_rec.H868||'","'|| drv1_rec.H869||'","'|| drv1_rec.H870||'","'|| drv1_rec.H871||'","'|| drv1_rec.H872||'","'|| drv1_rec.H873||'","'|| drv1_rec.H874||'","'|| 
        drv1_rec.H875||'","'|| drv1_rec.H876||'","'|| drv1_rec.H877||'","'|| drv1_rec.H878||'","'|| drv1_rec.H879||'","'|| drv1_rec.H880||'","'|| drv1_rec.H881||'","'|| 
        drv1_rec.H882||'","'|| drv1_rec.H883||'","'|| drv1_rec.H884||'","'|| drv1_rec.H885||'","'|| drv1_rec.H886||'","'|| drv1_rec.H887||'","'|| drv1_rec.H888||'","'|| 
        drv1_rec.H889||'","'|| drv1_rec.H890||'","'|| drv1_rec.H891||'","'|| drv1_rec.H892||'","'|| drv1_rec.H893||'","'|| drv1_rec.H894||'","'|| drv1_rec.H895||'","'|| 
        drv1_rec.H896||'","'|| drv1_rec.H897||'","'|| drv1_rec.H898||'","'|| drv1_rec.H899||'","'|| drv1_rec.H900||'","'|| drv1_rec.H901||'","'|| drv1_rec.H902||'","'|| 
        drv1_rec.H903||'","'|| drv1_rec.H904||'","'|| drv1_rec.H905||'","'||
        drv1_rec."END"||'"'
        );
    end loop;

    --- STEP 1. STU LINE
    dbms_output.put_line('... Extracting STU Records');     
    for drv1_rec in stu (run_mode)
    loop
        count_drv1_total := count_drv1_total +1;

        -- FAST FORWARD CODE -------
        ---if count_drv1_total < 180000 then
        ---    continue;
        ---else   
        ---    dbms_output.put_line('... '||drv1_rec.H003);
        ---end if;   
        -- FAST FORWARD CODE -------

        -- Initialise temporary variables
        T_H004 := null;
        T_H005 := null;
        T_H006 := null;
        T_H009 := null;
        T_H021 := null;        
        T_H022 := null;
        T_H023 := null;
        T_H041 := null;
        T_H042 := null;
        T_H043 := null;        
        T_H044 := null;
        T_H045 := null;
        T_H046 := null;
        T_H047 := null;
        T_H048 := null;
        T_H049 := null;
        T_H050 := null;
        T_H051 := null;
        T_H052 := null;
        T_H053 := null;
        T_H055 := null;
        T_H057 := null;
        T_H059 := null;
        T_H060 := null;
        T_H063 := null;
        T_H064 := null;
        T_H066 := null;
        T_H070 := null;
        T_H071 := null;
        T_H072 := null;
        T_H073 := null;        
        T_H081 := null;


        -- Transform temporary variables Starts
        --Surname
          open sn(drv1_rec.pers);
          fetch sn into sn_rec;
          if sn%found then
          T_H004 := sn_rec.note_text;
          else 
          T_H004 := drv1_rec.H004;
          end if;
          close sn;
        --GivenNames
          open gn(drv1_rec.pers);
          fetch gn into gn_rec;
          if gn%found then
          T_H005 := gn_rec.note_text;
          else 
          T_H005 := drv1_rec.H005;
          end if;
          close gn;

        -- Get latest ATSI status.
        open atsi(drv1_rec.pers);
        fetch atsi into atsi_rec;
        if atsi%found then 
            T_H022 := atsi_rec.atsi;
        else    
            T_H022 := 'NA';
        end if;
        close atsi;

        -- Get Admission Test details
        open atr(drv1_rec.pers);
        fetch atr into atr_rec;
        if atr%found then 
            /*
            TOEFL-PBT   TEST OF ENGLISH AS A FOREIGN LANGUAGE - PAPER BASED TESTI       Y
            TOEFL-CBT   TEST OF ENGLISH AS A FOREIGN LANGUAGE - COMPUTER BASED TESTI    Y
            VANTAGE     VANTAGE TEST FOR TEP STUDENTS                                   N
            TOEFL-IBT   TEST OF ENGLISH AS A FOREIGN LANGUAGE - INTERNET BASED TEST     N
            TOEFL       TEST OF ENGLISH AS A FOREIGN LANGUAGE                           N
            TCS         TEACHING CAPABILITY STATEMENT MNC                               N
            STAT        SPECIAL TERTIARY ADMISSIONS TEST                                N
            PEARSON     PEARSON TEST FOR ENGLISH (PTE)                                  N
            NZ          ACCOUNTANCY TEST FOR NZ APPROVED FOR ENTRY BY SATAC             N
            LANG-OTHER  OTHER ENGLISH LANGUAGE TEST                                     N
            IELTS       INTERNATIONAL ENGLISH LANGUAGE TERTIARY SCORE                   N
            CAMBRIDGE   CAMBRIDGE ENGLISH LANGUAGE ASSESSMENT                           N
            AUDITION    AUDITION                                                        N
            ACER-TEP    ACER TEST FOR TEP STUDENTS                                      N

            TOEFL-CBT   51   
            TOEFL-IBT   124  
            TOEFL-PBT   18   
            TOEFL       170  
            PEARSON     733  
            CAMBRIDGE   2    
            IELTS       3306                
            -------                        
            ACER-TEP    10456               has MATHS and ENGLISH subscores
            VANTAGE     7127                has only ENGLISH subscore
            STAT        10869               has overall score only
            LANG-OTHER  12                  has overall score only
            -------
            TCS         216                 neither overall score nor subscores
            NZ          1                   neither overall score nor subscores
            */
            /*
            Test Type                       H043
            Listening Score                 H044
            Reading Score                   H045
            Writing Score                   H046
            TWE Score                       H047
            Speaking Score                  H048
            Overall Score                   H049
            Tested                          H050
            Incomplete test                 H051
            Verified                        H052
            Verified By                     H053
            */
            case atr_rec.admission_test_type
                when 'TOEFL-PBT'  then T_H042 := 'TOEFL';
                when 'TOEFL-CBT'  then T_H042 := 'TOEFL';
                when 'TOEFL-IBT'  then T_H042 := 'TOEFL';
                when 'TOEFL'      then T_H042 := 'TOEFL';
                when 'PEARSON'    then T_H042 := 'PERSN';
                when 'CAMBRIDGE'  then T_H042 := 'CMBRG';
                when 'IELTS'      then T_H042 := 'IELTS';
                when 'ACER-TEP'   then T_H042 := 'ACTEP';
                when 'VANTAGE'    then T_H042 := 'VANTA';
              --when 'STAT'       then T_H042 := 'STAT';
                when 'LANG-OTHER' then T_H042 := 'OTHER';
                else T_H042 := 'OTHER';
            end case;
            for ats_rec in ats(atr_rec.person_id, atr_rec.sequence_number, atr_rec.admission_test_type)
            loop
                case ats_rec.subscore_type
                    when 'LISTENING'    then T_H043 := ats_rec.score;
                    when 'READING'      then T_H044 := ats_rec.score;
                    when 'WRITING'      then T_H045 := ats_rec.score;
                    when 'ENGLISH'      then T_H046 := ats_rec.score;
                    when 'SPEAKING'     then T_H047 := ats_rec.score;
                    when 'MATHS'        then null;
                    when 'ESSAY-RATE'   then null;
                    when 'STRUCTURE'    then null;
                    else  null;
                end case;
            end loop;
            T_H048 := atr_rec.result_score;    
            T_H049 := atr_rec.achieved_dt;
            T_H050 := 'TRUE';
            T_H051 := 'TRUE';
            T_H052 := null;
            T_H053 := null;
        end if;
        close atr;

        -- Get Study Reason
        open stdyrsn(drv1_rec.pers);
        fetch stdyrsn into stdyrsn_rec;
        if stdyrsn%found then 
            T_H073 := stdyrsn_rec.study_reason_cd;
        else    
            T_H073 := null;
        end if;
        close stdyrsn;

        -- Get disabilty details
        -- If an active disability record is found then the NoDisabilityFlag is FALSE else TRUE
        open disa(drv1_rec.pers);
        fetch disa into disa_rec;
        if disa%found then 
            T_H081 := 'FALSE';
        else    
            T_H081 := 'TRUE';
        end if;
        close disa;

        -- Get HE statistics
        open pshe(drv1_rec.pers);
        fetch pshe into pshe_rec;

        -- Get VET statistics
        open psvet(drv1_rec.pers);
        fetch psvet into psvet_rec;

        -- Get Home Language
        -- Get English Language Proficiency (VET only)
        -- Citizenship (HE only)
        -- Country of Birth 
        -- Get Resident details
        --0   STUDENT DOES NOT HAVE PERMANENT RESIDENT STATUS           H061
        --1   RESIDING INSIDE AUST FOR SEM OR OUTSIDE AUST AS REQ OF CRS
        --2   STUD RESIDING OUTSIDE AUST FOR SEM, NOT REQ OF COURSE     
        --3   ON ENROL DAY STUD HAD PERM RESID FOR MORE THAN 1 YEAR     H062
        --4   BEGAN COURSE IN 2005                                      

        case
            when (psvet%found and pshe%found) and (psvet_rec.start_dt >= pshe_rec.start_dt) then 
                -- Use VET values 
             --   T_H021 := psvet_rec.home_language_cd;

                if  psvet_rec.home_language_cd in ('1') then
                  T_H021 := '0001';
                else 
                  T_H021 := psvet_rec.home_language_cd;
                end if;
                T_H023 := psvet_rec.employment_cat;
                T_H041 := psvet_rec.spoken_english_prfcncy_cd;
                T_H055 := pshe_rec.citizenship_cd;
                T_H059 := CDU_T1_COUNTRY_CD(pshe_rec.home_location_country);
                T_H060 := CDU_T1_COUNTRY_CD(psvet_rec.birth_country_cd);

                -- Trap any unlisted country codes
                if T_H059 = 'UNLISTED' or T_H060 = 'UNLISTED' then 
                   dbms_output.put_line('Error 111:'||pshe_rec.home_location_country||':'||psvet_rec.birth_country_cd);
                   T_H059 := null;
                   T_H060 := null;                                    
                end if;

                T_H066 := Case when pshe_rec.yr_arrival between '1900'and '2027' then pshe_rec.yr_arrival
                               when pshe_rec.yr_arrival = 'A998' then '9998'
                               when pshe_rec.yr_arrival = 'A999' then '9999'
                               when pshe_rec.yr_arrival = '9999' then '9999'
                               when pshe_rec.yr_arrival = '9998' then '9998'
                               when pshe_rec.yr_arrival = '3082' then '2000'
                               when pshe_rec.yr_arrival = '3012' then '2012'
                               when pshe_rec.yr_arrival = '7009' then '2015'
                               when pshe_rec.yr_arrival = '3429' then '2000'
                               else null
                            end;
                T_H070 := psvet_rec.highest_school_level_comp_cd;
                T_H071 := psvet_rec.highest_school_level_comp_yr;                
                if psvet_rec.at_school_indicator = 'Y' then 
                    T_H072 := 'TRUE';
                else
                    T_H072 := 'FALSE';
                end if;        
                if pshe_rec.citizenship_cd in ('3','8') then 
                    T_H061 := 'TRUE';
                else 
                    T_H061 := 'FALSE';
                end if;
                if pshe_rec.perm_resident_cd = '3' then 
                    T_H063 := 'TRUE';
                else 
                    T_H063 := 'FALSE';
                end if;
                if pshe_rec.perm_resident_cd = '1' then 
                    T_H064 := 'TRUE';
                else 
                    T_H064 := 'FALSE';
                end if;
            when (psvet%found and pshe%found) and (pshe_rec.start_dt >= psvet_rec.start_dt) then                 
                -- Use HE values
              --  T_H021 := pshe_rec.home_language_cd;
               if  pshe_rec.home_language_cd  in ('1') then
                  T_H021 := '0001';
                else 
                  T_H021 := pshe_rec.home_language_cd ;
                end if;


                T_H023 := psvet_rec.employment_cat;
                T_H041 := psvet_rec.spoken_english_prfcncy_cd;
                T_H055 := pshe_rec.citizenship_cd;
                T_H059 := CDU_T1_COUNTRY_CD(pshe_rec.home_location_country);
                T_H060 := CDU_T1_COUNTRY_CD(pshe_rec.birth_country_cd);

                -- Trap any unlisted country codes
                if T_H059 = 'UNLISTED' or T_H060 = 'UNLISTED' then 
                   dbms_output.put_line('Error 112:'||pshe_rec.home_location_country||':'||pshe_rec.birth_country_cd);
                   T_H059 := null;
                   T_H060 := null;                                    
                end if;

                T_H066 := Case when pshe_rec.yr_arrival between '1900'and '2027' then pshe_rec.yr_arrival
                               when pshe_rec.yr_arrival = 'A998' then '9998'
                               when pshe_rec.yr_arrival = 'A999' then '9999'
                               when pshe_rec.yr_arrival = '9999' then '9999'
                               when pshe_rec.yr_arrival = '9998' then '9998'
                               when pshe_rec.yr_arrival = '3082' then '2000'
                               when pshe_rec.yr_arrival = '3012' then '2012'
                               when pshe_rec.yr_arrival = '7009' then '2015'
                               when pshe_rec.yr_arrival = '3429' then '2000'
                               else null
                            end;
                T_H070 := psvet_rec.highest_school_level_comp_cd;
                T_H071 := psvet_rec.highest_school_level_comp_yr;      

                if psvet_rec.at_school_indicator = 'Y' then 
                    T_H072 := 'TRUE';
                else
                    T_H072 := 'FALSE';
                end if;        
                if pshe_rec.citizenship_cd in ('3','8') then 
                    T_H061 := 'TRUE';
                else 
                    T_H061 := 'FALSE';
                end if;
                if pshe_rec.perm_resident_cd = '3' then 
                    T_H063 := 'TRUE';
                else 
                    T_H063 := 'FALSE';
                end if;
                if pshe_rec.perm_resident_cd = '1' then 
                    T_H064 := 'TRUE';
                else 
                    T_H064 := 'FALSE';
                end if;
            when (psvet%found and pshe%notfound) then 
                -- Use VET values
                T_H021 := psvet_rec.home_language_cd;
                T_H023 := psvet_rec.employment_cat;
                T_H041 := psvet_rec.spoken_english_prfcncy_cd;
                T_H055 := 'NA';
                T_H059 := null;
                T_H060 := CDU_T1_COUNTRY_CD(psvet_rec.birth_country_cd);

                -- Trap any unlisted country codes
                if T_H059 = 'UNLISTED' or T_H060 = 'UNLISTED' then 
                   dbms_output.put_line('Error 113:'||psvet_rec.birth_country_cd);
                   T_H059 := null;
                   T_H060 := null;                                    
                end if;

                T_H066 := null;
                T_H070 := psvet_rec.highest_school_level_comp_cd;
                T_H071 := psvet_rec.highest_school_level_comp_yr;                
                if psvet_rec.at_school_indicator = 'Y' then 
                    T_H072 := 'TRUE';
                else
                    T_H072 := 'FALSE';
                end if;        
                T_H061 := null;
                T_H063 := null;
                T_H064 := null;
                --dbms_output.put_line('Value of citizenship' ||T_H055);
            when (pshe%found and psvet%notfound) then 
                -- Use HE values
                T_H021 := pshe_rec.home_language_cd;
                T_H023 := null;
                T_H041 := null;
                T_H055 := pshe_rec.citizenship_cd;
                T_H059 := CDU_T1_COUNTRY_CD(pshe_rec.home_location_country);
                T_H060 := CDU_T1_COUNTRY_CD(pshe_rec.birth_country_cd);

                -- Trap any unlisted country codes
                if T_H059 = 'UNLISTED' or T_H060 = 'UNLISTED' then 
                   dbms_output.put_line('Error 114:'||pshe_rec.home_location_country||':'||pshe_rec.birth_country_cd);
                   T_H059 := null;
                   T_H060 := null;                                    
                end if;

                T_H066 := Case when pshe_rec.yr_arrival between '1900'and '2027' then pshe_rec.yr_arrival
                               when pshe_rec.yr_arrival = 'A998' then '9998'
                               when pshe_rec.yr_arrival = 'A999' then '9999'
                               when pshe_rec.yr_arrival = '9999' then '9999'
                               when pshe_rec.yr_arrival = '9998' then '9998'
                               when pshe_rec.yr_arrival = '3082' then '2000'
                               when pshe_rec.yr_arrival = '3012' then '2012'
                               when pshe_rec.yr_arrival = '7009' then '2015'
                               when pshe_rec.yr_arrival = '3429' then '2000'
                               else null
                            end;
                T_H070 := null;
                T_H071 := null;
                T_H072 := null;
                if pshe_rec.citizenship_cd in ('3','8') then 
                    T_H061 := 'TRUE';
                else 
                    T_H061 := 'FALSE';
                end if;
                if pshe_rec.perm_resident_cd = '3' then 
                    T_H063 := 'TRUE';
                else 
                    T_H063 := 'FALSE';
                end if;
                if pshe_rec.perm_resident_cd = '1' then 
                    T_H064 := 'TRUE';
                else 
                    T_H064 := 'FALSE';
                end if;
            when (pshe%notfound and psvet%notfound) then 
                T_H021 := 'NA';
                T_H023 := 'NA';
                T_H041 := 'NA';
                T_H055 := 'NA';
                T_H059 := null;
                --dbms_output.put_line('0.Value of citizenship' ||T_H055);
                T_H060 := 'NA';
                T_H066 := null;
                T_H070 := 'NA';
                T_H071 := null;
                T_H072 := null;
            else dbms_output.put_line(drv1_rec.H003||' - uh-oh');
        end case;


        -- Set CitizenshipCountry using Application if International and is null
        if T_H059 is null then
           begin
           open ai (drv1_rec.pers);
           fetch ai into ai_rec;
           if ai%found then
                T_H059 := CDU_T1_COUNTRY_CD(ai_rec.primary_nationality_cd);           
                -- Trap any unlisted country codes
                if T_H059 = 'UNLISTED' then
                   dbms_output.put_line('Error 115:'||drv1_rec.H003||':'||ai_rec.primary_nationality_cd);
                   T_H059 := null;
                end if;
--- Debug       dbms_output.put_line('->'||drv1_rec.H003||':'||ai_rec.primary_nationality_cd);
           end if;
           close ai;
           end;   
        end if;   

        -- Additional transformations
        if T_H021 = '1'              then T_H021 := '0001';  end if;
        if T_H021 ='@@@@'            then T_H021 := '9999';  end if;
        if T_H023 = '@@'             then T_H023 := 'NA';    end if;
        if T_H042 = '@'              then T_H042 := 'NA'  ;  end if;
        if T_H055 = '9'              then T_H055 := 'NA'  ;  end if;
    --    if T_H066 in ('A999','0001') then T_H066 := null  ;  end if;
        if T_H073 = '@@'             then T_H073 := 'NA'  ;  end if;
        if T_H041 = '@'              then T_H041 := 'NA'  ;   end if;
        if T_H070 is null            then T_H070 := '99'  ;   end if;

        -- dbms_output.put_line('a' ||T_H005 );
        -- Middle Name
        if cdu_apex.cdu.get_index_value(T_H005, 1, ' ') = cdu_apex.cdu.get_index_value(drv1_rec.H009 , 1, ' ') and 

          instr(T_H005, trim(drv1_rec.H009 ) || ' ') > 0 and

            length(trim(T_H005)) <> length(trim(drv1_rec.H009 )) then

            T_H005 := drv1_rec.H009;
            T_H006 := replace(drv1_rec.H005,drv1_rec.H009, '');     
        else
            T_H005 := T_H005;
            T_H006 := null;

        end if;

        if T_H004 ='.' then 

           T_H004 :=T_H005;
           T_H005 := null;

        else 
            T_H004 := T_H004;
            T_H005 := T_H005;

        end if;
       ----if preferred name equals to family name and othernames then blank out preferred name  
        if nvl(drv1_rec.H009,'NA') = nvl(T_H004,'NA') and nvl(T_H004,'NA') = nvl(T_H006,'NA')   then 
              T_H009 := null;
        else
             T_H009 := drv1_rec.H009;
        end if;
        -- dbms_output.put_line('Given Name' ||T_H005 );
        ------

    -- Citizenship Effective date
        begin
        open CITZ(drv1_rec.pers);
        fetch citz into citz_rec;
        if citz%found then 
            T_H057 := to_char(citz_rec.start_dt,'DD/MON/YYYY'); 
        else 
            --T_H057 := to_char(nvl(drv1_rec.H013,'01/JAN/1990'),'DD/MON/YYYY') ;
            --T_H057 := to_char(drv1_rec.H013,'DD/MON/YYYY');
            --What should this date be if no person_statistics record is found?????? 
            T_H057 := null;
        end if;
        close citz;
        exception
            when others then dbms_output.put_line('Error:'||drv1_rec.H003||':'||citz_rec.start_dt||':'||drv1_rec.H013);
                             dbms_output.put_line('SQLCODE: '|| SQLCODE);
                             dbms_output.put_line('SQLERRM: '|| SQLERRM);
        end;

      -- Person Chessn
        open chessn(drv1_rec.pers);
        fetch chessn into chessn_rec;
        if chessn%found then
            T_H037 := chessn_rec.chessn;
            T_H038 := chessn_rec.chessndate;
            T_H039 := chessn_rec.method;
        else 
            T_H037 := null;
            T_H038 := null;
            T_H039 := null;
        end if;
        close chessn;

        -- Transform temporary variables Ends

        -- Write out record with temporary variables
        begin
        /*
        utl_file.put_line(out_file_1,'"'||
        drv1_rec.RANK||'","'||
        drv1_rec.LINETYPE||'","'||
        drv1_rec.H003||'","'||T_H004       ||'","'||T_H005       ||'","'||T_H006       ||'","'||drv1_rec.H007||'","'||drv1_rec.H008||'","'||T_H009       ||'","'||
        drv1_rec.H010||'","'||drv1_rec.H011||'","'||drv1_rec.H012||'","'||drv1_rec.H013||'","'||drv1_rec.H014||'","'||drv1_rec.H015||'","'||drv1_rec.H016||'","'||
        drv1_rec.H017||'","'||drv1_rec.H018||'","'||drv1_rec.H019||'","'||drv1_rec.H020||'","'||T_H021       ||'","'||T_H022       ||'","'||drv1_rec.H023||'","'||
        drv1_rec.H024||'","'||drv1_rec.H025||'","'||drv1_rec.H026||'","'||drv1_rec.H027||'","'||drv1_rec.H028||'","'||drv1_rec.H029||'","'||drv1_rec.H030||'","'||
        drv1_rec.H031||'","'||drv1_rec.H032||'","'||drv1_rec.H033||'","'||drv1_rec.H034||'","'||drv1_rec.H035||'","'||drv1_rec.H036||'","'||T_H037       ||'","'||                                        
        T_H038       ||'","'||T_H039       ||'","'||drv1_rec.H040||'","'||T_H041       ||'","'||T_H042       ||'","'||T_H043       ||'","'||T_H044       ||'","'||
        T_H045       ||'","'||T_H046       ||'","'||T_H047       ||'","'||T_H048       ||'","'||T_H049       ||'","'||T_H050       ||'","'||T_H051       ||'","'||
        T_H052       ||'","'||T_H053       ||'","'||drv1_rec.H054||'","'||T_H055       ||'","'||drv1_rec.H056||'","'||T_H057       ||'","'||drv1_rec.H058||'","'||        
        T_H059      ||'","'||T_H060       ||'","'||drv1_rec.H061||'","'||drv1_rec.H062||'","'||T_H063       ||'","'||T_H064       ||'","'||drv1_rec.H065||'","'||
        T_H066       ||'","'||drv1_rec.H067||'","'||drv1_rec.H068||'","'||drv1_rec.H069||'","'||T_H070       ||'","'||T_H071       ||'","'||T_H072       ||'","'||
        T_H073       ||'","'||drv1_rec.H074||'","'||drv1_rec.H075||'","'||drv1_rec.H076||'","'||drv1_rec.H077||'","'||drv1_rec.H078||'","'||drv1_rec.H079||'","'||
        drv1_rec.H080||'","'||T_H081       ||'"'|| 
        stu_post_null||','||
        drv1_rec."END"
        );
        */
        utl_file.put_line(out_file_2,'"'||drv1_rec.KEY||'","'||
        drv1_rec.RANK||'","'||
        drv1_rec.LINETYPE||'","'||
        drv1_rec.H003||'","'||T_H004       ||'","'||T_H005       ||'","'||T_H006       ||'","'||drv1_rec.H007||'","'||drv1_rec.H008||'","'||T_H009       ||'","'||
        drv1_rec.H010||'","'||drv1_rec.H011||'","'||drv1_rec.H012||'","'||drv1_rec.H013||'","'||drv1_rec.H014||'","'||drv1_rec.H015||'","'||drv1_rec.H016||'","'||
        drv1_rec.H017||'","'||drv1_rec.H018||'","'||drv1_rec.H019||'","'||drv1_rec.H020||'","'||T_H021       ||'","'||T_H022       ||'","'||drv1_rec.H023||'","'||
        drv1_rec.H024||'","'||drv1_rec.H025||'","'||drv1_rec.H026||'","'||drv1_rec.H027||'","'||drv1_rec.H028||'","'||drv1_rec.H029||'","'||drv1_rec.H030||'","'||
        drv1_rec.H031||'","'||drv1_rec.H032||'","'||drv1_rec.H033||'","'||drv1_rec.H034||'","'||drv1_rec.H035||'","'||drv1_rec.H036||'","'||drv1_rec.H037||'","'||                                        
        drv1_rec.H038||'","'||drv1_rec.H039||'","'||drv1_rec.H040||'","'||T_H041       ||'","'||T_H042       ||'","'||T_H043       ||'","'||T_H044       ||'","'||
        T_H045       ||'","'||T_H046       ||'","'||T_H047       ||'","'||T_H048       ||'","'||T_H049       ||'","'||T_H050       ||'","'||T_H051       ||'","'||
        T_H052       ||'","'||T_H053       ||'","'||drv1_rec.H054||'","'||T_H055       ||'","'||drv1_rec.H056||'","'||T_H057       ||'","'||drv1_rec.H058||'","'||        
        T_H059       ||'","'||T_H060       ||'","'||drv1_rec.H061||'","'||drv1_rec.H062||'","'||T_H063       ||'","'||T_H064       ||'","'||drv1_rec.H065||'","'||
        T_H066       ||'","'||drv1_rec.H067||'","'||drv1_rec.H068||'","'||drv1_rec.H069||'","'||T_H070       ||'","'||T_H071       ||'","'||T_H072       ||'","'||
        T_H073       ||'","'||drv1_rec.H074||'","'||drv1_rec.H075||'","'||drv1_rec.H076||'","'||drv1_rec.H077||'","'||drv1_rec.H078||'","'||drv1_rec.H079||'","'||
        drv1_rec.H080||'","'||T_H081       ||'"'|| 
        stu_post_null||','||
        drv1_rec."END"
        );
        count_stu_export := count_stu_export +1;
        exception
           when others then count_drv1_error := count_drv1_error + 1;
                            dbms_output.put_line('Error: 3000 - '||drv1_rec.H003);
                            dbms_output.put_line('SQLCODE: '|| SQLCODE);
                            dbms_output.put_line('SQLERRM: '|| SQLERRM);
        end;      


-----> moved from higher up
    --     1.6 STUGUARDIAN LINES        
        if pshe%found then
            t_prnt_grdn_hea_cd := null;
            t_idx :=1;
            for i in 1 .. 2
            loop
                case i
                    when 1 then t_prnt_grdn_hea_cd := pshe_rec.PRNT_GRDN_1_HEA_CD;
                    when 2 then t_prnt_grdn_hea_cd := pshe_rec.PRNT_GRDN_2_HEA_CD;
                end case;
                    if t_prnt_grdn_hea_cd is not null then
--Delete Existing Guardian Lines
--                        utl_file.put_line(out_file_2,'"1.6","STUGUARDIAN"'||
--                        stuguardian_pre_null||',"'||
--                        t_idx||'","'||
--                        case 
--                            when t_prnt_grdn_hea_cd = '49'                 then 'M'
--                            when t_prnt_grdn_hea_cd = '59'                 then 'F'
--                            when t_prnt_grdn_hea_cd between '20' and '26'  then 'M'
--                            when t_prnt_grdn_hea_cd between '40' and '46 ' then 'F'
--                            else '9'
--                        end 
--                        ||'","'||
--                        case t_prnt_grdn_hea_cd
--                            when '60' then 'UNK'
--                            when '98' then '$NAP'
--                            when '99' then 'NA'
--                            else
--                                case substr(t_prnt_grdn_hea_cd,2,1)
--                                    when '0' then 'PG'
--                                    when '1' then 'BACH'
--                                    when '2' then 'OTH'
--                                    when '3' then 'Y12'
--                                    when '4' then 'Y12N'
--                                    when '5' then 'Y10'
--                                    when '6' then 'Y10N'
--                                    when '8' then '$NAP'
--                                    else 'UNk'
--                                end
--                        end
--                        ||'","'||
--                        'TRUE'||'"'||
--                        stuguardian_post_null||',"END"');
--Creating New Guardian Lines 
     utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUGUARDIAN'||','||'"1.6","STUGUARDIAN"'||
                        stuguardian_pre_null||',"'||
                        t_idx||'","'||
                        case 
                            when t_prnt_grdn_hea_cd = '49'                 then 'M'
                            when t_prnt_grdn_hea_cd = '59'                 then 'F'
                            when t_prnt_grdn_hea_cd between '20' and '26'  then 'M'
                            when t_prnt_grdn_hea_cd between '40' and '46 ' then 'F'
                            else '9'
                        end 
                        ||'","'||
                        case t_prnt_grdn_hea_cd
                            when '60' then 'UNK'
                            when '98' then '$NAP'
                            when '99' then 'NA'
                            else
                                case substr(t_prnt_grdn_hea_cd,2,1)
                                    when '0' then 'PG'
                                    when '1' then 'BACH'
                                    when '2' then 'OTH'
                                    when '3' then 'Y12'
                                    when '4' then 'Y12N'
                                    when '5' then 'Y10'
                                    when '6' then 'Y10N'
                                    when '8' then '$NAP'
                                    else 'UNk'
                                end
                        end
                        ||'","'||
                        'FALSE'||'"'||
                        stuguardian_post_null||',"END"');
                        t_idx := t_idx + 1;
                        count_stuguardian_export := count_stuguardian_export + 1;                        
                    end if;
            end loop;
         end if;
----        /*  Guardian Education Levels
----        30  20  POSTGRAD QUALIFICATION (EG POSTGRAD DIP, MASTER, PHD)       
----        31  21  BACHELOR DEGREE                                             
----        32  22  OTHER POST SCH QUAL (EG VET CERT, ASSO DEGREE, DIP)         
----        33  23  COMPLETED YR 12 SCHOOLING OR EQUIVALENT                     
----        34  24  DID NOT COMPLETE YR 12 SCHOOLING OR EQUIVALENT              
----        35  25  COMPLETED YR 10 SCHOOLING OR EQUIVALENT                     
----        36  26  DID NOT COMPLETE YR 10 SCHOOLING OR EQUIVALENT              
----
----        20  20  MALE - POSTGRAD QUALIFICATION (EG POSTGRAD DIP,MASTER,PHD)  
----        21  21  MALE - BACHELOR DEGREE                                      
----        22  22  MALE - OTHER POST SCH QUAL (EG VET CERT, ASSO DEGREE, DIP)  
----        23  23  MALE - COMPLETED YR 12 SCHOOLING OR EQUIVALENT              
----        24  24  MALE - DID NOT COMPLETE YR 12 SCHOOLING OR EQUIVALENT       
----        25  25  MALE - COMPLETED YR 10 SCHOOLING OR EQUIVALENT              
----        26  26  MALE - DID NOT COMPLETE YR 10 SCHOOLING OR EQUIVALENT       
----
----        40  40  FEMALE - POSTGRAD QUALIFICATION (EG POSTGRAD DIP,MASTER,PHD)
----        41  41  FEMALE - BACHELOR DEGREE                                    
----        42  42  FEMALE - OTHER POST SCH QUAL (EG VET CERT, ASSO DEGREE, DIP)
----        43  43  FEMALE - COMPLETED YR 12 SCHOOLING OR EQUIVALENT            
----        44  44  FEMALE - DID NOT COMPLETE YR 12 SCHOOLING OR EQUIVALENT     
----        45  45  FEMALE - COMPLETED YR 10 SCHOOLING OR EQUIVALENT            
----        46  46  FEMALE - DID NOT COMPLETE YR 10 SCHOOLING OR EQUIVALENT     
----
----        49  49  MALE - DON'T KNOW                                           
----        59  59  FEMALE - DON'T KNOW                                         
----        60  49  DO NOT KNOW                                                 
----        98  98  NOT APPLICABLE                                              
----        99  99  NO INFORMATION PROVIDED BY THE STUDENT                      
----        */
----        
----        /***
----        select * from person_statistics;
----        select * from citizenship_cd;
----        1   AUSTRALIAN CITIZEN INCL AUST.CITIZENS WITH DUAL CITIZENSHIP N
----        2   NEW ZEALAND CITIZEN,DIPLOMAT OR CONSULAR EXCL .AUST CITIZEN N
----        3   PERMANENT RESIDENT (EXCL. HUMANITARIAN)                     N
----        4   TEMP ENTRY PERMIT + IN AUST.DURING SEMESTER                 N
----        5   STATUS OTHER THAN 1,2,3 OR 4 ABOVE                          N
----        8   STUDENTS WITH PERMANENT HUMANITARIAN VISA                   N
----        9   NO INFORMATION AVAILABLE                                    Y
----        When Citizenship_cd in (3,8) then Permanent Resident
----
----        select * from perm_resident_cd;
----        0   STUDENT DOES NOT HAVE PERMANENT RESIDENT STATUS             N   0
----        1   RESIDING INSIDE AUST FOR SEM OR OUTSIDE AUST AS REQ OF CRS  Y   1
----        2   STUD RESIDING OUTSIDE AUST FOR SEM, NOT REQ OF COURSE       N   2
----        3   ON ENROL DAY STUD HAD PERM RESID FOR MORE THAN 1 YEAR       Y   3
----        4   BEGAN COURSE IN 2005                                        Y   0
----
----        select citizenship_cd, perm_resident_cd, count(*) from person_statistics ps group by citizenship_cd, perm_resident_cd having ps.perm_resident_cd not in ('0','4') order by 1,2;
----        CITZ PERM COUNT
----        2    1    69  
----        2    2    4   
----        2    3    57  
----        3    1    1304
----        3    2    31  
----        3    3    531 
----        ***/
----
----        --- 1.11 STUHLP LINES
        if pshe%found then
            --pshe_rec.highest_attain        
            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUHLP'||','||'"1.11","STUHLP"'||
            stuhlp_pre_null
            ||',"'||
            '1","'||
            to_char(pshe_rec.start_dt,'DD/MON/YYYY')||'","'||
            Case when nvl(substr(pshe_rec.highest_attain,1,2),'NA') in ('09') then 'NA' 
            else nvl(substr(pshe_rec.highest_attain,1,2),'NA') end||'","'||
            --substr(pshe_rec.highest_attain,3,4)
            ' '||'","'||
            'FALSE'||'"'||
            stuhlp_post_null||',"END"'
            );
            count_stuhlp_export := count_stuhlp_export + 1;                        
        end if;
        close pshe;
        close psvet;

--
--
        -- 1.1 STUEMAIL LINES
  --       Write out a STUEMAIL record at the same time
        begin
            --utl_file.put_line(out_file_1,'"1.1","STUEMAIL"'||
            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUEMAIL'||','||'"1.1","STUEMAIL"'||            
            stuemail_pre_null
            ||',"STUD","'||
             's'||drv1_rec.H003||'@students.cdu.edu.au'
            ||'",'||
            '"",'||
            'TRUE,'||
            'FALSE,'||
            'FALSE'||
            stuemail_post_null||',"END"'
            );
            count_stuemail_export := count_stuemail_export + 1;                        
        exception
           when others then count_stuemail_error := count_stuemail_error + 1;
                            dbms_output.put_line('Error: 3001 - '||drv1_rec.H003);
                            dbms_output.put_line('SQLCODE: '|| SQLCODE);
                            dbms_output.put_line('SQLERRM: '|| SQLERRM);
        end;      
--
----       ---STUDISAB LINES
       for studisab_rec in studisab(drv1_rec.pers)
       loop
       utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUDISAB'||','||'"1.2","STUDISAB"'||
            studisab_pre_null||',"'||
            studisab_rec.Disability||'",'||
            '"TRUE"'||
            studisab_post_null||','||
            '"END"'
            );
        count_studisab_export := count_studisab_export + 1;                        
        end loop;
--       
--       
--        --- 1.2 STUDISABTYPE LINES
        for studisabtype_rec in studisabtype(drv1_rec.pers)
        loop
            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUDISABTYPE'||','||'"1.2","STUDISABTYPE"'||
            studisabtype_pre_null
            ||',"'||
            studisabtype_rec.H107||'","'||
            studisabtype_rec.H108||'","'||
            studisabtype_rec.H109
            ||'"'||
            studisabtype_post_null||',"END"'
            );
            count_studisabtype_export := count_studisabtype_export + 1;                        
        end loop;
--        
--        --- 1.3 STUPHONE LINES
--        --- 1.3.1 Home, Work and Mobile
        open phhwm(drv1_rec.pers);
        fetch phhwm into phhwm_rec;
        if phhwm%found then 
            if replace(translate(phhwm_rec.phone_1,chr(10)||chr(13),' '),chr(32),null) is not null then 
                utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUPHONE'||','||'"1.3.1","STUPHONE"'||
                stuphone_pre_null
                ||',"$HM","'||phhwm_rec.phone_1||'","","","","","","FALSE"'||
                stuphone_post_null||',"END"');
                count_stuphone_export := count_stuphone_export + 1;                        
            end if;

            if replace(translate(phhwm_rec.phone_2,chr(10)||chr(13),' '),chr(32),null) is not null then 
                utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUPHONE'||','||'"1.3.2","STUPHONE"'||
                stuphone_pre_null
                ||',"$WK","'||phhwm_rec.phone_2||'","","","","","","FALSE"'||
                stuphone_post_null||',"END"');
                count_stuphone_export := count_stuphone_export + 1;                        
            end if;

            if replace(translate(phhwm_rec.phone_3,chr(10)||chr(13),' '),chr(32),null)is not null then 
                utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUPHONE'||','||'"1.3.3","STUPHONE"'||
                stuphone_pre_null
                ||',"$MOB","'||phhwm_rec.phone_3||'","","","","","","FALSE"'||
                stuphone_post_null||',"END"');
                count_stuphone_export := count_stuphone_export + 1;                        
            end if;
        end if;
        close phhwm;
--
--        --- 1.3.4 Fax
        open phfax(drv1_rec.pers); 
        fetch phfax into phfax_rec;
        if phfax%found then 
            if replace(translate(phfax_rec.phone_1,chr(10)||chr(13),' '),chr(32),null) is not null then 
                utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUPHONE'||','||'"1.3.4","STUPHONE"'||
                stuphone_pre_null
                ||',"$FAX","'||phfax_rec.phone_1||'","","","","","","FALSE"'||
                stuphone_post_null||',"END"');
                count_stuphone_export := count_stuphone_export + 1;                        
            end if;
        end if;
        close phfax;
--                
--        --- 1.4 STUOTHCNTCT LINES
        open phemg(drv1_rec.pers);
        fetch phemg into phemg_rec;
        if phemg%found then 
            if phemg_rec.addr_type = 'OS-HOME' then 
                if  replace(translate(phemg_rec.phone_1,chr(10)||chr(13),' '),chr(32),null) is not null then 
                    utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUOTHCNTCT'||','||'"1.4","STUOTHCNTCT"'||
                    stuothcntct_pre_null
                    ||',"$E","'||nvl(phemg_rec.other_details,'NA')||'","OT","'||phemg_rec.phone_1||'","'||
                    case 
                      when phemg_rec.phone_2 <> phemg_rec.phone_1 then phemg_rec.phone_2
                      else null
                    end  
                    ||'","","","NA","","","","","","","FALSE"'||
                    stuothcntct_post_null||',"END"');                      
                    count_stuothcntct_export := count_stuothcntct_export + 1;                        
                end if;        
            else  -- HOME and CEN-HOME
                if replace(translate(phemg_rec.phone_2,chr(10)||chr(13),' '),chr(32),null) is not null then 
                    utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUOTHCNTCT'||','||'"1.4","STUOTHCNTCT"'||
                    stuothcntct_pre_null
                    ||',"$E","'||nvl(phemg_rec.other_details,'NA')||'","OT","'||phemg_rec.phone_2||'","'||
                    case 
                      when phemg_rec.phone_3 <> phemg_rec.phone_2 then phemg_rec.phone_3
                      else null
                    end  
                    ||'","","","NA","","","","","","","FALSE"'||
                    stuothcntct_post_null||',"END"');                      
                    count_stuothcntct_export := count_stuothcntct_export + 1;
                end if;
            end if;
        end if;
        close phemg;
----
----        --- 1.5 STUALTID LINES
        for apid_rec in apid(drv1_rec.pers)
        loop
            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUALTID'||','||'"1.5","STUALTID"'||
            stualtid_pre_null
            ||',"'||
            case apid_rec.person_id_type
                when 'SATAC'         then 'SATAC'   ---Include
                when 'TCI'           then 'TCI'
                when 'CENTRALIAN'    then 'CEN'
                when 'ACI'           then '$AN'
                when 'STUDYLINK'     then 'SLNK'    -- Include
                when 'OBSOLETE'      then 'OBSOLT'
                when 'OSSI'          then 'OSSI'
                when 'STAFF'         then 'STAFF'
                when 'UAC'           then 'UAC'     -----Include
                when 'C-LINK-CRN'    then '$CRN'
                when 'OUA'           then 'OLA'
                when 'COT'           then 'COT'
                when 'BIITE'         then 'BIITE'
                when 'JOB-SEEK'      then 'JOBSEEK'
                else null
            end 
            ||'","'||
            apid_rec.api_person_id||'","'||
            case apid_rec.person_id_type
                when 'SATAC'      then substr(apid_rec.api_person_id,1,instr(apid_rec.api_person_id,':',1,1)-1)
                when 'UAC'        then substr(apid_rec.api_person_id,1,instr(apid_rec.api_person_id,':',1,1)-1)
                when 'STUDYLINK'  then extract(year from apid_rec.start_dt)
                else nvl(extract(year from apid_rec.start_dt),'1900')
            end
            ||'","","","","FALSE"'||
            stualtid_post_null||',"END"'
            );

            count_stualtid_export := count_stualtid_export + 1;                        
        end loop;

        ---1.5 STUALTID LINES(PERSON USI)
         open usi(drv1_rec.pers);
          fetch usi into usi_rec;
          if usi%found then 
          utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUALTID'||','||'"1.5.2","STUALTID"'||
            stualtid_pre_null
            ||',"'||
            'USI'
            ||'","'||
            usi_rec.person_usi||'","","'||usi_rec.verification_dt||'","","","FALSE"'||
            stualtid_post_null||',"END"'
            );
            end if;
        close usi;

            count_stualtid_export := count_stualtid_export + 1;  

        --- 1.7 STUADDR LINES        
        /*
        POSTAL      POSTAL ADDRESS                      297035
        HOME        HOME ADDRESS                        250702
        OS-HOME     OVERSEAS HOME ADDRESS               15167 
        OS-POSTAL   OVERSEAS POSTAL ADDRESS             12078 
        SEMESTER    SEMESTER ADDRESS                    49786 
        EMPLOYER    EMPLOYER ADDRESS                    38539 
        SPONSOR     SPONSORSHIP ADDRESS                 3852  
        APP-AGENT   APPRENTICE AGENT                    260   
        SCHOOL-APP  SCHOOL BASED APPRENTICE             451   
        */        

/*** deprecated 26 Sept 2022 by Dennis
        for t_idx in 1..3
        loop
         case t_idx
          when  1 then t_addr_type := '$T';
          when  2 then t_addr_type := 'C';
          when  3 then t_addr_type := 'P';
         end case;

          open addr(drv1_rec.H003,t_addr_type);
          --dbms_output.put_line('4');
          fetch addr into addr_rec;
          if addr%found then
            utl_file.put_line(out_file,'"1.7","STUADDR"'||
            stuaddr_pre_null
            ||',"'||
            addr_rec.addr_Type
            ||'","'||
            replace(translate(addr_rec.addr_line_1,chr(10)||chr(13),' '),chr(34),'''')||'","'||
            replace(translate(addr_rec.addr_line_2,chr(10)||chr(13),' '),chr(34),'''')||'","'||
            replace(translate(addr_rec.addr_line_3,chr(10)||chr(13),' '),chr(34),'''')||'","'||
            replace(translate(addr_rec.addr_line_4,chr(10)||chr(13),' '),chr(34),'''')||'","'||
            replace(translate(addr_rec.addr_line_5,chr(10)||chr(13),' '),chr(34),'''')||'","'||
            case 
                when addr_rec.addr_type1 in ('OS-HOME','OS-POSTAL') then addr_rec.os_code
                when length(addr_rec.aust_postcode) = 3 then '0'||to_char(addr_rec.aust_postcode)
                else to_char(addr_rec.aust_postcode)
            end
            ||'","'||
            case addr_rec.addr_type1
                when 'OS-HOME'   then T_H060
                else '0001'
            end    
            ||'","'|| 
            case when addr_rec.addr_type1 in ('POSTAL','OS-POSTAL') then 'Yes'
            else 'No'
            end
            ||'","'||
            case when addr_rec.addr_type in ('$T') then addr_rec.start_dt else null end||'","'||
            case when addr_rec.addr_type1 in ('$T') then addr_rec.end_dt  else null end||'","'||            
            '","","","","","","FALSE"'||
            stuaddr_post_null||',"END"'
            );
            count_stuaddr_export := count_stuaddr_export + 1;   
            end if;
            close addr;
        end loop;
***/

-- International Address
        t_addr_new_code := ' ';
        t_prefadd_val       := 'Yes';
        t_prefadd_flag      :='N';

        IF cdu_t1_is_intl(drv1_rec.pers)='Y' then
                
         for addr_rec in addr_intl (drv1_rec.pers)

         loop
            if t_addr_new_code <> addr_rec.t1_addr_new_code and addr_rec.end_dt is null then
            if t_prefadd_flag  = 'N' then t_prefadd_val := 'Yes'; else t_prefadd_val := 'No'; end if;
              --  dbms_output.put_line('Newline->'||addr_rec.intl||':'||addr_rec.t1_addr_new_code||':'||addr_rec.t1_addr_old_code||':'||addr_rec.addr_type||':'||addr_rec.start_dt||':'||addr_rec.end_dt);
                utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUADDR'||','||'"1.7","STUADDR"'||
                stuaddr_pre_null
                ||',"'||
                addr_rec.t1_addr_new_code
                ||'","'||
                nvl(replace(replace(translate(addr_rec.addr_line_1,chr(10)||chr(13),' '),chr(34),''''),chr(32),''),'NA')||'","'||
                replace(translate(addr_rec.addr_line_2,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_3,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_4,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_5,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                case 
                    when addr_rec.addr_type in ('OS-HOME','OS-POSTAL') then addr_rec.os_code
                    when length(addr_rec.aust_postcode) = 3 then '0'||to_char(addr_rec.aust_postcode)
                    else to_char(addr_rec.aust_postcode)
                end
                ||'","'||
                case addr_rec.addr_type
                    when 'OS-HOME'   then 'NA'
                    when 'OS-POSTAL' then 'NA'
                   -- when 'CEN-HOME'  then T_H060
                    else '0001' --This is for postal,home,employer,centralian home
                end    
                ||'","'|| 
                t_prefadd_val
                ||'","'||
                -- According to import definition, the Start and End Date only applies to the $T date
                case when addr_rec.t1_addr_new_code in ('$T') then addr_rec.start_dt else null end||'","'||
                case when addr_rec.t1_addr_new_code in ('$T') then addr_rec.end_dt   else null end||'","'||
                '","","","","","","FALSE"'||
                stuaddr_post_null||',"END"'
                );
                count_stuaddr_export := count_stuaddr_export + 1; 
                if t_prefadd_val = 'Yes' and addr_rec.t1_addr_new_code='$T' then t_prefadd_flag := 'N'; else t_prefadd_flag := 'Y'; end if;
                
               
                
            end if;
            --dbms_output.put_line('Oldline->'||addr_rec.intl||':'||addr_rec.t1_addr_new_code||':'||addr_rec.t1_addr_old_code||':'||addr_rec.addr_type||':'||addr_rec.start_dt||':'||addr_rec.end_dt);
            t_addr_new_code := addr_rec.t1_addr_new_code;
          end loop;
  -- International Student History Records  
          
         
          
           for addr_rec in addr_intl_hist (drv1_rec.pers)
         
         loop
         --  else t_prefadd_flag :='No'; end if;
            if t_addr_new_code <> addr_rec.t1_addr_new_code and addr_rec.end_dt is not null then
             if t_prefadd_flag = 'Y' then t_prefadd_val := 'No'; else t_prefadd_val := 'Yes'; end if; 
              --  dbms_output.put_line('Newline->'||addr_rec.intl||':'||addr_rec.t1_addr_new_code||':'||addr_rec.t1_addr_old_code||':'||addr_rec.addr_type||':'||addr_rec.start_dt||':'||addr_rec.end_dt);
                utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUADDR'||','||'"1.7","STUADDR"'||
                stuaddr_pre_null
                ||',"'||
                addr_rec.t1_addr_new_code
                ||'","'||
                nvl(replace(replace(translate(addr_rec.addr_line_1,chr(10)||chr(13),' '),chr(34),''''),chr(32),''),'NA')||'","'||
                replace(translate(addr_rec.addr_line_2,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_3,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_4,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_5,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                case 
                    when addr_rec.addr_type in ('OS-HOME','OS-POSTAL') then addr_rec.os_code
                    when length(addr_rec.aust_postcode) = 3 then '0'||to_char(addr_rec.aust_postcode)
                    else to_char(addr_rec.aust_postcode)
                end
                ||'","'||
                case addr_rec.addr_type
                    when 'OS-HOME'   then 'NA'
                    when 'OS-POSTAL' then 'NA'
                   -- when 'CEN-HOME'  then T_H060
                    else '0001' --This is for postal,home,employer,centralian home
                end    
                ||'","'|| 
               t_prefadd_val
                ||'","'||
                -- According to import definition, the Start and End Date only applies to the $T date
                case when addr_rec.t1_addr_new_code in ('$T') then addr_rec.start_dt else null end||'","'||
                case when addr_rec.t1_addr_new_code in ('$T') then addr_rec.end_dt   else null end||'","'||
                '","","","","","","FALSE"'||
                stuaddr_post_null||',"END"'
                );
                count_stuaddr_export := count_stuaddr_export + 1;   
                
            if t_prefadd_val = 'Yes' and addr_rec.t1_addr_new_code='$T' then t_prefadd_flag := 'N'; else t_prefadd_flag := 'Y'; end if;
            
            end if;
            --dbms_output.put_line('Oldline->'||addr_rec.intl||':'||addr_rec.t1_addr_new_code||':'||addr_rec.t1_addr_old_code||':'||addr_rec.addr_type||':'||addr_rec.start_dt||':'||addr_rec.end_dt);
            t_addr_new_code := addr_rec.t1_addr_new_code;
            
          end loop;
         

 -----Non International Students
      ELSE
          t_addr_old_code := ' ';
           t_prefadd_loc_val      := 'Yes';
           t_prefadd_loc_flag     :=  'N';
        for addr_rec in addr_loc (drv1_rec.pers) 
        loop
            if t_addr_old_code <> addr_rec.t1_addr_old_code and addr_rec.end_dt is null then
             if t_prefadd_loc_flag  = 'N' then t_prefadd_loc_val := 'Yes'; else t_prefadd_loc_val := 'No'; end if;
             --   dbms_output.put_line('Newline->'||addr_rec.intl||':'||addr_rec.t1_addr_new_code||':'||addr_rec.t1_addr_old_code||':'||addr_rec.addr_type||':'||addr_rec.start_dt||':'||addr_rec.end_dt);
                utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUADDR'||','||'"1.7","STUADDR"'||
                stuaddr_pre_null
                ||',"'||
                addr_rec.t1_addr_old_code
                ||'","'||
                nvl(replace(replace(translate(addr_rec.addr_line_1,chr(10)||chr(13),' '),chr(34),''''),chr(32),''),'NA')||'","'||
                replace(translate(addr_rec.addr_line_2,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_3,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_4,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_5,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                case 
                    when addr_rec.addr_type in ('OS-HOME','OS-POSTAL') then addr_rec.os_code
                    when length(addr_rec.aust_postcode) = 3 then '0'||to_char(addr_rec.aust_postcode)
                    else to_char(addr_rec.aust_postcode)
                end
                ||'","'||
                case addr_rec.addr_type
                    when 'OS-HOME'   then 'NA'
                    when 'OS-POSTAL' then 'NA'
                   -- when 'CEN-HOME'  then T_H060
                    else '0001' --This is for postal,home,employer,centralian home
                end    
                ||'","'|| 
                 t_prefadd_loc_val 
                ||'","'||
                -- According to import definition, the Start and End Date only applies to the $T date
                 case when addr_rec.t1_addr_old_code in ('$T') then addr_rec.start_dt else null end||'","'||   --addr_rec.start_dt||'","'||
                 case when addr_rec.t1_addr_old_code in ('$T') then addr_rec.end_dt   else null end||'","'||   --addr_rec.end_dt ||'","'||
                '","","","","","","FALSE"'||
                stuaddr_post_null||',"END"'
                );
                count_stuaddr_export := count_stuaddr_export + 1;   
              if t_prefadd_loc_val = 'Yes'  then t_prefadd_loc_flag := 'Y'; end if;    
            end if;
            --dbms_output.put_line('Oldline->'||addr_rec.intl||':'||addr_rec.t1_addr_new_code||':'||addr_rec.t1_addr_old_code||':'||addr_rec.addr_type||':'||addr_rec.start_dt||':'||addr_rec.end_dt);
            t_addr_old_code := addr_rec.t1_addr_old_code;
        end loop;
    -- Non International Student History records  
    
          
           for addr_rec in addr_loc_hist (drv1_rec.pers) 
        loop
       
            if t_addr_old_code <> addr_rec.t1_addr_old_code and addr_rec.end_dt is not null then
            if  t_prefadd_loc_flag = 'Y' then t_prefadd_loc_val := 'No'; else t_prefadd_loc_val := 'Yes'; end if; 
             --   dbms_output.put_line('Newline->'||addr_rec.intl||':'||addr_rec.t1_addr_new_code||':'||addr_rec.t1_addr_old_code||':'||addr_rec.addr_type||':'||addr_rec.start_dt||':'||addr_rec.end_dt);
                utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUADDR'||','||'"1.7","STUADDR"'||
                stuaddr_pre_null
                ||',"'||
                addr_rec.t1_addr_old_code
                ||'","'||
                nvl(replace(replace(translate(addr_rec.addr_line_1,chr(10)||chr(13),' '),chr(34),''''),chr(32),''),'NA')||'","'||
                replace(translate(addr_rec.addr_line_2,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_3,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_4,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                replace(translate(addr_rec.addr_line_5,chr(10)||chr(13),' '),chr(34),'''')||'","'||
                case 
                    when addr_rec.addr_type in ('OS-HOME','OS-POSTAL') then addr_rec.os_code
                    when length(addr_rec.aust_postcode) = 3 then '0'||to_char(addr_rec.aust_postcode)
                    else to_char(addr_rec.aust_postcode)
                end
                ||'","'||
                case addr_rec.addr_type
                    when 'OS-HOME'   then 'NA'
                    when 'OS-POSTAL' then 'NA'
                   -- when 'CEN-HOME'  then T_H060
                    else '0001' --This is for postal,home,employer,centralian home
                end    
                ||'","'|| 
                 t_prefadd_loc_val
                ||'","'||
                -- According to import definition, the Start and End Date only applies to the $T date
                 case when addr_rec.t1_addr_old_code in ('$T') then addr_rec.start_dt else null end||'","'||   --addr_rec.start_dt||'","'||
                 case when addr_rec.t1_addr_old_code in ('$T') then addr_rec.end_dt   else null end||'","'||   --addr_rec.end_dt ||'","'||
                '","","","","","","FALSE"'||
                stuaddr_post_null||',"END"'
                );
                count_stuaddr_export := count_stuaddr_export + 1;   
                if t_prefadd_loc_val = 'Yes'  then t_prefadd_loc_flag := 'Y'; end if; 
            end if;
            --dbms_output.put_line('Oldline->'||addr_rec.intl||':'||addr_rec.t1_addr_new_code||':'||addr_rec.t1_addr_old_code||':'||addr_rec.addr_type||':'||addr_rec.start_dt||':'||addr_rec.end_dt);
            t_addr_old_code := addr_rec.t1_addr_old_code;
        end loop;
     END IF;


        --- 1.8 STUNMHST LINES
        t_idx :=0;
        for alias_rec in alias(drv1_rec.pers)
        loop
            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUNMHST'||','||'"1.8","STUNMHST"'||
           stunmhst_pre_null
           ||',"'||
           nvl(alias_rec.start_dt,'03/JAN/1990 0:00')||'","'||  
           t_idx
           ||'","'||
            translate(alias_rec.surname,chr(10)||chr(13),' ')||'","'||
            translate(alias_rec.given_names,chr(10)||chr(13),' ')||'","","","'|| --translate(alias_rec.title,chr(10)||chr(13),' ')||'","'||
            translate(alias_rec.alias_comment,chr(10)||chr(13),' ')||'","","","","02/JAN/1990 12:00:00 AM","NA","'||'FALSE'||'"'||
            stunmhst_post_null||',"END"'
            );
            t_idx := t_idx + 1;
            count_stunmhst_export := count_stunmhst_export + 1;                        
        end loop;
----        
        --- 1.9 STUOTHSCR
        t_idx := 0;
        for stat_rec in stat(drv1_rec.pers)
        loop
            t_idx := t_idx + 1;
            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUOTHSCR'||','||'"1.9","STUOTHSCR"'||
            stuothscr_pre_null
            ||',"'||
            t_idx||'","'||
            case stat_rec.admission_test_type
                when 'STAT'     then 'STT'
                else 'NA' 
            end
            ||'","","'||
            extract(year from stat_rec.achieved_dt)||'","'||
            stat_rec.result_score ||'","","'||
            'FALSE'||'"'||
            stuothscr_post_null||',"END"'
            );
            count_stuothscr_export := count_stuothscr_export + 1;                        
        end loop;
--
----        --- 1.21 STUCOMMENT 
----        /*
----        GENERAL     GENERAL NOTE TYPE                                       7527
----        AUTH GEN    GENERAL AUTHORISATION PROVIDED BY STUDENT               4903
----        STUD ADMIN  ALL STUDENT ADMIN ACTIONS ARE TO BE RECORDED HERE       4473
----        ARC         ACADEMIC RECORD COMMENT                                 42  
----        FACULTY     FACULTY NOTES RE THIS STUDENT ARE TO BE RECORDED HERE   17  
----        COVIDVAX-2  SECOND VACCINATION DATE HERE DD/MM/YYYY                 55  
----        COVIDVAX-1  FIRST VACCINATION DATE HERE DD/MM/YYYY                  11  
----        COVIDVAX-E  MEDICAL EXEMPTION CERT DATE HERE DD/MM/YYYY             1   
----        VET-COVID   VET COVID-19 FREE SKILLS COURSE                         1   
----        */
        t_idx := 0;
        for note_rec in note(drv1_rec.pers)
        loop
            t_idx := t_idx + 1;
--Creating Student Comment records
            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUCOMMENT'||','||'"1.21","STUCOMMENT"'||
            stucomment_pre_null
            ||',"",'||
            '"","",'||
            '"'||to_char(note_rec.eff)||'","'||
            nvl(note_rec.pe_note_type,'NA')||'","'||
            nvl(replace(translate(note_rec.note_text,chr(10)||chr(13),' '),chr(32),''),'NA')||'",'||
            '"","","","","","","","","","","","","","","","","","","","'||
            'FALSE'||'"'||
            stucomment_post_null||',"END"'
            );
--Updating Student comment records
--           utl_file.put_line(out_file_2,'"1.21","STUCOMMENT"'||
--            stucomment_pre_null
--            ||',"'||
--            t_idcurrx||'",'||
--            '"","",'||
--            '"'||to_char(note_rec.eff)||'","'||
--            nvl(note_rec.pe_note_type,'NA')||'","'||
--            substr(replace(translate(note_rec.note_text,chr(10)||chr(13),' '),chr(34)||chr(32),''''),1,40)||'",'||
--            '"","","","","","","","","","","","","","","","","","","","'||
--            'FALSE'||'"'||
--            stucomment_post_null||',"END"'
--            );     

            count_stucomment_export := count_stucomment_export + 1;
        end loop;
------        
----        --- 1.22 STUCITIZEN LINES
        t_perm_resident_cd := ' ';
        t_citizenship_cd   := ' ';
        for citz_rec in citz(drv1_rec.pers)
        loop
            if (nvl(citz_rec.citizenship_cd,' ') <> t_citizenship_cd) or (nvl(citz_rec.perm_resident_cd,' ') <> t_perm_resident_cd) then
                utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUCITIZEN'||','||'"1.22","STUCITIZEN"'||
                stucitizen_pre_null
                ||',"'||
                to_char(citz_rec.start_dt,'DD/MON/YYYY')||'","'||
                nvl(citz_rec.citizenship_cd,'9')||'","'||
                case
                    when citz_rec.citizenship_cd in ('3','8') then 'TRUE'
                    else 'FALSE'
                end
                ||'","","'||
                case 
                    when citz_rec.perm_resident_cd = '3' then 'TRUE'
                    else 'FALSE'
                end   
                ||'","'||
                to_char(citz_rec.start_dt,'DD/MON/YYYY')||'","'||
                case 
                    when citz_rec.perm_resident_cd = '1' then 'TRUE'
                    else 'FALSE'
                end 
                ||'","","'||               
                 citz_rec.yr_arrival   --Case statement include in the cursor itself -- case citz_rec.yr_arrival when '0001' then null when 'A999' then null else citz_rec.yr_arrival end
                ||'","'||
                '","","","'||
                'FALSE'||'"'||
                stucitizen_post_null||',"END"'
                );
                count_stucitizen_export := count_stucitizen_export + 1;
                t_citizenship_cd   := nvl(citz_rec.citizenship_cd,' ');
                t_perm_resident_cd := nvl(citz_rec.perm_resident_cd,' '); 
            end if;                
        end loop;
----        
----        --- 1.23 STUEDUBGDET LINES
----        --- 1.23.1 Tertiary Education
----        /*
----        tertiary_edu_lvl_comp,
----        institution_cd,
----        institution_name,
----        enrolment_first_yr,
----        enrolment_latest_yr,
----        course_cd,
----        field_of_study,
----        equiv_full_time_yrs_enr,
----        tertiary_edu_lvl_qual,
----        qualification,
----        state_cd,
----        country_cd,
----        notes,
----        assessment_comments,
----        verification_status
----        */
------
        t_idx := 0;
        for educ_rec in educ(drv1_rec.pers)
        loop
            t_idx := t_idx + 1;

            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUEDUBGDET'||','||'"1.23.1","STUEDUBGDET"'||
            stuedubgdet_pre_null
            ||',"'||
            'TERTIARY'||'","'||
            t_idx||'",'||
            '"","'||
            educ_rec.institution_cd||'","'||
            --'TYPE","'||
            case
                when educ_rec.institution_cd is not null then 'TE'
                else null
            end
            ||'","'||
            case
                when educ_rec.institution_cd is null then educ_rec.institution_name
                else null
            end
            ||'","","","","'||
            educ_rec.country_cd||'","'||
            educ_rec.state_cd||'","","'||
            'NA'||'","'||
            educ_rec.course_cd||'","'||
            '","'||
            educ_rec.qualification||'","'||
            replace(translate(educ_rec.notes,chr(10)||chr(13),' '),chr(34),'''')||'","'||
            '","","'||
            educ_rec.field_of_study||'","'||
            educ_rec.tertiary_edu_lvl_qual||'","'||
            case educ_rec.tertiary_edu_lvl_comp
                when 'INCOMPLETE' then 2
                when 'COMPLETE'   then 3
                when 'CURRENT'    then 3
            end||'","'||    
            '","","","","'||
            educ_rec.equiv_full_time_yrs_enr||'","'||
            '","'||
            educ_rec.enrolment_first_yr||'","'||
            educ_rec.enrolment_latest_yr||'","'||
            '","","","'||
            case educ_rec.verification_status
                when 'UNKNOWN'    then 'NA'
                when 'VERIFIED'   then '30'
                when 'UNVERIFIED' then '20'
                else 'NA'
            end||'",'||
            ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'||
            case 
                when educ_rec.assessment_comments like '%AC LOAD' then replace(translate(educ_rec.assessment_comments,chr(10)||chr(13),' '),chr(34),'''')
                else ''
            end
            ||',,,,,'||'FALSE'||
            stuedubgdet_post_null||',"END"'
            );
            count_stuedubgdet_export := count_stuedubgdet_export + 1;
        end loop;

        --- 1.23.2 Secondary Education
        /*
        state_cd
        result_obtained_yr
        score
        aus_scndry_edu_ass_type
        candidate_number
        secondary_school_cd
        verification_status
        secondary_school_name
        completed_ind
        --assessment_comments
        */
        t_idx := 0;
        for seced_rec in seced(drv1_rec.pers)
        loop
            t_idx := t_idx + 1;

            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUEDUBGDET'||','||'"1.23.2","STUEDUBGDET"'||
            stuedubgdet_pre_null
            ||',"'||
            'SECONDARY'||'","'||
            t_idx||'","","'||
            seced_rec.secondary_school_cd||'","'||
            case
                when seced_rec.secondary_school_cd is not null then 'SE'
                else null
            end
            ||'","'||
            case
                when seced_rec.secondary_school_cd is null then seced_rec.secondary_school_name
                else null
            end
            ||'","'||
            seced_rec.candidate_number
            ||'","","","","'||
            seced_rec.state_cd
            ||'","","'||
            seced_rec.aus_scndry_edu_ass_type||'","","","'||
            ''||'","'||
             replace(translate(seced_rec.assessment_comments,chr(10)||chr(13),' '),chr(34),'''')||'","'||
            seced_rec.score||'","","","NA","'||
            case seced_rec.completed_ind
                when 'Y' then 3
                else 2
            end||'","","","","","","","'||
            '","'||
            seced_rec.result_obtained_yr||'","'||
            '","","","'||
            case seced_rec.verification_status
                when 'UNKNOWN'    then 'NA'
                when 'VERIFIED'   then '30'
                when 'UNVERIFIED' then '20'
                else 'NA'
            end||'",'||
            ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'||'FALSE'||
            stuedubgdet_post_null||',"END"'
            );
            count_stuedubgdet_export := count_stuedubgdet_export + 1;
        end loop;


        --- 1.23.3 Overseas Secondary Education
        /*        
        result_obtained_yr,
        result,
        school_name,
        country_cd,
        comments,
        verification_status,
        completed_ind,
        qualification,
        assessment_comments
        */
        t_idx := 0;
        for osed_rec in osed(drv1_rec.pers)
        loop
            t_idx := t_idx + 1;

            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUEDUBGDET'||','||'"1.23.3","STUEDUBGDET"'||
            stuedubgdet_pre_null
            ||',"'||
            'OVERSEAS'||'","'||
            t_idx||'","","","","'||
            osed_rec.school_name
            ||'","","","","'||
            osed_rec.country_cd||'","","","","","","'||
            osed_rec.qualification||'","'||
            case 
                when trim(osed_rec.comments) is not null then replace(translate(osed_rec.comments,chr(10)||chr(13),' '),chr(34),'''')||'. '||replace(translate(osed_rec.assessment_comments,chr(10)||chr(13),' '),chr(34),'''')
                else replace(translate(osed_rec.assessment_comments,chr(10)||chr(13),' '),chr(34),'''')
            end||'","'||
            osed_rec.result||'","","","NA","'||
            case osed_rec.completed_ind
                when 'Y' then 3
                else 2
            end||'","","","","","","","'||
            '","'||
            osed_rec.result_obtained_yr||'","'||
            '","","","'||
            case seced_rec.verification_status
                when 'UNKNOWN'    then 'NA'
                when 'VERIFIED'   then '30'
                when 'UNVERIFIED' then '20'
                else 'NA'
            end||'",'||
            ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'||'FALSE'||
            stuedubgdet_post_null||',"END"'
            );
            count_stuedubgdet_export := count_stuedubgdet_export + 1;
        end loop;
----
----        --- 1.24 PREVINST LINES
        t_idx := 0;
        for pred_rec in pred(drv1_rec.pers)
        loop
            t_idx := t_idx + 1;
            utl_file.put_line(out_file_2,drv1_rec.H003||'_'||'STUPREVINST'||','||'"1.24","STUPREVINST"'||
            stuprevinst_pre_null
            ||','||
            t_idx||',"","","","","'||
            'NA'--pred_rec.prior_education_type
            ||'",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"NA",'||'FALSE'||
            stuprevinst_post_null||',"END"'
            );
            count_stuprevinst_export := count_stuprevinst_export + 1;
        end loop;

--
----               
        if mod(count_drv1_total,10000) = 0 then 
           dbms_output.put_line('... checkpoint    '||count_drv1_total);
        end if;

        -- Create a new output file with a new number if records have reached the file size.
        if mod(count_drv1_total,out_file_size) = 0 then 
         --utl_file.fclose(out_file_1);
           utl_file.fclose(out_file_2);
           out_file_no := out_file_no + 1;
         --out_file_1  := utl_file.fopen(out_directory,out_filename_1||out_file_no||'.csv','W',32767); 
           out_file_2  := utl_file.fopen(out_directory,out_filename_2||out_file_no||'.csv','W',32767);
        end if;
    end loop;
    --utl_file.fclose(out_file_1);
    utl_file.fclose(out_file_2);

    dbms_output.put_line('Run complete:'||to_char(sysdate,'DD-Mon-YYYY HH24:MI:SS'));
    dbms_output.put_line('DRV1 read:               '||count_drv1_total);
    dbms_output.put_line('.STU exported:           '||count_stu_export);
    dbms_output.put_line('.STUDISABTYPE exported:  '||count_studisabtype_export);    
    dbms_output.put_line('.STUEMAIL exported:      '||count_stuemail_export);    
    dbms_output.put_line('.STUPHONE exported:      '||count_stuphone_export);    
    dbms_output.put_line('.STUOTHCNTCT exported:   '||count_stuothcntct_export);
    dbms_output.put_line('.STUALTID exported:      '||count_stualtid_export);    
    dbms_output.put_line('.STUGUARDIAN exported:   '||count_stuguardian_export);
    dbms_output.put_line('.STUADDR exported:       '||count_stuaddr_export);
    dbms_output.put_line('.STUNMHST exported:      '||count_stunmhst_export);    
    dbms_output.put_line('.STUOTHSCR exported:     '||count_stuothscr_export);        
    dbms_output.put_line('.STUHLP exported:        '||count_stuhlp_export);
    dbms_output.put_line('.STUCOMMENT exported:    '||count_stucomment_export);
    dbms_output.put_line('.STUCITIZEN exported:    '||count_stucitizen_export);
    dbms_output.put_line('.STUEDUBGDET exported:   '||count_stuedubgdet_export);    
    dbms_output.put_line('.STUPREVINST exported:   '||count_stuprevinst_export);        
    dbms_output.put_line('Records exported:        '||to_char(count_stu_export
                                                            + count_studisabtype_export
                                                            + count_stuemail_export
                                                            + count_stuphone_export
                                                            + count_stuothcntct_export
                                                            + count_stualtid_export   
                                                            + count_stuguardian_export
                                                            + count_stuaddr_export
                                                            + count_stunmhst_export
                                                            + count_stuothscr_export
                                                            + count_stuhlp_export
                                                            + count_stucomment_export
                                                            + count_stucitizen_export
                                                            + count_stuedubgdet_export
                                                            + count_stuprevinst_export
                                                              ));
    dbms_output.put_line('.STU in error:           '||count_stu_error);
    dbms_output.put_line('.STUDISABTYPE in error:  '||count_studisabtype_error);
    dbms_output.put_line('.STUEMAIL in error:      '||count_stuemail_error);
    dbms_output.put_line('.STUPHONE in error:      '||count_stuphone_error);
    dbms_output.put_line('.STUOTHCNTCT in error:   '||count_stuothcntct_error);    
    dbms_output.put_line('.STUALTID in error:      '||count_stualtid_error);        
    dbms_output.put_line('.STUGUARDIAN in error:   '||count_stuguardian_error);
    dbms_output.put_line('.STUADDR in error:       '||count_stuaddr_error);
    dbms_output.put_line('.STUNMHST in error:      '||count_stunmhst_error);
    dbms_output.put_line('.STUOTHSCR in error:     '||count_stuothscr_error);    
    dbms_output.put_line('.STUHLP in error:        '||count_stuhlp_error);
    dbms_output.put_line('.STUCOMMENT in error:    '||count_stucomment_error);
    dbms_output.put_line('.STUCITIZEN in error:    '||count_stucitizen_error);
    dbms_output.put_line('.STUEDUBGDET in error:   '||count_stuedubgdet_error);    
    dbms_output.put_line('.STUPREVINST in error:   '||count_stuprevinst_error);        
END;
