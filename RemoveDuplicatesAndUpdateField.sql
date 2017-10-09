UPDATE NOME_SCHEMA.TABELLA_NOME a
   SET PROVA_CAMPO = 'N'
 WHERE     a.PROVA_CAMPO IS NULL
       AND a.ROWID >
              ANY (SELECT B.ROWID
                     FROM TABELLA_NOME B
                    WHERE     b.PROVA_CAMPO IS NULL
                          AND a.PROVA_CAMPO_DUE = B.PROVA_CAMPO_DUE
                          AND a.PROVA_CAMPO_TRE =
                                 b.PROVA_CAMPO_TRE);

COMMIT;
;
