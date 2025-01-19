% Didem Gümüş
% 1220505059

takim_uyesi(murat, [kodlama, tasarim], 9, 17).
takim_uyesi(hande, [test, tasarim], 10, 18).
takim_uyesi(fatih, [kodlama, test], 8, 16).
takim_uyesi(melek, [tasarim, test], 11, 19).

gorev(kodlama, [kodlama], 4).
gorev(tasarim, [tasarim], 3).
gorev(test, [test], 5).
gorev(entegrasyon, [kodlama, tasarim], 6).
gorev(debug, [kodlama, test], 5).

gorev_bagimliligi(kodlama, entegrasyon).
gorev_bagimliligi(tasarim, test).
gorev_bagimliligi(test, debug).

gorev_atama(Gorev, Kisi, Baslangic, Bitis) :-
    gorev(Gorev, GerekliBeceriler, Sure),
    takim_uyesi(Kisi, Beceriler, UygunBaslangic, UygunBitis),
    subset(GerekliBeceriler, Beceriler),
    between(UygunBaslangic, UygunBitis, Baslangic),
    Bitis is Baslangic + Sure,
    Bitis =< UygunBitis.

bagimliliklar_tamamlandi(_, []).
bagimliliklar_tamamlandi(Gorev, [gorev_atama(BagimliGorev, _, _, Bitis)|KalanAtamalar]) :-
    (gorev_bagimliligi(BagimliGorev, Gorev) -> 
     gorev_atama(BagimliGorev, _, _, Bitis); true),
    bagimliliklar_tamamlandi(Gorev, KalanAtamalar).

planlama([], _, []).
planlama([Gorev|KalanGorevler], Atamalar, [gorev_atama(Gorev, Kisi, Baslangic, Bitis)|YeniAtamalar]) :-
    bagimliliklar_tamamlandi(Gorev, Atamalar),
    gorev_atama(Gorev, Kisi, Baslangic, Bitis),
    planlama(KalanGorevler, [gorev_atama(Gorev, Kisi, Baslangic, Bitis)|Atamalar], YeniAtamalar).

proje_gorevleri(1, [tasarim, kodlama, test, debug]).
proje_gorevleri(2, [tasarim, kodlama, test, entegrasyon]).
proje_gorevleri(3, [tasarim, kodlama, test, entegrasyon, debug]).

tum_projeler([Proje1Plan, Proje2Plan, Proje3Plan], GunSayisi) :-
    proje_gorevleri(1, Proje1Gorevler),
    proje_gorevleri(2, Proje2Gorevler),
    proje_gorevleri(3, Proje3Gorevler),
    planlama(Proje1Gorevler, [], Proje1Plan),
    planlama(Proje2Gorevler, [], Proje2Plan),
    planlama(Proje3Gorevler, [], Proje3Plan),
    findall(Bitis, (member(gorev_atama(_, _, _, Bitis), Proje1Plan);
                    member(gorev_atama(_, _, _, Bitis), Proje2Plan);
                    member(gorev_atama(_, _, _, Bitis), Proje3Plan)), BitisZamanlari),
    max_list(BitisZamanlari, GunSayisi).