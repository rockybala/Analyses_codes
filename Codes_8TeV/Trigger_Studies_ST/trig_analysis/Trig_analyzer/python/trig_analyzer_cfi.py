import FWCore.ParameterSet.Config as cms

Trig_analyzer = cms.EDAnalyzer("Trig_analyzer",
                      OutputFile = cms.untracked.string(""),
                      tnp_trigger = cms.untracked.string("HLT_Ele17_CaloIdVT_CaloIsoVT_TrkIdT_TrkIsoVT_Ele8_Mass50"),
                      tnp_leadinglegfilter = cms.untracked.string("hltEle17CaloIdVTCaloIsoVTTrkIdTTrkIsoVTEle8TrackIsoFilter"),
                      tnp_trailinglegfilter = cms.untracked.string("hltEle17CaloIdVTCaloIsoVTTrkIdTTrkIsoVTEle8PMMassFilter"),
                      Ele27_WP80 = cms.untracked.string("HLT_Ele27_WP80"),
                      Ele27_WP80_final_filter = cms.untracked.string("hltEle27WP80TrackIsoFilter"),
                      gsfelectronTag = cms.untracked.InputTag("gsfElectrons", "", ""),
                      triggerEventTag = cms.untracked.InputTag("hltTriggerSummaryAOD","","HLTX"),
                      triggerResultsTag = cms.untracked.InputTag("TriggerResults","","HLT"),

                      pTOfflineProbeCut = cms.untracked.double(0.0),
                      )

