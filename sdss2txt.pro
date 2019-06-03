pro sdss2txt, infits, outascii

; Convert default SDSS fits spectra (1e-17 fluxes, log vacuum
; wavelength) to ascii [air_wavelength, flux] file

;; lambda = 10(COEFF0 + COEFF1*i), where i denotes the (zero indexed) pixel number.
;; http://www.sdss.org/dr7/products/spectra/read_spSpec.html
;; AIR = VAC / (1.0 + 2.735182E-4 + 131.4182 / VAC^2 + 2.76249E8 / VAC^4)
;; http://www.sdss.org/dr7/products/spectra/vacwavelength.html

d = mrdfits(infits,0,h)
c0 = fxpar(h,'coeff0')
c1 = fxpar(h,'coeff1')
flux = 1e-17*d[*,0]
wave = 10d^(c0+c1*indgen(n_elements(flux))) ; vacuum
air = wave/(1.+2.735182e-4 + 131.4182/wave^2 + 2.76249e8/wave^4) ; air
OPENW,37,outascii
FOR i=0,n_elements(flux)-1 DO BEGIN
    PRINTF,37,air[i],flux[i],f='(f10.5,x,e)'
ENDFOR
CLOSE,37

END
