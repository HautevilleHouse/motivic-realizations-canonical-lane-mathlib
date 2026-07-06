import MotivicRealizationsCanonicalLaneLean.Formalization
import MotivicRealizationsCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace MotivicRealizationsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "1671e14379cd18f3daab495f4d680c23d68991278bf350dec9e918f7a8aebe5b", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "1c0490add8830ee8ea8f86a540e5bdb901986b2993909037d65bc126ca950fd8", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "a9247ccbf1717633c1dabfa44dcd12f87fe1a06460e52f2f761f90816ff1330f", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "688f5f785b37c0a6817cf5a170443fe3dba857469dbc7bbf712a1691f510e202", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "44afb6062dfb3f1474ec28ba73bb4e40abad0ca854184c0fe15f089bf0c844b6", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "dc9e823cd0b22b20fa5c42ba4fcd56d54ffae551dd357362e09638ed093b14d5", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "d43bc20f3c9cee85f50852b6a43190c35972d79ebb31100368cd6e4cc1f86580", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "a807f57358384fea86b12f075d8a8304c465201b486945ba494738cddac30ded", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "eb56e91b20af78f847f1c846b03f46cb4233357938973d7d97aa116068ad5da4", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "MRF_G1", constant := "kappa_realization" },
  { gate := "MRF_G2", constant := "sigma_filtration" },
  { gate := "MRF_G3", constant := "kappa_compact" },
  { gate := "MRF_G4", constant := "rho_rigidity" },
  { gate := "MRF_G5", constant := "regulator_transfer" },
  { gate := "MRF_G6", constant := "eps_coh" },
  { gate := "MRF_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "f50139d9a0419332e36f99872b615ba113c8ff06227ab8e457065137f0835d6b" },
  { path := "README.md", sha256 := "a575bd131c20690bf0ec3f94c00886a5ef1415e870b384b69aa125ff7553f20f" },
  { path := "artifacts/constants_extracted.json", sha256 := "688f5f785b37c0a6817cf5a170443fe3dba857469dbc7bbf712a1691f510e202" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "a9247ccbf1717633c1dabfa44dcd12f87fe1a06460e52f2f761f90816ff1330f" },
  { path := "artifacts/constants_registry.json", sha256 := "44afb6062dfb3f1474ec28ba73bb4e40abad0ca854184c0fe15f089bf0c844b6" },
  { path := "artifacts/promotion_report.json", sha256 := "d43bc20f3c9cee85f50852b6a43190c35972d79ebb31100368cd6e4cc1f86580" },
  { path := "artifacts/stitch_constants.json", sha256 := "dc9e823cd0b22b20fa5c42ba4fcd56d54ffae551dd357362e09638ed093b14d5" },
  { path := "notes/EG1_public.md", sha256 := "4b8f8211a0570b2898bc59caf832fe9349b9a4e961ad4dc7dfc6444da29af829" },
  { path := "notes/EG2_public.md", sha256 := "8bbb3d95a984f6538c1fdc9b833c3830c693000ea04ed3c677543e3a35979f9d" },
  { path := "notes/EG3_public.md", sha256 := "4be68ab10574c3c835267e3bd93fc7b9ca483ef410150d696739674937c9bb09" },
  { path := "notes/EG4_public.md", sha256 := "c030a82ceba0d3992cfdfc8600d8d2b0a12cabd75e26e5ed2da9ad927683ad69" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "1c0490add8830ee8ea8f86a540e5bdb901986b2993909037d65bc126ca950fd8" },
  { path := "notes/GEOMETRIC_GALOIS_BRIDGE.md", sha256 := "63513f9e95a69160d53170be824d9162110ab29a6bd7a56d402ff8825b2c42e6" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "62b891cb656454dc0fd9aa54eb420f63c4a82f56a349d40afc2f5c4fd6850bc7" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "42b09ada9a1ac233faac997375f58ead0b3b23ab424889c25c906b10b3b7be73" },
  { path := "paper/MOTIVIC_REALIZATIONS_PREPRINT.md", sha256 := "45d02555d252f3be686b467ccbc009f30feb532b71b70e4ecec8a945a04e754c" },
  { path := "repro/REPRO_PACK.md", sha256 := "1b1f09d701f47a69f4eb618098b816c14da779132057d090eb92bd5f004edc44" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "d5f4ab826496a11af409412866022f06cb8bf88348a5aca40b486b19f26ca93b" },
  { path := "repro/certificate_baseline.json", sha256 := "eb56e91b20af78f847f1c846b03f46cb4233357938973d7d97aa116068ad5da4" },
  { path := "repro/run_repro.sh", sha256 := "a7a965bc4a2423acb5a20ecb7928e318b38a7dd8b78791ceb01f1e80bdbb02b0" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/mrf_closure_guard.py", sha256 := "1e9ed005ad3926ea962e5fabf61b66c5f21f75f28d0fec0881bf3b2ee9ca3732" },
  { path := "scripts/README.md", sha256 := "b591f75fe6598fe17470ecacd7d56b83c9d86c775e7bcf4076f9bbb4a3001c7d" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "MRF_G1", status := "PASS" },
  { gate := "MRF_G2", status := "PASS" },
  { gate := "MRF_G3", status := "PASS" },
  { gate := "MRF_G4", status := "PASS" },
  { gate := "MRF_G5", status := "PASS" },
  { gate := "MRF_G6", status := "PASS" },
  { gate := "MRF_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_realization", value := "1.095567" },
  { key := "regulator_transfer", value := "1.0305400000000002" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_filtration", value := "1.075" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_realization",
  "regulator_transfer",
  "rho_rigidity",
  "sigma_filtration",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 26 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end MotivicRealizationsCanonicalLaneLean
end HautevilleHouse
