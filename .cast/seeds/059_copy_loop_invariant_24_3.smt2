(set-info :smt-lib-version 2.6)
(set-logic UF)
(set-info :source |
  GRASShopper benchmarks.
  Authors: Ruzica Piskac, Thomas Wies, and Damien Zufferey
  URL: http://cs.nyu.edu/wies/software/grasshopper
  See also: GRASShopper - Complete Heap Verification with Mixed Specifications. In TACAS 2014, pages 124-139.

  If this benchmark is satisfiable, GRASShopper reports the following error message:
  tests/spl/sl/sl_copy.spl:24:3-4:An invariant might not be maintained by a loop in procedure copy
  tests/spl/sl/sl_copy.spl:17:14-69:Related location: This is the loop invariant that might not be maintained
  |)
(set-info :category "crafted")
(set-info :status unsat)

(declare-sort Loc 0)
(declare-sort SetLoc 0)
(declare-sort FldBool 0)
(declare-sort FldLoc 0)
(declare-fun null$0 () Loc)
(declare-fun read$0 (FldLoc Loc) Loc)
(declare-fun write$0 (FldLoc Loc Loc) FldLoc)
(declare-fun emptyset$0 () SetLoc)
(declare-fun setenum$0 (Loc) SetLoc)
(declare-fun union$0 (SetLoc SetLoc) SetLoc)
(declare-fun intersection$0 (SetLoc SetLoc) SetLoc)
(declare-fun setminus$0 (SetLoc SetLoc) SetLoc)
(declare-fun Btwn$0 (FldLoc Loc Loc Loc) Bool)
(declare-fun in$0 (Loc SetLoc) Bool)
(declare-fun Alloc$0 () SetLoc)
(declare-fun Alloc_2$0 () SetLoc)
(declare-fun FP$0 () SetLoc)
(declare-fun FP_3$0 () SetLoc)
(declare-fun FP_Caller$0 () SetLoc)
(declare-fun FP_Caller_2$0 () SetLoc)
(declare-fun cp_4$0 () Loc)
(declare-fun cp_5$0 () Loc)
(declare-fun cp_init$0 () Loc)
(declare-fun curr_4$0 () Loc)
(declare-fun curr_5$0 () Loc)
(declare-fun curr_init$0 () Loc)
(declare-fun lseg_domain$0 (FldLoc Loc Loc) SetLoc)
(declare-fun lseg_struct$0 (SetLoc FldLoc Loc Loc) Bool)
(declare-fun lst_2$0 () Loc)
(declare-fun lst_init$0 () Loc)
(declare-fun next$0 () FldLoc)
(declare-fun next_2$0 () FldLoc)
(declare-fun old_cp_2$0 () Loc)
(declare-fun old_cp_4$0 () Loc)
(declare-fun old_cp_init$0 () Loc)
(declare-fun sk_?X_44$0 () SetLoc)
(declare-fun sk_?X_45$0 () SetLoc)
(declare-fun sk_?X_46$0 () SetLoc)
(declare-fun sk_?X_47$0 () SetLoc)
(declare-fun sk_?X_48$0 () SetLoc)
(declare-fun sk_?X_49$0 () SetLoc)
(declare-fun sk_?X_50$0 () SetLoc)
(declare-fun sk_?X_51$0 () SetLoc)
(declare-fun sk_?X_52$0 () SetLoc)
(declare-fun sk_?X_53$0 () SetLoc)
(declare-fun sk_?e_2$0 () Loc)
(declare-fun sk_FP_1$0 () SetLoc)
(declare-fun tmp_2$0 () Loc)
(declare-fun tmp_3$0 () Loc)
(declare-fun tmp_init$0 () Loc)

(assert (forall ((?y Loc))
        (or (not (Btwn$0 next$0 null$0 ?y ?y)) (= null$0 ?y)
            (Btwn$0 next$0 null$0 (read$0 next$0 null$0) ?y))))

