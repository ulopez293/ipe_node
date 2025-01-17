
 SELECT `Cuentas`.`SALDOI`, `Cuentas`.`CAR01`, `Cuentas`.`ABO01`, `Cuentas`.`CAR02`, `Cuentas`.`ABO02`, `Cuentas`.`CAR03`, `Cuentas`.`ABO03`, `Cuentas`.`CAR04`, `Cuentas`.`ABO04`, `Cuentas`.`CAR05`, `Cuentas`.`ABO05`, `Cuentas`.`CAR06`, `Cuentas`.`ABO06`, `Cuentas`.`CAR07`, `Cuentas`.`ABO07`, `Cuentas`.`CAR08`, `Cuentas`.`ABO08`, `Cuentas`.`CAR09`, `Cuentas`.`ABO09`, `Cuentas`.`CAR10`, `Cuentas`.`ABO10`, `Cuentas`.`CAR11`, `Cuentas`.`ABO11`, `TmpLibMay`.`TIPOPOL`, `Cuentas`.`CAR12`, `Cuentas`.`ABO12`, `EdoResulAna`.`CTAARM1`, `EdoResulAna`.`CTAARM2`, `EdoResulAna`.`CTAARM3`, `EdoResulAna`.`CTAARM4`, `EdoResulAna`.`CTAARM5`, `Cuentas`.`NOMARMO`, `Cuentas`.`CTAARMO`, `TmpLibMay`.`CLAVE`, `TmpLibMay`.`IMPORTE`, `TmpLibMay`.`NUMPOL`, `TmpLibMay`.`FECH`, `TmpLibMay`.`CONCEPTO`, `TmpLibMay`.`CTAARMO`, `GrupoCtaArm`.`NOMBREARM`, `GrupoCtaArm2`.`NOMBREARM`, `GrupoCtaArm3`.`NOMBREARM`, `GrupoCtaArm4`.`NOMBREARM`, `GrupoCtaArm5`.`NOMBREARM`
 FROM   EdoResulAna INNER JOIN
                      Cuentas ON EdoResulAna.CUENTA = Cuentas.CUENTA AND EdoResulAna.SUBCTA = Cuentas.SUBCTA AND EdoResulAna.SSUBCTA = Cuentas.SSUBCTA 
                      INNER JOIN
                      GrupoCtaArm ON EdoResulAna.CTAARM1 = GrupoCtaArm.CTAARM INNER JOIN
                      GrupoCtaArm AS GrupoCtaArm2 ON EdoResulAna.CTAARM2 = GrupoCtaArm2.CTAARM LEFT OUTER JOIN
                      GrupoCtaArm AS GrupoCtaArm5 ON EdoResulAna.CTAARM5 = GrupoCtaArm5.CTAARM LEFT OUTER JOIN
                      GrupoCtaArm AS GrupoCtaArm4 ON EdoResulAna.CTAARM4 = GrupoCtaArm4.CTAARM LEFT OUTER JOIN
                      GrupoCtaArm AS GrupoCtaArm3 ON EdoResulAna.CTAARM3 = GrupoCtaArm3.CTAARM 

 Left Join  "IPEBD"."dbo"."TmpLibMay" TmpLibMay on
 (Cuentas."SUBCTA" = TmpLibMay."Subcta"  and
   Cuentas."SSUBCTA" = TmpLibMay."SSubcta"  and
    Cuentas."CUENTA" = TmpLibMay."CUENTA" AND
    TmpLibMay."FECH" >=  '01/08/2014' AND TmpLibMay."FECH" <=  '30/08/2014') 
 WHERE  EdoResulAna."CUENTA" = Cuentas."CUENTA" AND
    EdoResulAna."SUBCTA" = Cuentas."SUBCTA" AND
    EdoResulAna."SSUBCTA" = Cuentas."SSUBCTA" AND
    EdoResulAna."CTAARM1" = GrupoCtaArm."CTAARM" AND
    EdoResulAna."CTAARM2" = GrupoCtaArm2."CTAARM" AND
    EdoResulAna."CTAARM3" = GrupoCtaArm3."CTAARM" AND
    EdoResulAna."CTAARM4" = GrupoCtaArm4."CTAARM" AND
    EdoResulAna."CTAARM5" = GrupoCtaArm5."CTAARM" AND
    Cuentas."AÑO" = 2014 AND  EdoResulAna."AÑO" = 2014   
  
 ORDER BY `EdoResulAna`.`CTAARM1`, `EdoResulAna`.`CTAARM2`, `EdoResulAna`.`CTAARM3`, `EdoResulAna`.`CTAARM4`, `EdoResulAna`.`CTAARM5`, `TmpLibMay`.`CTAARMO`

