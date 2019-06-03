PRO colorPlotVoids,outputName



;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;                               GETTING VARIABLES
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------




;preparing zeros txt file

filename='zeros.txt'
openr,1,filename
h=fltarr(1,12)
readf,1,h






;-------------------------------------------------------------------------------
;                                  NGC 5373
;-------------------------------------------------------------------------------



readcol, 'modeln5373i.idl', man5373, min5373, mierrn5373 
readcol, 'sdssn5373i.idl', san5373, sin5373, sierrn5373
readcol, 'psfn5373i.idl', pan5373, pin5373, pierrn5373


readcol, 'modeln5373g.idl', magn5373, mgn5373, mgerrn5373 
readcol, 'sdssn5373g.idl', sagn5373, sgn5373, sgerrn5373
readcol, 'psfn5373g.idl', pagn5373, pgn5373, pgerrn5373

loadct,39


pix = 0.396 ; arc-seconds per pixel
zpn5373 = float(h[0])   ; magnitude zero point (i)
zpgn5373 = float(h[1])

mrgn5373 = pix*magn5373 & srgn5373 = pix*sagn5373 & prgn5373 = pix*pagn5373
mrn5373 = pix*man5373 & srn5373 = pix*san5373 & prn5373 = pix*pan5373



okgn5373 = indgen(n_elements(mgn5373)-20) & mgn5373 = mgn5373[okgn5373] & sgn5373 = sgn5373[okgn5373] & mrgn5373 = mrgn5373[okgn5373] & srgn5373 = srgn5373[okgn5373]
mmgn5373 = -2.5*alog10(mgn5373/(pix*pix))+zpgn5373 & smgn5373 = -2.5*alog10(sgn5373/(pix*pix))+zpgn5373
pmgn5373 = -2.5*alog10(pgn5373/(pix*pix))+zpgn5373

okn5373 = indgen(n_elements(min5373)-20) & min5373 = min5373[okn5373] & sin5373 = sin5373[okn5373] & mrn5373 = mrn5373[okn5373] & srn5373 = srn5373[okn5373]
mmn5373 = -2.5*alog10(min5373/(pix*pix))+zpn5373 & smn5373 = -2.5*alog10(sin5373/(pix*pix))+zpn5373
pmn5373 = -2.5*alog10(pin5373/(pix*pix))+zpn5373








;-------------------------------------------------------------------------------
;                                  IC 0862
;-------------------------------------------------------------------------------





readcol, 'modelic0862i.idl', maic0862, miic0862, mierric0862 
readcol, 'sdssic0862i.idl', saic0862, siic0862, sierric0862
readcol, 'psfic0862i.idl', paic0862, piic0862, pierric0862


readcol, 'modelic0862g.idl', magic0862, mgic0862, mgerric0862 
readcol, 'sdssic0862g.idl', sagic0862, sgic0862, sgerric0862
readcol, 'psfic0862g.idl', pagic0862, pgic0862, pgerric0862

loadct,39


pix = 0.396 ; arc-seconds per pixel
zpic0862 = float(h[2])   ; magnitude zero point (i)
zpgic0862 = float(h[3])

mrgic0862 = pix*magic0862 & srgic0862 = pix*sagic0862 & prgic0862 = pix*pagic0862
mric0862 = pix*maic0862 & sric0862 = pix*saic0862 & pric0862 = pix*paic0862



okgic0862 = indgen(n_elements(mgic0862)-20) & mgic0862 = mgic0862[okgic0862] & sgic0862 = sgic0862[okgic0862] & mrgic0862 = mrgic0862[okgic0862] & srgic0862 = srgic0862[okgic0862]
mmgic0862 = -2.5*alog10(mgic0862/(pix*pix))+zpgic0862 & smgic0862 = -2.5*alog10(sgic0862/(pix*pix))+zpgic0862
pmgic0862 = -2.5*alog10(pgic0862/(pix*pix))+zpgic0862

okic0862 = indgen(n_elements(miic0862)-20) & miic0862 = miic0862[okic0862] & siic0862 = siic0862[okic0862] & mric0862 = mric0862[okic0862] & sric0862 = sric0862[okic0862]
mmic0862 = -2.5*alog10(miic0862/(pix*pix))+zpic0862 & smic0862 = -2.5*alog10(siic0862/(pix*pix))+zpic0862
pmic0862 = -2.5*alog10(piic0862/(pix*pix))+zpic0862


