(assert (forall ((?y Loc))
        (or (not (Btwn$0 next$0 tmp_3$0 ?y ?y)) (= tmp_3$0 ?y)
            (Btwn$0 next$0 tmp_3$0 (read$0 next$0 tmp_3$0) ?y))))

(assert (forall ((?y Loc))
        (or (not (Btwn$0 next$0 curr_init$0 ?y ?y)) (= curr_init$0 ?y)
            (Btwn$0 next$0 curr_init$0 (read$0 next$0 curr_init$0) ?y))))

(assert (forall ((?y Loc))
        (or (not (= (read$0 next$0 null$0) null$0))
            (not (Btwn$0 next$0 null$0 ?y ?y)) (= null$0 ?y))))

(assert (forall ((?y Loc))
        (or (not (= (read$0 next$0 tmp_3$0) tmp_3$0))
            (not (Btwn$0 next$0 tmp_3$0 ?y ?y)) (= tmp_3$0 ?y))))

(assert (forall ((?y Loc))
        (or (not (= (read$0 next$0 curr_init$0) curr_init$0))
            (not (Btwn$0 next$0 curr_init$0 ?y ?y)) (= curr_init$0 ?y))))

(assert (Btwn$0 next$0 null$0 (read$0 next$0 null$0) (read$0 next$0 null$0)))

(assert (Btwn$0 next$0 tmp_3$0 (read$0 next$0 tmp_3$0) (read$0 next$0 tmp_3$0)))

(assert (Btwn$0 next$0 curr_init$0 (read$0 next$0 curr_init$0)
  (read$0 next$0 curr_init$0)))

