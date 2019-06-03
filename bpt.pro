PRO bpt, outputname


set_plot,'ps'
device,filename=outputName

;!p.multi=[0,3,4]


;here, plot the bpt functions.
plot, function, yra=[-1.5,1.5],xra=[-1.5,1.5],ytitle='log [OIII]/H$\beta$',xtitle='log [NII]/H$\alpha$',/nodata,

oplot, function1, lines=0, color=250, thick=2
oplot, function2, lines=2, color=250

al_legend,['function1','function2','galaxy point'],psym=[-15,-16,4],color=[250,250,210],/right_legend

;NGC 5373 point
oplot, xval, yval, psym=4, color=210



;IC 0862 point
oplot, xval, yval, psym=4, color=210




;MRK 810 point
oplot, xval, yval, psym=4, color=210




;NGC 2518 point
oplot, xval, yval, psym=4, color=210




;UGC 08754 point
oplot, xval, yval, psym=4, color=210




;PGC 3091110 point
oplot, xval, yval, psym=4, color=210

end