;-------------------------------------------------------------------------------
;                                 MRK 810
;-------------------------------------------------------------------------------




readcol, 'modelmrk810i.idl', mamrk810, mimrk810, mierrmrk810 
readcol, 'sdssmrk810i.idl', samrk810, simrk810, sierrmrk810
readcol, 'psfmrk810i.idl', pamrk810, pimrk810, pierrmrk810


readcol, 'modelmrk810g.idl', magmrk810, mgmrk810, mgerrmrk810 
readcol, 'sdssmrk810g.idl', sagmrk810, sgmrk810, sgerrmrk810
readcol, 'psfmrk810g.idl', pagmrk810, pgmrk810, pgerrmrk810

loadct,39


pix = 0.396 ; arc-seconds per pixel
zpmrk810 = float(h[4])   ; magnitude zero point (i)
zpgmrk810 = float(h[5])

mrgmrk810 = pix*magmrk810 & srgmrk810 = pix*sagmrk810 & prgmrk810 = pix*pagmrk810
mrmrk810 = pix*mamrk810 & srmrk810 = pix*samrk810 & prmrk810 = pix*pamrk810



okgmrk810 = indgen(n_elements(mgmrk810)-20) & mgmrk810 = mgmrk810[okgmrk810] & sgmrk810 = sgmrk810[okgmrk810] & mrgmrk810 = mrgmrk810[okgmrk810] & srgmrk810 = srgmrk810[okgmrk810]
mmgmrk810 = -2.5*alog10(mgmrk810/(pix*pix))+zpgmrk810 & smgmrk810 = -2.5*alog10(sgmrk810/(pix*pix))+zpgmrk810
pmgmrk810 = -2.5*alog10(pgmrk810/(pix*pix))+zpgmrk810

okmrk810 = indgen(n_elements(mimrk810)-20) & mimrk810 = mimrk810[okmrk810] & simrk810 = simrk810[okmrk810] & mrmrk810 = mrmrk810[okmrk810] & srmrk810 = srmrk810[okmrk810]
mmmrk810 = -2.5*alog10(mimrk810/(pix*pix))+zpmrk810 & smmrk810 = -2.5*alog10(simrk810/(pix*pix))+zpmrk810
pmmrk810 = -2.5*alog10(pimrk810/(pix*pix))+zpmrk810















;-------------------------------------------------------------------------------
;                                  NGC 2518
;-------------------------------------------------------------------------------



readcol, 'modeln2518i.idl', man2518, min2518, mierrn2518 
readcol, 'sdssn2518i.idl', san2518, sin2518, sierrn2518
readcol, 'psfn2518i.idl', pan2518, pin2518, pierrn2518


readcol, 'modeln2518g.idl', magn2518, mgn2518, mgerrn2518 
readcol, 'sdssn2518g.idl', sagn2518, sgn2518, sgerrn2518
readcol, 'psfn2518g.idl', pagn2518, pgn2518, pgerrn2518

loadct,39


pix = 0.396 ; arc-seconds per pixel
zpn2518 = float(h[6])   ; magnitude zero point (i)
zpgn2518 = float(h[7])

mrgn2518 = pix*magn2518 & srgn2518 = pix*sagn2518 & prgn2518 = pix*pagn2518
mrn2518 = pix*man2518  & srn2518 = pix*san2518 & prn2518 = pix*pan2518



okgn2518 = indgen(n_elements(mgn2518)-20) & mgn2518 = mgn2518[okgn2518] & sgn2518 = sgn2518[okgn2518] & mrgn2518 = mrgn2518[okgn2518] & srgn2518 = srgn2518[okgn2518]
mmgn2518 = -2.5*alog10(mgn2518/(pix*pix))+zpgn2518 & smgn2518 = -2.5*alog10(sgn2518/(pix*pix))+zpgn2518
pmgn2518 = -2.5*alog10(pgn2518/(pix*pix))+zpgn2518

okn2518 = indgen(n_elements(min2518)-20) & min2518 = min2518[okn2518] & sin2518 = sin2518[okn2518] & mrn2518 = mrn2518[okn2518] & srn2518 = srn2518[okn2518]
mmn2518 = -2.5*alog10(min2518/(pix*pix))+zpn2518 & smn2518 = -2.5*alog10(sin2518/(pix*pix))+zpn2518
pmn2518 = -2.5*alog10(pin2518/(pix*pix))+zpn2518






