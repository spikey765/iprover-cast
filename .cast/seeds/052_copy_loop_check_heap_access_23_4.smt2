(set-info :smt-lib-version 2.6)
(set-logic UF)
(set-info :source |
  GRASShopper benchmarks.
  Authors: Ruzica Piskac, Thomas Wies, and Damien Zufferey
  URL: http://cs.nyu.edu/wies/software/grasshopper
  See also: GRASShopper - Complete Heap Verification with Mixed Specifications. In TACAS 2014, pages 124-139.

  If this benchmark is satisfiable, GRASShopper reports the following error message:
  tests/spl/sl/sl_copy.spl:23:4-22:Possible heap access through null or dangling reference
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
(declare-fun ep$0 (FldLoc SetLoc Loc) Loc)
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
(declare-fun sk_?X_39$0 () SetLoc)
(declare-fun sk_?X_40$0 () SetLoc)
(declare-fun sk_?X_41$0 () SetLoc)
(declare-fun sk_?X_42$0 () SetLoc)
(declare-fun sk_?X_43$0 () SetLoc)
(declare-fun t_9$0 () Loc)
(declare-fun t_10$0 () Loc)
(declare-fun tmp_2$0 () Loc)
(declare-fun tmp_3$0 () Loc)
(declare-fun tmp_init$0 () Loc)

(assert (= (read$0 next$0 cp_5$0) t_10$0))

(assert (= (read$0 (write$0 next$0 cp_5$0 old_cp_4$0) cp_5$0) t_9$0))

(assert (forall ((?d_4 Loc) (?x Loc) (?y Loc))
        (or (= ?y ?x)
            (= (read$0 next$0 ?y) (read$0 (write$0 next$0 ?x ?d_4) ?y)))))

(assert (forall ((?d_4 Loc) (?x Loc)) (= (read$0 (write$0 next$0 ?x ?d_4) ?x) ?d_4)))

(assert (forall ((?f FldLoc)) (= (read$0 ?f null$0) null$0)))

(assert (forall ((x Loc) (y Loc))
        (or (and (= x y) (in$0 x (setenum$0 y)))
            (and (not (= x y)) (not (in$0 x (setenum$0 y)))))))

(assert (forall ((X SetLoc) (Y SetLoc) (x Loc))
        (or (and (in$0 x X) (in$0 x (setminus$0 X Y)) (not (in$0 x Y)))
            (and (or (in$0 x Y) (not (in$0 x X)))
                 (not (in$0 x (setminus$0 X Y)))))))

(assert (forall ((X SetLoc) (Y SetLoc) (x Loc))
        (or (and (in$0 x X) (in$0 x Y) (in$0 x (intersection$0 X Y)))
            (and (or (not (in$0 x X)) (not (in$0 x Y)))
                 (not (in$0 x (intersection$0 X Y)))))))

(assert (forall ((X SetLoc) (Y SetLoc) (x Loc))
        (or (and (in$0 x (union$0 X Y)) (or (in$0 x X) (in$0 x Y)))
            (and (not (in$0 x X)) (not (in$0 x Y))
                 (not (in$0 x (union$0 X Y)))))))

(assert (forall ((x Loc)) (not (in$0 x emptyset$0))))

(assert (or (Btwn$0 next$0 cp_init$0 null$0 null$0)
    (not (lseg_struct$0 sk_?X_40$0 next$0 cp_init$0 null$0))))

(assert (or (Btwn$0 next$0 lst_init$0 curr_init$0 curr_init$0)
    (not (lseg_struct$0 sk_?X_43$0 next$0 lst_init$0 curr_init$0))))

(assert (= FP_3$0 (union$0 FP$0 (setenum$0 tmp_3$0))))

(assert (= cp_4$0 cp_init$0))

(assert (= curr_4$0 curr_init$0))

(assert (= next_2$0 (write$0 next$0 cp_5$0 old_cp_4$0)))

(assert (= old_cp_4$0 cp_4$0))

(assert (= Alloc$0 (union$0 FP_Caller$0 Alloc$0)))

(assert (= emptyset$0 (intersection$0 sk_?X_43$0 sk_?X_42$0)))

(assert (= sk_?X_39$0 FP$0))

(assert (= sk_?X_41$0 (union$0 sk_?X_43$0 sk_?X_42$0)))

(assert (= sk_?X_43$0 (lseg_domain$0 next$0 lst_init$0 curr_init$0)))

(assert (lseg_struct$0 sk_?X_40$0 next$0 cp_init$0 null$0))

(assert (lseg_struct$0 sk_?X_43$0 next$0 lst_init$0 curr_init$0))

(assert (not (= tmp_3$0 null$0)))

(assert (not (in$0 curr_4$0 FP_3$0)))

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

(assert (forall ((?X SetLoc) (?f FldLoc) (?x Loc))
        (or (in$0 (ep$0 ?f ?X ?x) ?X) (= ?x (ep$0 ?f ?X ?x)))))

(assert (forall ((?X SetLoc) (?f FldLoc) (?x Loc))
        (Btwn$0 ?f ?x (ep$0 ?f ?X ?x) (ep$0 ?f ?X ?x))))

(assert (or (Btwn$0 next$0 curr_init$0 null$0 null$0)
    (not (lseg_struct$0 sk_?X_42$0 next$0 curr_init$0 null$0))))

(assert (= Alloc_2$0 (union$0 Alloc$0 (setenum$0 tmp_3$0))))

(assert (= FP_Caller_2$0 (setminus$0 FP_Caller$0 FP$0)))

(assert (= cp_5$0 tmp_3$0))

(assert (= lst_2$0 lst_init$0))

(assert (= old_cp_2$0 old_cp_init$0))

(assert (= tmp_2$0 tmp_init$0))

(assert (= emptyset$0 (intersection$0 sk_?X_41$0 sk_?X_40$0)))

(assert (= sk_?X_39$0 (union$0 sk_?X_41$0 sk_?X_40$0)))

(assert (= sk_?X_40$0 (lseg_domain$0 next$0 cp_init$0 null$0)))

(assert (= sk_?X_42$0 (lseg_domain$0 next$0 curr_init$0 null$0)))

(assert (= FP_Caller$0 (union$0 FP$0 FP_Caller$0)))

(assert (lseg_struct$0 sk_?X_42$0 next$0 curr_init$0 null$0))

(assert (not (= curr_4$0 null$0)))

(assert (not (in$0 null$0 Alloc$0)))

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

(assert (forall ((?X SetLoc) (?f FldLoc) (?x Loc) (?y Loc))
        (or (Btwn$0 ?f ?x (ep$0 ?f ?X ?x) ?y) (not (Btwn$0 ?f ?x ?y ?y))
            (not (in$0 ?y ?X)))))

(assert (forall ((?X SetLoc) (?f FldLoc) (?x Loc) (?y Loc))
        (or (not (Btwn$0 ?f ?x ?y ?y)) (not (in$0 ?y ?X))
            (in$0 (ep$0 ?f ?X ?x) ?X))))

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

(assert (forall ((?f FldLoc) (?u Loc) (?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 ?f ?x ?y ?z)) (not (Btwn$0 ?f ?x ?u ?y))
            (and (Btwn$0 ?f ?x ?u ?z) (Btwn$0 ?f ?u ?y ?z)))))

