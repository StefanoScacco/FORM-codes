This is a list of codes that allow for modulus squared calculations for decays X to e+e-, e+e- + photon, 2 photons, Compton scattering, electron positron annihilation into two photons, Bhabha scattering and Moller scattering, mediated by a massive spin 2 boson, which we identify with the X resonance at 17 MeV found by the ATOMKI and JINR collaborations independently. Fermion polarizations have been summed. Spin 2 polarizations have been summed. Photon polarizations have not been summed.

To execute code, install FORM on your device, and simply type at command line (it might take a couple of seconds):

form <filename.frm>



Here is the complete list of codes found in the repository:
 - README.md: instructions for execution of codes in FORM. Meta warning: you are reading this file right now!.
 
 - spin2Decayee.frm: this code calculates the amplitude for the decay process X to e+ e-, where X is a spin 2 massive boson with mass mX, and the Feynman rule is found in my thesis.

- spin2Decayeegamma.frm: this code calculates the amplitude for the decay process X to e+ e- photon, where X is a spin 2 massive boson with mass mX, and the Feynman rule is found in my thesis.
 
 - spin2Decaygg_xigauge.frm: this code calculates the amplitude for the decay process X to 2 photons, where X is a spin 2 massive boson with mass mX, and the Feynman rule is calculated in a generic xi gauge, in my thesis.
 
 - Compton.frm: this code calculates the trace for the Compton scattering, only using QED diagrams.
 
 - Annihilation.frm: this code calculates the trace for the e+ e- annihilation into two photons, only using QED diagrams.

 - Bhabha.frm: this code calculates the traces for the Bhabha scattering, only using QED diagrams. To better comprehend the result, we suggest studying every squared term individually (s-channel, t-channel and interference).
 
 - Moller.frm: this code calculates the traces for the Moller scattering, only using QED diagrams. To better comprehend the result, we suggest studying every squared term individually (t-channel, u-channel and interference).

 - Twophoton.frm: this code calculates the QED loop trace for the two-photon scattering process. It does not perform the integration in loop momentum, and it is used only to verify that QED amplitude is gauge invariant and finite.

 - Compton_onlyX_xigauge.frm: this code calculates a simplified version of the modulus squared of the spin 2 massive boson mediated process in Compton scattering only. Since there are no interference terms between QED diagrams and the spin 2 diagram, the latter can be analyzed singularly. Calculations were carried out in xi gauge. To speed up the software, it is recommended to substitute 1\xi = 0 (Lorentz gauge).
 
 - Annihilation_onlyX_xigauge.frm: this code calculates a simplified version of the modulus squared of the spin 2 massive boson mediated process in e+ e- annihilation only. Since there are no interference terms between QED diagrams and the spin 2 diagram, the latter can be analyzed singularly. Calculations were carried out in xi gauge. To speed up the software, it is recommended to substitute 1\xi = 0 (Lorentz gauge).

 - Twophoton_onlyX_xigauge.frm:	this code calculates the total tree level amplitude (not squared) for two-photon scattering, without mediation of QED. Result requires a selection of photon helicities (remember that final state is barred, so polarizations switch), and results are polarization dependent. Calculations were carried out in xi gauge, and result is immediate.

 - Compton_Xspin2_xigauge.frm: this code calculates the modulus squared of the total tree level amplitude for the Compton scattering, corrected by spin 2 massive boson mediation (all three diagrams included). Calculations were carried out in xi gauge. To speed up the software, it is recommended to substitute 1\xi = 0 (Lorentz gauge).
 
 - Annihilation_Xspin2_xigauge.frm: this code calculates the modulus squared of the total tree level amplitude for the annihilation into two photons, corrected by spin 2 massive boson mediation (all three diagrams included). Calculations were carried out in xi gauge. To speed up the software, it is recommended to substitute 1\xi = 0 (Lorentz gauge).
 
 - Bhabha_Xspin2_xigauge.frm: this code calculates the modulus squared of the total tree level amplitude for the Bhabha scattering, corrected by spin 2 massive boson mediation (all four diagrams included). Calculations were carried out in xi gauge. The gauge only enters the QED part. It is highly suggested to impose ge^4 = 0 in the code, to get rid of the computation heavy part, and speed the code up to just a couple of seconds. Also, it is suggested to study s-channel, t-channel and interference separately. 

 - Moller_Xspin2_xigauge.frm: this code calculates the modulus squared of the total tree level amplitude for the Moller scattering, corrected by spin 2 massive boson mediation (all four diagrams included). Calculations were carried out in xi gauge. The gauge only enters the QED part. It is highly suggested to impose ge^4 = 0 in the code, to get rid of the computation heavy part, and speed the code up to just a couple of seconds. Also, it is suggested to study t-channel, u-channel and interference separately.

 - Bhabha_Xspin1_xigauge.frm: this code calculates the modulus squared of the total tree level amplitude for the Bhabha scattering, corrected by spin 1 massive boson mediation (all four diagrams included). Calculations were carried out in xi gauge. The gauge only enters the QED part. It is suggested to study s-channel, t-channel and interference separately.