;-------------------------------------------------------------------------------
;                                  UGC 0875
;-------------------------------------------------------------------------------



readcol, 'modelu08754i.idl', mau0875, miu0875, mierru0875 
readcol, 'sdssu08754i.idl', sau0875, siu0875, sierru0875
readcol, 'psfu08754i.idl', pau0875, piu0875, pierru0875


readcol, 'modelu08754g.idl', magu0875, mgu0875, mgerru0875 
readcol, 'sdssu08754g.idl', sagu0875, sgu0875, sgerru0875
readcol, 'psfu08754g.idl', pagu0875, pgu0875, pgerru0875

loadct,39


pix = 0.396 ; arc-seconds per pixel
zpu0875 = float(h[8])   ; magnitude zero point (i)
zpgu0875 = float(h[9])

mrgu0875 = pix*magu0875 & srgu0875 = pix*sagu0875 & prgu0875 = pix*pagu0875
mru0875 = pix*mau0875 & sru0875 = pix*sau0875 & pru0875 = pix*pau0875



okgu0875 = indgen(n_elements(mgu0875)-20) & mgu0875 = mgu0875[okgu0875] & sgu0875 = sgu0875[okgu0875] & mrgu0875 = mrgu0875[okgu0875] & srgu0875 = srgu0875[okgu0875]
mmgu0875 = -2.5*alog10(mgu0875/(pix*pix))+zpgu0875 & smgu0875 = -2.5*alog10(sgu0875/(pix*pix))+zpgu0875
pmgu0875 = -2.5*alog10(pgu0875/(pix*pix))+zpgu0875

oku0875 = indgen(n_elements(miu0875)-20) & miu0875 = miu0875[oku0875] & siu0875 = siu0875[oku0875] & mru0875 = mru0875[oku0875] & sru0875 = sru0875[oku0875]
mmu0875 = -2.5*alog10(miu0875/(pix*pix))+zpu0875 & smu0875 = -2.5*alog10(siu0875/(pix*pix))+zpu0875
pmu0875 = -2.5*alog10(piu0875/(pix*pix))+zpu0875












;-------------------------------------------------------------------------------
;                                PGC 3091110
;-------------------------------------------------------------------------------


readcol, 'modelpgci.idl', mapgc, mipgc, mierrpgc 
readcol, 'sdsspgci.idl', sapgc, sipgc, sierrpgc
readcol, 'psfpgci.idl', papgc, pipgc, pierrpgc


readcol, 'modelpgcg.idl', magpgc, mgpgc, mgerrpgc 
readcol, 'sdsspgcg.idl', sagpgc, sgpgc, sgerrpgc
readcol, 'psfpgcg.idl', pagpgc, pgpgc, pgerrpgc

loadct,39


pix = 0.396 ; arc-seconds per pixel
zppgc = float(h[10])   ; magnitude zero point (i)
zpgpgc = float(h[11])

mrgpgc = pix*magpgc & srgpgc = pix*sagpgc & prgpgc = pix*pagpgc
mrpgc = pix*mapgc & srpgc = pix*sapgc & prpgc = pix*papgc



okgpgc = indgen(n_elements(mgpgc)-20) & mgpgc = mgpgc[okgpgc] & sgpgc = sgpgc[okgpgc] & mrgpgc = mrgpgc[okgpgc] & srgpgc = srgpgc[okgpgc]
mmgpgc = -2.5*alog10(mgpgc/(pix*pix))+zpgpgc & smgpgc = -2.5*alog10(sgpgc/(pix*pix))+zpgpgc
pmgpgc = -2.5*alog10(pgpgc/(pix*pix))+zpgpgc

okpgc = indgen(n_elements(mipgc)-20) & mipgc = mipgc[okpgc] & sipgc = sipgc[okpgc] & mrpgc = mrpgc[okpgc] & srpgc = srpgc[okpgc]
mmpgc = -2.5*alog10(mipgc/(pix*pix))+zppgc & smpgc = -2.5*alog10(sipgc/(pix*pix))+zppgc
pmpgc = -2.5*alog10(pipgc/(pix*pix))+zppgc 