(assert (forall ((?f FldLoc) (?u Loc) (?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 ?f ?x ?y ?z)) (not (Btwn$0 ?f ?y ?u ?z))
            (and (Btwn$0 ?f ?x ?y ?u) (Btwn$0 ?f ?x ?u ?z)))))

(assert (forall ((?f FldLoc) (?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 ?f ?x ?y ?y)) (not (Btwn$0 ?f ?y ?z ?z))
            (Btwn$0 ?f ?x ?z ?z))))

(assert (forall ((?f FldLoc) (?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 ?f ?x ?y ?z))
            (and (Btwn$0 ?f ?x ?y ?y) (Btwn$0 ?f ?y ?z ?z)))))

(assert (forall ((?f FldLoc) (?x Loc) (?y Loc) (?z Loc))
        (or (not (Btwn$0 ?f ?x ?y ?y)) (not (Btwn$0 ?f ?x ?z ?z))
            (Btwn$0 ?f ?x ?y ?z) (Btwn$0 ?f ?x ?z ?y))))

(assert (forall ((?f FldLoc) (?x Loc) (?y Loc))
        (or (not (Btwn$0 ?f ?x ?y ?x)) (= ?x ?y))))

(assert (forall ((?f FldLoc) (?x Loc) (?y Loc))
        (or (not (Btwn$0 ?f ?x ?y ?y)) (= ?x ?y)
            (Btwn$0 ?f ?x (read$0 ?f ?x) ?y))))

(assert (forall ((?f FldLoc) (?x Loc) (?y Loc))
        (or (not (= (read$0 ?f ?x) ?x)) (not (Btwn$0 ?f ?x ?y ?y)) (= ?x ?y))))

(assert (forall ((?f FldLoc) (?x Loc)) (Btwn$0 ?f ?x (read$0 ?f ?x) (read$0 ?f ?x))))

(assert (forall ((?f FldLoc) (?x Loc)) (Btwn$0 ?f ?x ?x ?x)))

(check-sat)
(exit)