(assert (forall ((x Loc))
        (or
            (and (in$0 x (union$0 FP_Caller$0 Alloc$0))
                 (or (in$0 x FP_Caller$0) (in$0 x Alloc$0)))
            (and (not (in$0 x FP_Caller$0)) (not (in$0 x Alloc$0))
                 (not (in$0 x (union$0 FP_Caller$0 Alloc$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x (union$0 Alloc$0 (setenum$0 tmp_3$0)))
                 (or (in$0 x Alloc$0) (in$0 x (setenum$0 tmp_3$0))))
            (and (not (in$0 x Alloc$0)) (not (in$0 x (setenum$0 tmp_3$0)))
                 (not (in$0 x (union$0 Alloc$0 (setenum$0 tmp_3$0))))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x (union$0 sk_?X_46$0 sk_?X_45$0))
                 (or (in$0 x sk_?X_46$0) (in$0 x sk_?X_45$0)))
            (and (not (in$0 x sk_?X_46$0)) (not (in$0 x sk_?X_45$0))
                 (not (in$0 x (union$0 sk_?X_46$0 sk_?X_45$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x (union$0 FP$0 (setenum$0 tmp_3$0)))
                 (or (in$0 x FP$0) (in$0 x (setenum$0 tmp_3$0))))
            (and (not (in$0 x FP$0)) (not (in$0 x (setenum$0 tmp_3$0)))
                 (not (in$0 x (union$0 FP$0 (setenum$0 tmp_3$0))))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x (union$0 FP$0 FP_Caller$0))
                 (or (in$0 x FP$0) (in$0 x FP_Caller$0)))
            (and (not (in$0 x FP$0)) (not (in$0 x FP_Caller$0))
                 (not (in$0 x (union$0 FP$0 FP_Caller$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x (union$0 sk_?X_48$0 sk_?X_47$0))
                 (or (in$0 x sk_?X_48$0) (in$0 x sk_?X_47$0)))
            (and (not (in$0 x sk_?X_48$0)) (not (in$0 x sk_?X_47$0))
                 (not (in$0 x (union$0 sk_?X_48$0 sk_?X_47$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x (union$0 sk_?X_53$0 sk_?X_52$0))
                 (or (in$0 x sk_?X_53$0) (in$0 x sk_?X_52$0)))
            (and (not (in$0 x sk_?X_53$0)) (not (in$0 x sk_?X_52$0))
                 (not (in$0 x (union$0 sk_?X_53$0 sk_?X_52$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x (union$0 sk_?X_51$0 sk_?X_50$0))
                 (or (in$0 x sk_?X_51$0) (in$0 x sk_?X_50$0)))
            (and (not (in$0 x sk_?X_51$0)) (not (in$0 x sk_?X_50$0))
                 (not (in$0 x (union$0 sk_?X_51$0 sk_?X_50$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x sk_?X_48$0) (in$0 x sk_?X_47$0)
                 (in$0 x (intersection$0 sk_?X_48$0 sk_?X_47$0)))
            (and (or (not (in$0 x sk_?X_48$0)) (not (in$0 x sk_?X_47$0)))
                 (not (in$0 x (intersection$0 sk_?X_48$0 sk_?X_47$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x sk_?X_46$0) (in$0 x sk_?X_45$0)
                 (in$0 x (intersection$0 sk_?X_46$0 sk_?X_45$0)))
            (and (or (not (in$0 x sk_?X_46$0)) (not (in$0 x sk_?X_45$0)))
                 (not (in$0 x (intersection$0 sk_?X_46$0 sk_?X_45$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x sk_?X_51$0) (in$0 x sk_?X_50$0)
                 (in$0 x (intersection$0 sk_?X_51$0 sk_?X_50$0)))
            (and (or (not (in$0 x sk_?X_51$0)) (not (in$0 x sk_?X_50$0)))
                 (not (in$0 x (intersection$0 sk_?X_51$0 sk_?X_50$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x sk_?X_53$0) (in$0 x sk_?X_52$0)
                 (in$0 x (intersection$0 sk_?X_53$0 sk_?X_52$0)))
            (and (or (not (in$0 x sk_?X_53$0)) (not (in$0 x sk_?X_52$0)))
                 (not (in$0 x (intersection$0 sk_?X_53$0 sk_?X_52$0)))))))

(assert (forall ((x Loc))
        (or
            (and (in$0 x FP_Caller$0) (in$0 x (setminus$0 FP_Caller$0 FP$0))
                 (not (in$0 x FP$0)))
            (and (or (in$0 x FP$0) (not (in$0 x FP_Caller$0)))
                 (not (in$0 x (setminus$0 FP_Caller$0 FP$0)))))))

(assert (forall ((y Loc) (x Loc))
        (or (and (= x y) (in$0 x (setenum$0 y)))
            (and (not (= x y)) (not (in$0 x (setenum$0 y)))))))

(assert (= (read$0 (write$0 next$0 tmp_3$0 cp_4$0) tmp_3$0) cp_4$0))

(assert (or (= null$0 tmp_3$0)
    (= (read$0 next$0 null$0)
      (read$0 (write$0 next$0 tmp_3$0 cp_4$0) null$0))))

(assert (or (= tmp_3$0 tmp_3$0)
    (= (read$0 next$0 tmp_3$0)
      (read$0 (write$0 next$0 tmp_3$0 cp_4$0) tmp_3$0))))

(assert (or (= curr_init$0 tmp_3$0)
    (= (read$0 next$0 curr_init$0)
      (read$0 (write$0 next$0 tmp_3$0 cp_4$0) curr_init$0))))

(assert (= (read$0 next$0 null$0) null$0))

(assert (= (read$0 next_2$0 null$0) null$0))

(assert (forall ((x Loc)) (not (in$0 x emptyset$0))))

(assert (or (Btwn$0 next$0 curr_init$0 null$0 null$0)
    (not (lseg_struct$0 sk_?X_47$0 next$0 curr_init$0 null$0))))

(assert (or (Btwn$0 next_2$0 cp_5$0 null$0 null$0)
    (not (lseg_struct$0 sk_?X_50$0 next_2$0 cp_5$0 null$0))))

(assert (or (Btwn$0 next_2$0 lst_2$0 curr_5$0 curr_5$0)
    (not (lseg_struct$0 sk_?X_53$0 next_2$0 lst_2$0 curr_5$0))))

(assert (= FP_3$0 (union$0 FP$0 (setenum$0 tmp_3$0))))

(assert (= cp_4$0 cp_init$0))

(assert (= curr_4$0 curr_init$0))

(assert (= lst_2$0 lst_init$0))

(assert (= old_cp_2$0 old_cp_init$0))

(assert (= tmp_2$0 tmp_init$0))

(assert (= emptyset$0 (intersection$0 sk_?X_46$0 sk_?X_45$0)))

(assert (= sk_?X_44$0 (union$0 sk_?X_46$0 sk_?X_45$0)))

(assert (= sk_?X_45$0 (lseg_domain$0 next$0 cp_init$0 null$0)))

(assert (= sk_?X_47$0 (lseg_domain$0 next$0 curr_init$0 null$0)))

(assert (= FP_Caller$0 (union$0 FP$0 FP_Caller$0)))

(assert (lseg_struct$0 sk_?X_47$0 next$0 curr_init$0 null$0))

(assert (= sk_?X_49$0 (union$0 sk_?X_51$0 sk_?X_50$0)))

(assert (= sk_?X_51$0 (union$0 sk_?X_53$0 sk_?X_52$0)))

(assert (= sk_?X_53$0 (lseg_domain$0 next_2$0 lst_2$0 curr_5$0)))

(assert (or (in$0 sk_?e_2$0 (intersection$0 sk_?X_51$0 sk_?X_50$0))
    (in$0 sk_?e_2$0 (intersection$0 sk_?X_53$0 sk_?X_52$0))
    (and (in$0 sk_?e_2$0 sk_FP_1$0) (not (in$0 sk_?e_2$0 FP_3$0)))
    (not (Btwn$0 next_2$0 cp_5$0 null$0 null$0))
    (not (Btwn$0 next_2$0 curr_5$0 null$0 null$0))
    (not (Btwn$0 next_2$0 lst_2$0 curr_5$0 curr_5$0))))

(assert (not (= tmp_3$0 null$0)))

(assert (not (in$0 tmp_3$0 Alloc$0)))

(assert (forall ((l1 Loc))
        (or
            (and (Btwn$0 next$0 curr_init$0 l1 null$0)
                 (in$0 l1 (lseg_domain$0 next$0 curr_init$0 null$0))
                 (not (= l1 null$0)))
            (and
                 (or (= l1 null$0)
                     (not (Btwn$0 next$0 curr_init$0 l1 null$0)))
                 (not (in$0 l1 (lseg_domain$0 next$0 curr_init$0 null$0)))))))

(assert (forall ((l1 Loc))
        (or
            (and (Btwn$0 next_2$0 cp_5$0 l1 null$0)
                 (in$0 l1 (lseg_domain$0 next_2$0 cp_5$0 null$0))
                 (not (= l1 null$0)))
            (and (or (= l1 null$0) (not (Btwn$0 next_2$0 cp_5$0 l1 null$0)))
                 (not (in$0 l1 (lseg_domain$0 next_2$0 cp_5$0 null$0)))))))

(assert (forall ((l1 Loc))
        (or
            (and (Btwn$0 next_2$0 lst_2$0 l1 curr_5$0)
                 (in$0 l1 (lseg_domain$0 next_2$0 lst_2$0 curr_5$0))
                 (not (= l1 curr_5$0)))
            (and
                 (or (= l1 curr_5$0)
                     (not (Btwn$0 next_2$0 lst_2$0 l1 curr_5$0)))
                 (not (in$0 l1 (lseg_domain$0 next_2$0 lst_2$0 curr_5$0)))))))

(assert (or (Btwn$0 next$0 cp_init$0 null$0 null$0)
    (not (lseg_struct$0 sk_?X_45$0 next$0 cp_init$0 null$0))))

(assert (or (Btwn$0 next$0 lst_init$0 curr_init$0 curr_init$0)
    (not (lseg_struct$0 sk_?X_48$0 next$0 lst_init$0 curr_init$0))))

(assert (or (Btwn$0 next_2$0 curr_5$0 null$0 null$0)
    (not (lseg_struct$0 sk_?X_52$0 next_2$0 curr_5$0 null$0))))

(assert (= Alloc_2$0 (union$0 Alloc$0 (setenum$0 tmp_3$0))))

(assert (= FP_Caller_2$0 (setminus$0 FP_Caller$0 FP$0)))

(assert (= cp_5$0 tmp_3$0))

(assert (= curr_5$0 (read$0 next_2$0 curr_4$0)))

(assert (= next_2$0 (write$0 next$0 cp_5$0 old_cp_4$0)))

(assert (= old_cp_4$0 cp_4$0))

(assert (= Alloc$0 (union$0 FP_Caller$0 Alloc$0)))

(assert (= emptyset$0 (intersection$0 sk_?X_48$0 sk_?X_47$0)))

(assert (= sk_?X_44$0 FP$0))

(assert (= sk_?X_46$0 (union$0 sk_?X_48$0 sk_?X_47$0)))

(assert (= sk_?X_48$0 (lseg_domain$0 next$0 lst_init$0 curr_init$0)))

(assert (lseg_struct$0 sk_?X_45$0 next$0 cp_init$0 null$0))

(assert (lseg_struct$0 sk_?X_48$0 next$0 lst_init$0 curr_init$0))

(assert (= sk_?X_50$0 (lseg_domain$0 next_2$0 cp_5$0 null$0)))

(assert (= sk_?X_52$0 (lseg_domain$0 next_2$0 curr_5$0 null$0)))

(assert (= sk_FP_1$0 sk_?X_49$0))

(assert (not (= curr_4$0 null$0)))

(assert (not (in$0 null$0 Alloc$0)))

(assert (forall ((l1 Loc))
        (or
            (and (Btwn$0 next$0 cp_init$0 l1 null$0)
                 (in$0 l1 (lseg_domain$0 next$0 cp_init$0 null$0))
                 (not (= l1 null$0)))
            (and (or (= l1 null$0) (not (Btwn$0 next$0 cp_init$0 l1 null$0)))
                 (not (in$0 l1 (lseg_domain$0 next$0 cp_init$0 null$0)))))))

(assert (forall ((l1 Loc))
        (or
            (and (Btwn$0 next$0 lst_init$0 l1 curr_init$0)
                 (in$0 l1 (lseg_domain$0 next$0 lst_init$0 curr_init$0))
                 (not (= l1 curr_init$0)))
            (and
                 (or (= l1 curr_init$0)
                     (not (Btwn$0 next$0 lst_init$0 l1 curr_init$0)))
                 (not
                      (in$0 l1 (lseg_domain$0 next$0 lst_init$0 curr_init$0)))))))

(assert (forall ((l1 Loc))
        (or
            (and (Btwn$0 next_2$0 curr_5$0 l1 null$0)
                 (in$0 l1 (lseg_domain$0 next_2$0 curr_5$0 null$0))
                 (not (= l1 null$0)))
            (and
                 (or (= l1 null$0)
                     (not (Btwn$0 next_2$0 curr_5$0 l1 null$0)))
                 (not (in$0 l1 (lseg_domain$0 next_2$0 curr_5$0 null$0)))))))

(assert (forall ((?u Loc) (?v Loc) (?z Loc))
        (and
             (or (Btwn$0 (write$0 next$0 cp_5$0 old_cp_4$0) ?z ?u ?v)
                 (not
                      (or
                          (and (Btwn$0 next$0 ?z ?u ?v)
                               (or (Btwn$0 next$0 ?z ?v cp_5$0)
                                   (and (Btwn$0 next$0 ?z ?v ?v)
                                        (not
                                             (Btwn$0 next$0 ?z cp_5$0 cp_5$0)))))
                          (and (not (= cp_5$0 ?v))
                               (or (Btwn$0 next$0 ?z cp_5$0 ?v)
                                   (and (Btwn$0 next$0 ?z cp_5$0 cp_5$0)
                                        (not (Btwn$0 next$0 ?z ?v ?v))))
                               (Btwn$0 next$0 ?z ?u cp_5$0)
                               (or (Btwn$0 next$0 old_cp_4$0 ?v cp_5$0)
                                   (and (Btwn$0 next$0 old_cp_4$0 ?v ?v)
                                        (not
                                             (Btwn$0 next$0 old_cp_4$0 cp_5$0
                                               cp_5$0)))))
                          (and (not (= cp_5$0 ?v))
                               (or (Btwn$0 next$0 ?z cp_5$0 ?v)
                                   (and (Btwn$0 next$0 ?z cp_5$0 cp_5$0)
                                        (not (Btwn$0 next$0 ?z ?v ?v))))
                               (Btwn$0 next$0 old_cp_4$0 ?u ?v)
                               (or (Btwn$0 next$0 old_cp_4$0 ?v cp_5$0)
                                   (and (Btwn$0 next$0 old_cp_4$0 ?v ?v)
                                        (not
                                             (Btwn$0 next$0 old_cp_4$0 cp_5$0
                                               cp_5$0))))))))
             (or
                 (and (Btwn$0 next$0 ?z ?u ?v)
                      (or (Btwn$0 next$0 ?z ?v cp_5$0)
                          (and (Btwn$0 next$0 ?z ?v ?v)
                               (not (Btwn$0 next$0 ?z cp_5$0 cp_5$0)))))
                 (and (not (= cp_5$0 ?v))
                      (or (Btwn$0 next$0 ?z cp_5$0 ?v)
                          (and (Btwn$0 next$0 ?z cp_5$0 cp_5$0)
                               (not (Btwn$0 next$0 ?z ?v ?v))))
                      (Btwn$0 next$0 ?z ?u cp_5$0)
                      (or (Btwn$0 next$0 old_cp_4$0 ?v cp_5$0)
                          (and (Btwn$0 next$0 old_cp_4$0 ?v ?v)
                               (not (Btwn$0 next$0 old_cp_4$0 cp_5$0 cp_5$0)))))
                 (and (not (= cp_5$0 ?v))
                      (or (Btwn$0 next$0 ?z cp_5$0 ?v)
                          (and (Btwn$0 next$0 ?z cp_5$0 cp_5$0)
                               (not (Btwn$0 next$0 ?z ?v ?v))))
                      (Btwn$0 next$0 old_cp_4$0 ?u ?v)
                      (or (Btwn$0 next$0 old_cp_4$0 ?v cp_5$0)
                          (and (Btwn$0 next$0 old_cp_4$0 ?v ?v)
                               (not (Btwn$0 next$0 old_cp_4$0 cp_5$0 cp_5$0)))))
                 (not (Btwn$0 (write$0 next$0 cp_5$0 old_cp_4$0) ?z ?u ?v))))))

(assert (forall ((?x Loc)) (Btwn$0 next$0 ?x ?x ?x)))

(assert (forall ((?x Loc) (?y Loc)) (or (not (Btwn$0 next$0 ?x ?y ?x)) (= ?x ?y))))

(assert (forall ((?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 next$0 ?x ?y ?y)) (not (Btwn$0 next$0 ?x ?z ?z))
            (Btwn$0 next$0 ?x ?y ?z) (Btwn$0 next$0 ?x ?z ?y))))

(assert (forall ((?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 next$0 ?x ?y ?z))
            (and (Btwn$0 next$0 ?x ?y ?y) (Btwn$0 next$0 ?y ?z ?z)))))

(assert (forall ((?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 next$0 ?x ?y ?y)) (not (Btwn$0 next$0 ?y ?z ?z))
            (Btwn$0 next$0 ?x ?z ?z))))

(assert (forall ((?u Loc) (?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 next$0 ?x ?y ?z)) (not (Btwn$0 next$0 ?y ?u ?z))
            (and (Btwn$0 next$0 ?x ?y ?u) (Btwn$0 next$0 ?x ?u ?z)))))

(assert (forall ((?u Loc) (?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 next$0 ?x ?y ?z)) (not (Btwn$0 next$0 ?x ?u ?y))
            (and (Btwn$0 next$0 ?x ?u ?z) (Btwn$0 next$0 ?u ?y ?z)))))

(check-sat)
(exit)