;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;                               MAKING PLOTS
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------












;writes ps file. must do all plotting within the device/filename and
;device/close bounds

set_plot,'ps'
device,filename=outputName

!p.multi=[0,3,4]

;------------------------------------------------------------------------------
;                                  NGC 5373
;------------------------------------------------------------------------------


plot, mrn5373, mmn5373, /xlog, yra=[25,12], xra=[0.1,50], xstyle=1,ystyle=1, ytitle='!7l!X (mag arcsec!U-2!N)', xtickf="(A1)",/nodata,pos=[0.08,0.6,0.37,0.95],ychars=.9,ytickf='(I2)'
xyouts,.15,24.4,'NGC5373',chars=1.3,charth=1.5

oplot, srn5373, smn5373, psym=4,color=210
oplot, mrn5373, mmn5373, lines=0, color=250, thick=2
oplot, prn5373, pmn5373, lines=2, color=250

oplot, srgn5373, smgn5373, psym=4,color=90
oplot, mrgn5373, mmgn5373, lines=0, color=50, thick=2
oplot, prgn5373, pmgn5373, lines=2, color=50


al_legend,['i','g'],psym=[4,4],color=[210,90],/right_legend






plot, mrgn5373, mmgn5373-mmn5373, /xlog, yra=[0.8,1.4], xra=[0.1,50],pos=[0.08,0.5,0.37,0.6], xstyle=1, ytitle='Color (g-i)',ychars=.6,ytickf='(F3.1)',xtickf='(A1)', $
	 /nodata

oplot, mrn5373, mmgn5373-mmn5373, psym=1, color=125, thick=3





;-------------------------------------------------------------------------------
;                                  IC 0862
;-------------------------------------------------------------------------------





plot, mric0862, mmic0862, /xlog, yra=[25,12], xra=[0.1,50], xstyle=1,ystyle=1,xtickf="(A1)",/nodata,pos=[0.37,0.6,0.66,0.95],ychars=.9,ytickf='(A1)'
xyouts,.15,24.4,'IC0862',chars=1.3,charth=1.5

oplot, sric0862, smic0862, psym=4,color=210
oplot, mric0862, mmic0862, lines=0, color=250, thick=2
oplot, pric0862, pmic0862, lines=2, color=250

oplot, srgic0862, smgic0862, psym=4,color=90
oplot, mrgic0862, mmgic0862, lines=0, color=50, thick=2
oplot, prgic0862, pmgic0862, lines=2, color=50


al_legend,['i','g'],psym=[4,4],color=[210,90],/right_legend






plot, mrgic0862, mmgic0862-mmic0862, /xlog, yra=[0.8,1.4], xra=[0.1,50],pos=[0.37,0.5,0.66,0.6], xstyle=1,ychars=.6,xtickf='(A1)', $
	 /nodata

oplot, mric0862, mmgic0862-mmic0862, psym=1, color=125, thick=3












;-------------------------------------------------------------------------------
;                                 MRK 810
;-------------------------------------------------------------------------------



plot, mrmrk810, mmmrk810, /xlog, yra=[25,12], xra=[0.1,50], xstyle=1,ystyle=1, xtickf="(A1)",/nodata,pos=[0.66,0.6,0.95,0.95]
xyouts,.15,24.4,'MRK810',chars=1.3,charth=1.5

oplot, srmrk810, smmrk810, psym=4,color=210
oplot, mrmrk810, mmmrk810, lines=0, color=250, thick=2
oplot, prmrk810, pmmrk810, lines=2, color=250

oplot, srgmrk810, smgmrk810, psym=4,color=90
oplot, mrgmrk810, mmgmrk810, lines=0, color=50, thick=2
oplot, prgmrk810, pmgmrk810, lines=2, color=50


al_legend,['i','g'],psym=[4,4],color=[210,90],/right_legend






plot, mrgmrk810, mmgmrk810-mmmrk810, /xlog, yra=[0.8,1.4], xra=[0.1,50],pos=[0.66,0.5,0.95,0.6], xstyle=1,ychars=.6,ytickf='(A1)',xtickf='(A1)', $
	 /nodata

oplot, mrmrk810, mmgmrk810-mmmrk810, psym=1, color=125, thick=3









;-------------------------------------------------------------------------------
;                                  NGC 2518
;-------------------------------------------------------------------------------



