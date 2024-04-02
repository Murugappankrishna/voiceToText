### Voice To Text
The Voice to tect part here is done using Speech_recognition library in python which uses the Training a Hidden Markov Model (HMM) 


## Steps involved in speech recognition using HMM:

### Acoustic Feature Extraction:
- When the user speaks into the microphone, the speech signal is captured as a continuous stream of analog audio
- This audio signal is then converted into a sequence of digital samples using an analog-to-digital converter (ADC).
- Next, acoustic features are extracted from this digital signal. These features include Mel-frequency cepstral coefficients (MFCCs), which represent the spectral characteristics of the speech signal.
### Audio format
- audio data for speech recognition tasks needs to be formatted in the FLAC (Free Lossless Audio Codec) due to ```Compression without loss```  ```Reduced file size``` ```Compatibility``` ```Quality preservation```
### Speech Recognition
- The speech recognition process begins when the user speaks  into the microphone.
The acoustic features of the spoken digit are extracted from the audio signal.
The HMMs are used to model the sequence of acoustic features. Each digit HMM represents a different model for the spoken digit.
The Viterbi algorithm is applied to find the most likely sequence of states (digit model) that generated the observed acoustic features. This involves computing the likelihood of the observed features given each digit model and finding the path through the HMM with the highest likelihood.
### Decoding:
- Once the most likely sequence of states is determined, it is decoded into the corresponding textual representation.

## Real-World Example:

### Let's say a user speaks the digit "5" into the microphone.
- The speech signal is captured and converted into digital samples.
- Acoustic features (MFCCs) are extracted from the digital signal.
- The Viterbi algorithm determines that the sequence of features most likely corresponds to the HMM for digit "5."
- The decoding step maps the recognized digit "5" to its textual representation.