plot, mrn2518, mmn2518, /xlog, yra=[25,12], xra=[0.1,50], xstyle=1,ystyle=1, ytitle='!7l!X (mag arcsec!U-2!N)', xtickf="(A1)",/nodata,pos=[0.08,0.15,0.37,0.5],ychars=.9,ytickf='(I2)'
xyouts,.15,24.4,'NGC2518',chars=1.3,charth=1.5

oplot, srn2518, smn2518, psym=4,color=210
oplot, mrn2518, mmn2518, lines=0, color=250, thick=2
oplot, prn2518, pmn2518, lines=2, color=250

oplot, srgn2518, smgn2518, psym=4,color=90
oplot, mrgn2518, mmgn2518, lines=0, color=50, thick=2
oplot, prgn2518, pmgn2518, lines=2, color=50


al_legend,['i','g'],psym=[4,4],color=[210,90],/right_legend






plot, mrgn2518, mmgn2518-mmn2518, /xlog, yra=[0.8,1.4], xra=[0.1,50],pos=[0.08,0.05,0.37,0.15], xstyle=1, ytitle='Color (g-i)',ychars=.6,ytickf='(F3.1)',xtickf='(A1)', xtickname=['0.1','1','10'],$
	 /nodata

oplot, mrn2518, mmgn2518-mmn2518, psym=1, color=125, thick=3









;-------------------------------------------------------------------------------
;                                  UGC 0875
;-------------------------------------------------------------------------------


plot, mru0875, mmu0875, /xlog, yra=[25,12], xra=[0.1,50], xstyle=1,ystyle=1,ytickf="(A1)",xtickf="(A1)",/nodata,pos=[0.37,0.15,0.66,0.5],chars=1.5
xyouts,.15,24.4,'UGC08754',chars=1.3,charth=1.5

oplot, sru0875, smu0875, psym=4,color=210
oplot, mru0875, mmu0875, lines=0, color=250, thick=2
oplot, pru0875, pmu0875, lines=2, color=250

oplot, srgu0875, smgu0875, psym=4,color=90
oplot, mrgu0875, mmgu0875, lines=0, color=50, thick=2
oplot, prgu0875, pmgu0875, lines=2, color=50


al_legend,['i','g'],psym=[4,4],color=[210,90],/right_legend






plot, mrgu0875, mmgu0875-mmu0875, /xlog, yra=[0.8,1.4], ytickf="(A1)",xra=[0.1,50],pos=[0.37,0.05,0.66,0.15], xstyle=1,ychars=.75, xchars=.75,xtickname=['0.1','1','10'],$
	xtitle='Semi-major axis (arc-seconds)', /nodata

oplot, mru0875, mmgu0875-mmu0875, psym=1, color=125, thick=3













;-------------------------------------------------------------------------------
;                                PGC 3091110
;-------------------------------------------------------------------------------




plot, mrpgc, mmpgc, /xlog, yra=[25,12], xra=[0.1,50], xstyle=1,ystyle=1,ytickf="(A1)",xtickf="(A1)",/nodata,pos=[0.66,0.15,0.95,0.5],chars=1.5
xyouts,.15,24.4,'PGC3091110',chars=1.3,charth=1.5

oplot, srpgc, smpgc, psym=4,color=210
oplot, mrpgc, mmpgc, lines=0, color=250, thick=2
oplot, prpgc, pmpgc, lines=2, color=250

oplot, srgpgc, smgpgc, psym=4,color=90
oplot, mrgpgc, mmgpgc, lines=0, color=50, thick=2
oplot, prgpgc, pmgpgc, lines=2, color=50


al_legend,['i','g'],psym=[4,4],color=[210,90],/right_legend






plot, mrgpgc, mmgpgc-mmpgc, /xlog, yra=[0.8,1.4],ytickf="(A1)", xra=[0.1,50],pos=[0.66,0.05,0.95,0.15], xstyle=1, ychars=.75,xchars=.75, xtickname=['0.1','1','10'],$
	xtitle='Semi-major axis (arc-seconds)', /nodata

oplot, mrpgc, mmgpgc-mmpgc, psym=1, color=125, thick=3




























device,/close

set_plot,'x'




close,1

;-------------------------------------------------------------------------------
;                                     FIN
;-------------------------------------------------------------------------------







end




