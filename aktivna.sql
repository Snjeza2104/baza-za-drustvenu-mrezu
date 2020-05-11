DROP DATABASE IF EXISTS aktivna;
CREATE DATABASE IF NOT EXISTS aktivna;
USE aktivna;
/*
DROP FUNCTION IF EXISTS kojaGrupa;

DROP PROCEDURE IF EXISTS student_upisuje_kolegij;
DROP PROCEDURE IF EXISTS pretrazivanje_po_imenu_i_prezimenu;
DROP PROCEDURE IF EXISTS nadji_grad;
DROP PROCEDURE IF EXISTS nadji_drzavaID;
DROP PROCEDURE IF EXISTS razmjena_poruka;
DROP PROCEDURE IF EXISTS s_koliko_ljudi_dijelim_informacije;
DROP PROCEDURE IF EXISTS koliko_ljudi_sa_mnom_dijeli_informacije;
DROP PROCEDURE IF EXISTS koje_komentare_vidim_u_kojoj_grupi;
DROP PROCEDURE IF EXISTS koje_komentare_vidim;
DROP PROCEDURE IF EXISTS koje_postove_vidim_u_kojoj_grupi;
DROP PROCEDURE IF EXISTS koje_postove_vidim_u_grupama;
DROP PROCEDURE IF EXISTS kome_vidim_spomenar;
DROP PROCEDURE IF EXISTS koje_primljene_poruke_vidim;
DROP PROCEDURE IF EXISTS koje_poslane_poruke_vidim;
DROP PROCEDURE IF EXISTS koga_vidim;

DROP VIEW IF EXISTS gost_slusa_prikaz;
DROP VIEW IF EXISTS gost_slusa1;
DROP VIEW IF EXISTS gosta_zanima_prikaz;
DROP VIEW IF EXISTS gosta_zanima1;
DROP VIEW IF EXISTS gost_zna_jezike_prikaz;
DROP VIEW IF EXISTS gost_zna_jezike1;
DROP VIEW IF EXISTS gostujuci_student_prikaz;
DROP VIEW IF EXISTS gostujuci_student1;
DROP VIEW IF EXISTS dijeli_informacije_prikaz;
DROP VIEW IF EXISTS dijeli_informacije1;
DROP VIEW IF EXISTS komentari_st_prikaz;
DROP VIEW IF EXISTS komentari_st1;
DROP VIEW IF EXISTS post_grupe_st_prikaz;
DROP VIEW IF EXISTS post_grupe_st1;
DROP VIEW IF EXISTS korisnici_grupe_st_prikaz;
DROP VIEW IF EXISTS korisnici_grupe_st1;
DROP VIEW IF EXISTS grupa_studenata_prikaz;
DROP VIEW IF EXISTS upisao_prikaz;
DROP VIEW IF EXISTS upisao1;
DROP VIEW IF EXISTS izvode_prikaz;
DROP VIEW IF EXISTS izvode1;
DROP VIEW IF EXISTS kolegijsmjerprofesor;
DROP VIEW IF EXISTS kolegijsmjerfakultet;
DROP VIEW IF EXISTS izvodi_se_prikaz;
DROP VIEW IF EXISTS predznanja_prikaz;
DROP VIEW IF EXISTS predznanja1;
DROP VIEW IF EXISTS studira_na_prikaz;
DROP VIEW IF EXISTS studira_na1;
DROP VIEW IF EXISTS komentari_prikaz;
DROP VIEW IF EXISTS komentari1;
DROP VIEW IF EXISTS post_grupe_prikaz;
DROP VIEW IF EXISTS post_grupe1;
DROP VIEW IF EXISTS korisnici_grupe_prikaz;
DROP VIEW IF EXISTS korisnici_grupe1;
DROP VIEW IF EXISTS tko_moze_u_grupu_prof;
DROP VIEW IF EXISTS grupa_prikaz;
DROP VIEW IF EXISTS zip_prof_prikaz;
DROP VIEW IF EXISTS zip_prof1;
DROP VIEW IF EXISTS konzultacije_prof_prikaz;
DROP VIEW IF EXISTS konzultacije_prof2;
DROP VIEW IF EXISTS konzultacije_prof1;
DROP VIEW IF EXISTS termini_konzultacija_prikaz;
DROP VIEW IF EXISTS web_stranice_prof_prikaz;
DROP VIEW IF EXISTS kabineti_prof_prikaz;
DROP VIEW IF EXISTS kabineti_prof1;
DROP VIEW IF EXISTS kabineti_prikaz;
DROP VIEW IF EXISTS prof_na_fakultetima_prikaz;
DROP VIEW IF EXISTS prof_na_fakultetima1;
DROP VIEW IF EXISTS smjerovi_na_fakultetima_prikaz;
DROP VIEW IF EXISTS ustanove_i_adrese;
DROP VIEW IF EXISTS dodatno_prikaz;
DROP VIEW IF EXISTS dodatno1;
DROP VIEW IF EXISTS fakultet_prikaz;
DROP VIEW IF EXISTS fakultet1;
DROP VIEW IF EXISTS o_slici_prikaz;
DROP VIEW IF EXISTS slika_prikaz;
DROP VIEW IF EXISTS obrazovanje_korisnika_prikaz;
DROP VIEW IF EXISTS obrazovanje_prikaz;
DROP VIEW IF EXISTS obrazovanje_u_ustanovi_prikaz;
DROP VIEW IF EXISTS ustanove_obrazovanja_prikaz;
DROP VIEW IF EXISTS spomenar_obrisani;
DROP VIEW IF EXISTS spomenar_prikaz;
DROP VIEW IF EXISTS spomenar1;
DROP VIEW IF EXISTS poruke_prikaz;
DROP VIEW IF EXISTS poruke2;
DROP VIEW IF EXISTS poruke1;
DROP VIEW IF EXISTS osobni_podaci;
DROP VIEW IF EXISTS o_sebi_prikaz;
DROP VIEW IF EXISTS knjige_prikaz;
DROP VIEW IF EXISTS filmovi_prikaz;
DROP VIEW IF EXISTS TV_emisije_i_serije_prikaz;
DROP VIEW IF EXISTS glazba_prikaz;
DROP VIEW IF EXISTS interes_prikaz;
DROP VIEW IF EXISTS aktivnost_prikaz;
DROP VIEW IF EXISTS profesor_prikaz_s_ulicom;
DROP VIEW IF EXISTS profesor_prikaz;
DROP VIEW IF EXISTS profesori;
DROP VIEW IF EXISTS student_prikaz;
DROP VIEW IF EXISTS studenti;
DROP VIEW IF EXISTS ulica_prikaz;
DROP VIEW IF EXISTS korisnik_prikaz;
DROP VIEW IF EXISTS naziv_grada_prikaz;

DROP TRIGGER IF EXISTS gost_slusa_pov_upd;
DROP TRIGGER IF EXISTS gost_slusa_pov_ins;
DROP TRIGGER IF EXISTS gosta_zanima_pov_upd;
DROP TRIGGER IF EXISTS gosta_zanima_pov_ins;
DROP TRIGGER IF EXISTS gost_zna_jezike_pov_upd;
DROP TRIGGER IF EXISTS gost_zna_jezike_pov_ins;
DROP TRIGGER IF EXISTS gostujuci_student_pov_upd;
DROP TRIGGER IF EXISTS gostujuci_student_pov_ins;
DROP TRIGGER IF EXISTS jezici_pov_upd;
DROP TRIGGER IF EXISTS jezici_pov_ins;
DROP TRIGGER IF EXISTS obrisi_dijeljenje_sa_samim_sobom;
DROP TRIGGER IF EXISTS dijeli_informacije_pov_upd;
DROP TRIGGER IF EXISTS dijeli_informacije_pov_ins;
DROP TRIGGER IF EXISTS obrisi_krive_komentare_st;
DROP TRIGGER IF EXISTS komentari_st_pov_upd;
DROP TRIGGER IF EXISTS komentari_st_pov_ins;
DROP TRIGGER IF EXISTS post_grupe_st_pov_upd;
DROP TRIGGER IF EXISTS post_grupe_st_pov_ins;
DROP TRIGGER IF EXISTS obrisi_krive_korisnike;
DROP TRIGGER IF EXISTS korisnici_grupe_st_pov_upd;
DROP TRIGGER IF EXISTS korisnici_grupe_st_pov_ins;
DROP TRIGGER IF EXISTS grupa_studenata_pov_upd;
DROP TRIGGER IF EXISTS grupa_studenata_pov_ins;
DROP TRIGGER IF EXISTS upisao_pov_upd;
DROP TRIGGER IF EXISTS upisao_pov_ins;
DROP TRIGGER IF EXISTS obrisi_izvode;
DROP TRIGGER IF EXISTS izvode_pov_upd;
DROP TRIGGER IF EXISTS izvode_pov_ins;
DROP TRIGGER IF EXISTS izvodi_se_pov_upd;
DROP TRIGGER IF EXISTS izvodi_se_pov_ins;
DROP TRIGGER IF EXISTS obrisi_kriva_predznanja;
DROP TRIGGER IF EXISTS predznanja_pov_upd;
DROP TRIGGER IF EXISTS predznanja_pov_ins;
DROP TRIGGER IF EXISTS kolegij_pov_upd;
DROP TRIGGER IF EXISTS kolegij_pov_ins;
DROP TRIGGER IF EXISTS obrisi_krivi_upis_studenta;
DROP TRIGGER IF EXISTS studira_na_pov_upd;
DROP TRIGGER IF EXISTS studira_na_pov_ins;
DROP TRIGGER IF EXISTS status_studenta_pov_upd;
DROP TRIGGER IF EXISTS status_studenta_pov_ins;
DROP TRIGGER IF EXISTS obrisi_krive_komentare_prof;
DROP TRIGGER IF EXISTS komentari_pov_upd;
DROP TRIGGER IF EXISTS komentari_pov_ins;
DROP TRIGGER IF EXISTS post_grupe_pov_upd;
DROP TRIGGER IF EXISTS post_grupe_pov_ins;
DROP TRIGGER IF EXISTS obrisi_krive_korisnike_st;
DROP TRIGGER IF EXISTS korisnici_grupe_pov_upd;
DROP TRIGGER IF EXISTS korisnici_grupe_pov_ins;
DROP TRIGGER IF EXISTS grupa_pov_upd;
DROP TRIGGER IF EXISTS grupa_pov_ins;
DROP TRIGGER IF EXISTS zip_prof_pov_upd;
DROP TRIGGER IF EXISTS zip_prof_pov_ins;
DROP TRIGGER IF EXISTS znanstveno_istrazivacko_podrucje_pov_upd;
DROP TRIGGER IF EXISTS znanstveno_istrazivacko_podrucje_pov_ins;
DROP TRIGGER IF EXISTS obrisi_krive_termine;
DROP TRIGGER IF EXISTS konzultacije_prof_pov_upd;
DROP TRIGGER IF EXISTS konzultacije_prof_pov_ins;
DROP TRIGGER IF EXISTS obrisi_termine_konzultacija;
DROP TRIGGER IF EXISTS termini_konzultacija_pov_upd;
DROP TRIGGER IF EXISTS termini_konzultacija_pov_ins;
DROP TRIGGER IF EXISTS web_stranice_prof_pov_upd;
DROP TRIGGER IF EXISTS web_stranice_prof_pov_ins;
DROP TRIGGER IF EXISTS obrisi_krive_kab_prof;
DROP TRIGGER IF EXISTS kabineti_prof_pov_upd;
DROP TRIGGER IF EXISTS kabineti_prof_pov_ins;
DROP TRIGGER IF EXISTS kabineti_pov_upd;
DROP TRIGGER IF EXISTS kabineti_pov_ins;
DROP TRIGGER IF EXISTS obrisi_krive_zapise_o_prof;
DROP TRIGGER IF EXISTS prof_na_fakultetima_pov_upd;
DROP TRIGGER IF EXISTS prof_na_fakultetima_pov_ins;
DROP TRIGGER IF EXISTS smjerovi_na_fakultetima_pov_upd;
DROP TRIGGER IF EXISTS smjerovi_na_fakultetima_pov_ins;
DROP TRIGGER IF EXISTS tip_studija_pov_upd;
DROP TRIGGER IF EXISTS tip_studija_pov_ins;
DROP TRIGGER IF EXISTS dodatno_pov_upd;
DROP TRIGGER IF EXISTS dodatno_pov_ins;
DROP TRIGGER IF EXISTS fakultet_pov_upd;
DROP TRIGGER IF EXISTS fakultet_pov_ins;
DROP TRIGGER IF EXISTS o_slici_pov_upd;
DROP TRIGGER IF EXISTS o_slici_pov_ins;
DROP TRIGGER IF EXISTS slika_pov_upd;
DROP TRIGGER IF EXISTS slika_pov_ins;
DROP TRIGGER IF EXISTS obrazovanje_korisnika_pov_upd;
DROP TRIGGER IF EXISTS obrazovanje_korisnika_pov_ins;
DROP TRIGGER IF EXISTS obrisi_obrazovanje;
DROP TRIGGER IF EXISTS obrazovanje_pov_upd;
DROP TRIGGER IF EXISTS obrazovanje_pov_ins;
DROP TRIGGER IF EXISTS obrazovanje_u_ustanovi_pov_upd;
DROP TRIGGER IF EXISTS obrazovanje_u_ustanovi_pov_ins;
DROP TRIGGER IF EXISTS ustanove_obrazovanja_pov_upd;
DROP TRIGGER IF EXISTS ustanove_obrazovanja_pov_ins;
DROP TRIGGER IF EXISTS obrisi_spomenar_sa_samim_sobom;
DROP TRIGGER IF EXISTS spomenar_pov_upd;
DROP TRIGGER IF EXISTS spomenar_pov_ins;
DROP TRIGGER IF EXISTS poruke_pov_upd;
DROP TRIGGER IF EXISTS poruke_pov_ins;
DROP TRIGGER IF EXISTS tekst_poruke_pov_upd;
DROP TRIGGER IF EXISTS tekst_poruke_pov_ins;
DROP TRIGGER IF EXISTS o_sebi_pov_upd;
DROP TRIGGER IF EXISTS o_sebi_pov_ins;
DROP TRIGGER IF EXISTS knjige_pov_upd;
DROP TRIGGER IF EXISTS knjige_pov_ins;
DROP TRIGGER IF EXISTS filmovi_pov_upd;
DROP TRIGGER IF EXISTS filmovi_pov_ins;
DROP TRIGGER IF EXISTS TV_emisije_i_serije_pov_upd;
DROP TRIGGER IF EXISTS TV_emisije_i_serije_pov_ins;
DROP TRIGGER IF EXISTS glazba_pov_upd;
DROP TRIGGER IF EXISTS glazba_pov_ins;
DROP TRIGGER IF EXISTS interes_pov_upd;
DROP TRIGGER IF EXISTS interes_pov_ins;
DROP TRIGGER IF EXISTS aktivnost_pov_upd;
DROP TRIGGER IF EXISTS aktivnost_pov_ins;
DROP TRIGGER IF EXISTS profesor_pov_upd;
DROP TRIGGER IF EXISTS profesor_pov_ins;
DROP TRIGGER IF EXISTS znanstvene_titule_pov_upd;
DROP TRIGGER IF EXISTS znanstvene_titule_pov_ins;
DROP TRIGGER IF EXISTS nastavne_titule_pov_upd;
DROP TRIGGER IF EXISTS nastavne_titule_pov_ins;
DROP TRIGGER IF EXISTS student_pov_upd;
DROP TRIGGER IF EXISTS student_pov_ins;
DROP TRIGGER IF EXISTS ulica_pov_upd;
DROP TRIGGER IF EXISTS ulica_pov_ins;
DROP TRIGGER IF EXISTS korisnik_pov_upd;
DROP TRIGGER IF EXISTS korisnik_pov_ins;
DROP TRIGGER IF EXISTS naziv_grada_pov_upd;
DROP TRIGGER IF EXISTS naziv_grada_pov_ins;
DROP TRIGGER IF EXISTS drzava_pov_upd;
DROP TRIGGER IF EXISTS drzava_pov_ins;

DROP TABLE IF EXISTS gost_slusa;
DROP TABLE IF EXISTS gosta_zanima;
DROP TABLE IF EXISTS gost_zna_jezike;
DROP TABLE IF EXISTS gostujuci_student;
DROP TABLE IF EXISTS jezici;
DROP TABLE IF EXISTS dijeli_informacije;
DROP TABLE IF EXISTS komentari_st;
DROP TABLE IF EXISTS post_grupe_st;
DROP TABLE IF EXISTS korisnici_grupe_st;
DROP TABLE IF EXISTS grupa_studenata;
DROP TABLE IF EXISTS upisao;
DROP TABLE IF EXISTS izvode;
DROP TABLE IF EXISTS izvodi_se;
DROP TABLE IF EXISTS predznanja;
DROP TABLE IF EXISTS kolegij;
DROP TABLE IF EXISTS studira_na;
DROP TABLE IF EXISTS status_studenta;
DROP TABLE IF EXISTS komentari;
DROP TABLE IF EXISTS post_grupe;
DROP TABLE IF EXISTS korisnici_grupe;
DROP TABLE IF EXISTS grupa;
DROP TABLE IF EXISTS zip_prof;
DROP TABLE IF EXISTS znanstveno_istrazivacko_podrucje;
DROP TABLE IF EXISTS konzultacije_prof;
DROP TABLE IF EXISTS termini_konzultacija;
DROP TABLE IF EXISTS web_stranice_prof;
DROP TABLE IF EXISTS kabineti_prof;
DROP TABLE IF EXISTS kabineti;
DROP TABLE IF EXISTS prof_na_fakultetima;
DROP TABLE IF EXISTS smjerovi_na_fakultetima;
DROP TABLE IF EXISTS tip_studija;
DROP TABLE IF EXISTS dodatno;
DROP TABLE IF EXISTS fakultet;
DROP TABLE IF EXISTS o_slici;
DROP TABLE IF EXISTS slika;
DROP TABLE IF EXISTS obrazovanje_korisnika;
DROP TABLE IF EXISTS obrazovanje;
DROP TABLE IF EXISTS obrazovanje_u_ustanovi;
DROP TABLE IF EXISTS ustanove_obrazovanja;
DROP TABLE IF EXISTS spomenar;
DROP TABLE IF EXISTS poruke;
DROP TABLE IF EXISTS tekst_poruke;
DROP TABLE IF EXISTS o_sebi;
DROP TABLE IF EXISTS knjige;
DROP TABLE IF EXISTS filmovi;
DROP TABLE IF EXISTS TV_emisije_i_serije;
DROP TABLE IF EXISTS glazba;
DROP TABLE IF EXISTS interes;
DROP TABLE IF EXISTS aktivnost;
DROP TABLE IF EXISTS profesor;
DROP TABLE IF EXISTS znanstvene_titule;
DROP TABLE IF EXISTS nastavne_titule;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS ulica;
DROP TABLE IF EXISTS korisnik;
DROP TABLE IF EXISTS naziv_grada;
DROP TABLE IF EXISTS drzava;
*/

/*Tablica s popisom država */
CREATE TABLE IF NOT EXISTS drzava (
  drzavaID TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  ime_drzave VARCHAR(30) NOT NULL,
  PRIMARY KEY (drzavaID))
ENGINE = InnoDB;

/*Indeks jedinstvenosti na ime države*/
CREATE UNIQUE INDEX ime_drzave_UNIQUE01 ON drzava(ime_drzave);

/*Unos države u povijesnu bazu*/
CREATE TRIGGER drzava_pov_ins
BEFORE INSERT ON aktivna.drzava
FOR EACH ROW
INSERT INTO povijesna.drzava VALUES(NEW.drzavaID, NEW.ime_drzave);

/*Ažuriranje podataka o državi s povijesnom bazom*/
CREATE TRIGGER drzava_pov_upd
BEFORE UPDATE ON aktivna.drzava
FOR EACH ROW
UPDATE povijesna.drzava 
SET drzavaID=NEW.drzavaID, ime_drzave=NEW.ime_drzave 
WHERE drzavaID=OLD.drzavaID;


/*Tablica s popisom gradova*/
CREATE TABLE IF NOT EXISTS naziv_grada (
  gradID INT UNSIGNED NOT NULL,
  postanski_broj INT UNSIGNED NOT NULL,
  naziv_grada VARCHAR(45) NOT NULL,
  drzavaID TINYINT UNSIGNED NOT NULL DEFAULT '64', /*zbog primjera u datoteci eksperimentalna.sql je drzavaID=64 za Hrvatsku*/
  PRIMARY KEY (gradID),
  CONSTRAINT drzavaID02
    FOREIGN KEY (drzavaID)
    REFERENCES drzava (drzavaID)
    ON DELETE RESTRICT /*ne daj obrisati državu koja je povezana s gradom koji se u njoj nalazi*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè*/
CREATE INDEX drzavaID_fk02 ON naziv_grada(drzavaID);

/*Jedinstvena kombinacija države, naziva grada i poštanskog broja*/
CREATE UNIQUE INDEX postanski02 ON naziv_grada(postanski_broj, naziv_grada, drzavaID); 

/*Indeks na naziv grada (pretpostavlja se pretraživanje grada po nazivu)*/
CREATE INDEX naziv_grada02 ON naziv_grada(naziv_grada);

/*Unos grada u povijesnu bazu*/
CREATE TRIGGER naziv_grada_pov_ins
BEFORE INSERT ON aktivna.naziv_grada
FOR EACH ROW
INSERT INTO povijesna.naziv_grada VALUES(NEW.gradID, NEW.postanski_broj, NEW.naziv_grada, NEW.drzavaID);

/*Ažuriranje podataka o gradu s povijesnom bazom*/
CREATE TRIGGER naziv_grada_pov_upd
BEFORE UPDATE ON aktivna.naziv_grada
FOR EACH ROW
UPDATE povijesna.naziv_grada
SET gradID=NEW.gradID, postanski_broj=NEW.postanski_broj, naziv_grada=NEW.naziv_grada, drzavaID=NEW.drzavaID
WHERE gradID=OLD.gradID;

/*Prikaz koji uz grad navodi naziv države umjesto drzavaID*/
CREATE OR REPLACE VIEW naziv_grada_prikaz AS
SELECT 	gradID, postanski_broj, naziv_grada, ime_drzave
FROM drzava NATURAL JOIN naziv_grada
WITH CHECK OPTION;

/*Tablica s popisom korisnika*/
CREATE TABLE IF NOT EXISTS korisnik (
  userID INT UNSIGNED NOT NULL,
  username VARCHAR(10) NOT NULL,
  password VARCHAR(10) NOT NULL,
  ime VARCHAR(20) NOT NULL,
  prezime VARCHAR(30) NOT NULL,
  spol ENUM('m', 'ž') NOT NULL,
  datum_rodjenja DATE NOT NULL,
  mjesto_rodjenja INT UNSIGNED NOT NULL,
  PRIMARY KEY (userID),
  CONSTRAINT mjesto_rodjenja03
    FOREIGN KEY (mjesto_rodjenja)
    REFERENCES naziv_grada(gradID)
    ON DELETE RESTRICT /*ne dopusti brisanje grada u kojem je netko roðen*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Jedinstveno korisnièko ime*/
CREATE UNIQUE INDEX username_UNIQUE03 ON korisnik(username);

/*Strani kljuè - indeks je od koristi*/
CREATE INDEX mjesto_rodjenja_fk03 ON korisnik(mjesto_rodjenja);

/*Unos korisnika u povijesnu bazu*/
CREATE TRIGGER korisnik_pov_ins
BEFORE INSERT ON aktivna.korisnik
FOR EACH ROW
INSERT INTO povijesna.korisnik VALUES(NEW.userID, NEW.username, NEW.password, NEW.ime, NEW.prezime, NEW.spol, NEW.datum_rodjenja, NEW.mjesto_rodjenja);

/*Ažuriranje podataka o korisniku s povijesnom bazom*/
CREATE TRIGGER korisnik_pov_upd
BEFORE UPDATE ON aktivna.korisnik
FOR EACH ROW
UPDATE povijesna.korisnik SET 
userID=NEW.userID, username=NEW.username, password=NEW.password, ime=NEW.ime, prezime=NEW.prezime, 
spol=NEW.spol, datum_rodjenja=NEW.datum_rodjenja, mjesto_rodjenja=NEW.mjesto_rodjenja
WHERE
userID=OLD.userID;

/*Prikaz koji uz korisnika navodi podatke o gradu u kojem se rodio*/
CREATE OR REPLACE VIEW korisnik_prikaz AS
SELECT userID, username, ime, prezime, spol, datum_rodjenja, 
postanski_broj AS 'postanski_broj_rodnog_grada', naziv_grada AS 'grad_rodjenja', ime_drzave AS 'drzava_rodjenja'
FROM korisnik JOIN naziv_grada_prikaz
ON korisnik.mjesto_rodjenja=naziv_grada_prikaz.gradID
WITH CHECK OPTION;

/*Tablica s popisom ulica*/
CREATE TABLE IF NOT EXISTS ulica (
  ulicaID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  naziv_ulice VARCHAR(35) NOT NULL,
  gradID INT UNSIGNED NOT NULL,
  PRIMARY KEY (ulicaID),
  CONSTRAINT gradID04
    FOREIGN KEY (gradID)
    REFERENCES naziv_grada(gradID)
    ON DELETE RESTRICT /*ne dopusti brisanje grada za koji imamo unesenu ulicu*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - od koristi*/
CREATE INDEX gradID_fk04 ON ulica(gradID);

/*sprjeèava dvostruki unos iste ulice u istom gradu*/
CREATE UNIQUE INDEX ulicaigrad04 ON ulica(naziv_ulice, gradID); 

/*Unos ulice u povijesnu bazu*/
CREATE TRIGGER ulica_pov_ins
BEFORE INSERT ON aktivna.ulica
FOR EACH ROW
INSERT INTO povijesna.ulica VALUES(NEW.ulicaID, NEW.naziv_ulice, NEW.gradID);

/*Ažuriranje podataka o ulici s povijesnom bazom*/
CREATE TRIGGER ulica_pov_upd
BEFORE UPDATE ON aktivna.ulica
FOR EACH ROW
UPDATE povijesna.ulica
SET ulicaID=NEW.ulicaID, naziv_ulice=NEW.naziv_ulice, gradID=NEW.gradID
WHERE ulicaID=OLD.ulicaID;

/*Prikaz koji uz ulicu navodi poštanski broj, naziv grada i ime države u kojoj se ulica nalazi*/
CREATE OR REPLACE VIEW ulica_prikaz AS
SELECT ulicaID, naziv_ulice, postanski_broj, naziv_grada, ime_drzave
FROM ulica NATURAL JOIN naziv_grada_prikaz
WITH CHECK OPTION;

/*Tablica s popisom studenata*/
CREATE TABLE IF NOT EXISTS student(
  sID INT UNSIGNED NOT NULL,
  ulicaID INT UNSIGNED NOT NULL,
  broj VARCHAR(6) NOT NULL,
  telefon VARCHAR(15) NOT NULL,
  mobitel VARCHAR(15) NOT NULL,
  email VARCHAR(35) NOT NULL,
  PRIMARY KEY (sID),
  CONSTRAINT sID05
    FOREIGN KEY (sID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*ako obrišeš korisnika, obriši ga i kao studenta*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT ulicaID05
    FOREIGN KEY (ulicaID)
    REFERENCES ulica(ulicaID)
    ON DELETE RESTRICT /*zabrani brisanje ulice u kojoj netko živi*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Strani kljuè - indeks je od koristi*/
CREATE INDEX ulicaID_fk05 ON student(ulicaID);

/*pretpostavimo da svaki student ima svoj mobitel, jedinstveni*/
CREATE UNIQUE INDEX mobitel_UNIQUE05 ON student(mobitel); 

/*pretpostavimo da svaki student ima jedinstvenu mail adresu*/
CREATE UNIQUE INDEX email_UNIQUE05 ON student(email); 

/*Unos studenata u povijesnu bazu*/
CREATE TRIGGER student_pov_ins
BEFORE INSERT ON aktivna.student
FOR EACH ROW
INSERT INTO povijesna.student VALUES(NEW.sID, NEW.ulicaID, NEW.broj, NEW.telefon, NEW.mobitel, NEW.email);

/*Ažuriranj podataka o studentima s povijesnom bazom*/
CREATE TRIGGER student_pov_upd
BEFORE UPDATE ON aktivna.student
FOR EACH ROW
UPDATE povijesna.student
SET sID=NEW.sID, ulicaID=NEW.ulicaID, broj=NEW.broj, telefon=NEW.telefon, mobitel=NEW.mobitel, email=NEW.email
WHERE sID=OLD.sID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW studenti AS
SELECT userID, username, ime, prezime, ulicaID, 
broj, telefon, mobitel, email 
FROM korisnik_prikaz JOIN student
ON userID=sID
WITH CHECK OPTION;

/*Prikaz studenata s adresom*/
CREATE OR REPLACE VIEW student_prikaz AS
SELECT userID, username, ime, prezime, naziv_ulice, 
broj, postanski_broj, naziv_grada, ime_drzave, telefon, 
mobitel, email 
FROM studenti NATURAL JOIN ulica_prikaz
WITH CHECK OPTION;

/*Tablica s popisom nastavnih titula*/
CREATE TABLE IF NOT EXISTS nastavne_titule(
  ntitulaID TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  naziv_ntitule VARCHAR(20) NOT NULL,
  kratica_ntitule VARCHAR(12) NOT NULL,
  PRIMARY KEY (ntitulaID))
ENGINE = InnoDB;

/*jedinstvena nastavna titula*/
CREATE UNIQUE INDEX naziv_ntitule_UNIQUE06 ON nastavne_titule(naziv_ntitule); 

/*jedinstvena kratica nastavne titule*/
CREATE UNIQUE INDEX kratica_titule_UNIQUE06 ON nastavne_titule(kratica_ntitule); 

/*Unos nastavnih titula u povijesnu bazu*/
CREATE TRIGGER nastavne_titule_pov_ins
BEFORE INSERT ON aktivna.nastavne_titule
FOR EACH ROW
INSERT INTO povijesna.nastavne_titule VALUES (NEW.ntitulaID, NEW.naziv_ntitule, NEW.kratica_ntitule);

/*Ažuriranje podataka o nastavnim titulama s povijesnom bazom*/
CREATE TRIGGER nastavne_titule_pov_upd
BEFORE UPDATE ON aktivna.nastavne_titule
FOR EACH ROW
UPDATE povijesna.nastavne_titule
SET ntitulaID=NEW.ntitulaID, naziv_ntitule=NEW.naziv_ntitule, kratica_ntitule=NEW.kratica_ntitule
WHERE ntitulaID=OLD.ntitulaID;

/*Tablica s popisom znanstvenih titula*/
CREATE TABLE IF NOT EXISTS znanstvene_titule(
  ztitulaID TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  naziv_ztitule VARCHAR(25) NOT NULL,
  kratica_ztitule VARCHAR(15) NOT NULL,
  PRIMARY KEY (ztitulaID))
ENGINE = InnoDB;

/*jedinstvena znanstvena titula*/
CREATE UNIQUE INDEX naziv_ztitule_UNIQUE07 ON znanstvene_titule(naziv_ztitule); 

/*jedinstvena kratica znanstvene titule*/
CREATE UNIQUE INDEX kratica_ztitule_UNIQUE07 ON znanstvene_titule(kratica_ztitule); 

/*Unos znanstvenih titula u povijesnu bazu*/
CREATE TRIGGER znanstvene_titule_pov_ins
BEFORE INSERT ON aktivna.znanstvene_titule
FOR EACH ROW
INSERT INTO povijesna.znanstvene_titule VALUES (NEW.ztitulaID, NEW.naziv_ztitule, NEW.kratica_ztitule);

/*Ažuriranje podataka o znanstvenim titulama s povijesnom bazom*/
CREATE TRIGGER znanstvene_titule_pov_upd
BEFORE UPDATE ON aktivna.znanstvene_titule
FOR EACH ROW
UPDATE povijesna.znanstvene_titule
SET ztitulaID=NEW.ztitulaID, naziv_ztitule=NEW.naziv_ztitule, kratica_ztitule=NEW.kratica_ztitule
WHERE ztitulaID=OLD.ztitulaID;

/*Tablica s popisom profesora*/
CREATE TABLE IF NOT EXISTS profesor(
  profesorID INT UNSIGNED NOT NULL,
  ntitulaID TINYINT UNSIGNED NOT NULL,
  ztitulaID TINYINT UNSIGNED NOT NULL,
  ulicaID INT UNSIGNED, /*profesori ne moraju imati navedenu adresu*/
  broj VARCHAR(6), /*profesori ne moraju imati navedenu adresu*/
  telefon VARCHAR(15), /*profesori ne moraju imati naveden broj telefona*/
  mobitel VARCHAR(15), /*profesori ne moraju imati naveden broj mobitela*/
  email VARCHAR(35), /*profesori ne moraju imati navedenu e-mail adresu*/
  PRIMARY KEY (profesorID),
  CONSTRAINT profesorID08
    FOREIGN KEY (profesorID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanje korisnika povlaèi brisanje istog kao profesora*/
    ON UPDATE CASCADE, /*za ažuriranje isto vrijedi kaskadiranje*/
  CONSTRAINT ntitulaID08
    FOREIGN KEY (ntitulaID)
    REFERENCES nastavne_titule(ntitulaID)
    ON DELETE RESTRICT /*zabrani brisanje titule koja nekom pripada*/
    ON UPDATE CASCADE, /*ažuriraj titule*/
  CONSTRAINT ztitulaID08
    FOREIGN KEY (ztitulaID)
    REFERENCES znanstvene_titule(ztitulaID)
    ON DELETE RESTRICT /*zabrani brisanje titule koja nekom pripada*/
    ON UPDATE CASCADE, /*ažuriraj titule*/
  CONSTRAINT ulicaID08
    FOREIGN KEY (ulicaID)
    REFERENCES ulica(ulicaID) 
    ON DELETE RESTRICT /*zabrani brisanje ulice u kojoj neki profesor iz baze živi*/
    ON UPDATE CASCADE) /*ažuriraj ulice*/
ENGINE = InnoDB;

/*Strani kljuè - indeks od koristi*/
CREATE INDEX ntitulaID_fk08 ON profesor(ntitulaID);

/*Strani kljuè - indeks od koristi*/
CREATE INDEX ztitulaID_fk08 ON profesor(ztitulaID);

/*Strani kljuè - indeks od koristi*/
CREATE INDEX ulicaID_fk08 ON profesor(ulicaID);

/*Unos profesora u povijesnu bazu*/
CREATE TRIGGER profesor_pov_ins
BEFORE INSERT ON aktivna.profesor
FOR EACH ROW
INSERT INTO povijesna.profesor VALUES(NEW.profesorID, NEW.ntitulaID, NEW.ztitulaID, NEW.ulicaID, NEW.broj, NEW.telefon, NEW.mobitel, NEW.email);

/*Ažuriranje podataka o profesoru s povijesnom bazom*/
CREATE TRIGGER profesor_pov_upd
BEFORE UPDATE ON aktivna.profesor
FOR EACH ROW
UPDATE povijesna.profesor
SET profesorID=NEW.profesorID, ntitulaID=NEW.ntitulaID, ztitulaID=NEW.ztitulaID, 
ulicaID=NEW.ulicaID, broj=NEW.broj, telefon=NEW.telefon, mobitel=NEW.mobitel, email=NEW.email
WHERE profesorID=OLD.profesorID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW profesori AS
SELECT userID, username, ime, prezime, ntitulaID, ztitulaID, ulicaID, broj, telefon, mobitel, email
FROM profesor JOIN korisnik
ON profesorID=userID
WITH CHECK OPTION;

/*Prikaz profesora bez navoðenja adrese (tj. navodi sve profesore, i one koji nisu unijeli adresu koja nije obvezna)*/
CREATE OR REPLACE VIEW profesor_prikaz AS
SELECT userID, username, kratica_ntitule, kratica_ztitule, ime, prezime, ulicaID, broj, telefon, mobitel, email 
FROM profesori NATURAL JOIN znanstvene_titule NATURAL JOIN nastavne_titule
WITH CHECK OPTION;

/*Prikaz profesora s adresom, pojavljuju se samo oni profesori koji su naveli svoju adresu*/
CREATE OR REPLACE VIEW profesor_prikaz_s_ulicom AS
SELECT userID, username, kratica_ntitule, kratica_ztitule, ime, prezime, naziv_ulice, broj, postanski_broj, naziv_grada, ime_drzave, telefon, mobitel, email
FROM profesor_prikaz NATURAL JOIN ulica_prikaz
WITH CHECK OPTION;

/*Tablica s podacima o aktivnosti korisnika*/
CREATE TABLE IF NOT EXISTS aktivnost(
  userID INT UNSIGNED NOT NULL,
  aktivnost TEXT NOT NULL,
  PRIMARY KEY (userID),
  CONSTRAINT userID09
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem korisnika obriši njegovu aktivnost*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Unos aktivnosti korisnika u povijesnu bazu*/
CREATE TRIGGER aktivnost_pov_ins
BEFORE INSERT ON aktivna.aktivnost
FOR EACH ROW
INSERT INTO povijesna.aktivnost VALUES (NEW.userID, NEW.aktivnost);

/*Ažuriranje podataka o aktivnosti korisnika s povijesnom bazom*/
CREATE TRIGGER aktivnost_pov_upd
BEFORE UPDATE ON aktivna.aktivnost
FOR EACH ROW
UPDATE povijesna.aktivnost
SET userID=NEW.userID, aktivnost=NEW.aktivnost
WHERE userID=OLD.userID;

/*Prikaz aktivnosti korisnika (uz navedeno korisnièko ime, te ime i prezime)*/
CREATE OR REPLACE VIEW aktivnost_prikaz AS
SELECT userID, username, ime, prezime, aktivnost
FROM korisnik NATURAL JOIN aktivnost
WITH CHECK OPTION;

/*Tablica s podacima o interesu korisnika*/
CREATE TABLE IF NOT EXISTS interes(
  userID INT UNSIGNED NOT NULL,
  interes TEXT NOT NULL,
  PRIMARY KEY (userID),
  CONSTRAINT userID10
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem korisnika obriši i njegov interes*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Unos interesa korisnika u povijesnu bazu*/
CREATE TRIGGER interes_pov_ins
BEFORE INSERT ON aktivna.interes
FOR EACH ROW
INSERT INTO povijesna.interes VALUES(NEW.userID, NEW.interes);

/*Ažuriranje podataka o interesu korisnika s povijesnom bazom*/
CREATE TRIGGER interes_pov_upd
BEFORE UPDATE ON aktivna.interes
FOR EACH ROW
UPDATE povijesna.interes
SET userID=NEW.userID, interes=NEW.interes
WHERE userID=OLD.userID;

/*Prikaz interesa korisnika (uz navedeno korisnièko ime, te ime i prezime korisnika)*/
CREATE OR REPLACE VIEW interes_prikaz AS
SELECT userID, username, ime, prezime, interes
FROM korisnik NATURAL JOIN interes
WITH CHECK OPTION;

/*Tablica s podacima o glazbi koju korisnik sluša*/
CREATE TABLE IF NOT EXISTS glazba(
  userID INT UNSIGNED NOT NULL,
  glazba TEXT NOT NULL,
  PRIMARY KEY (userID),
  CONSTRAINT userID11
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem korisnika brišu se podaci o glazbi koju voli*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Unos glazbe koju korisnik sluša u povijesnu bazu*/
CREATE TRIGGER glazba_pov_ins
BEFORE INSERT ON aktivna.glazba
FOR EACH ROW
INSERT INTO povijesna.glazba VALUES (NEW.userID, NEW.glazba);

/*Ažuriranje podataka o glazbi koju korisnik sluša s povijesnom bazom*/
CREATE TRIGGER glazba_pov_upd
BEFORE UPDATE ON aktivna.glazba
FOR EACH ROW
UPDATE povijesna.glazba
SET userID=NEW.userID, glazba=NEW.glazba
WHERE userID=OLD.userID;

/*Prikaz glazbe koju korisnik sluša (uz navedeno korisnièko ime, te ime i prezime korisnika)*/
CREATE OR REPLACE VIEW glazba_prikaz AS
SELECT userID, username, ime, prezime, glazba
FROM korisnik NATURAL JOIN glazba
WITH CHECK OPTION;

/*Tablica s popisom TV emisija i serija koje korisnik voli*/
CREATE TABLE IF NOT EXISTS TV_emisije_i_serije(
  userID INT UNSIGNED NOT NULL,
  TV_emisije_i_serije TEXT NOT NULL,
  PRIMARY KEY (userID),
  CONSTRAINT userID12
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem podataka o korisniku brišu se i TV emisije i serije koje voli*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Unos TV emisija i serija koje korisnik voli u povijesnu bazu*/
CREATE TRIGGER TV_emisije_i_serije_pov_ins
BEFORE INSERT ON aktivna.TV_emisije_i_serije
FOR EACH ROW
INSERT INTO povijesna.TV_emisije_i_serije VALUES (NEW.userID, NEW.TV_emisije_i_serije);

/*Ažuriranje podataka o TV emisijama i serijama koje korisnik voli s povijesnom bazom*/
CREATE TRIGGER TV_emisije_i_serije_pov_upd
BEFORE UPDATE ON aktivna.TV_emisije_i_serije
FOR EACH ROW
UPDATE povijesna.TV_emisije_i_serije
SET userID=NEW.userID, TV_emisije_i_serije=NEW.TV_emisije_i_serije
WHERE userID=OLD.userID;

/*Prikaz TV emisija i serija koje korisnik voli (uz navedeno korisnièko ime, te ime i prezime korisnika)*/
CREATE OR REPLACE VIEW TV_emisije_i_serije_prikaz AS
SELECT userID, username, ime, prezime, TV_emisije_i_serije
FROM korisnik NATURAL JOIN TV_emisije_i_serije
WITH CHECK OPTION;

/*Tablica s podacima o filmovima koje korisnik voli*/
CREATE TABLE IF NOT EXISTS filmovi(
  userID INT UNSIGNED NOT NULL,
  filmovi TEXT NOT NULL,
  PRIMARY KEY (userID),
  CONSTRAINT userID13
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem korisnika obriši podatke o filmovima koje voli*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Unos filmova koje korisnik voli u povijesnu bazu*/
CREATE TRIGGER filmovi_pov_ins
BEFORE INSERT ON aktivna.filmovi
FOR EACH ROW
INSERT INTO povijesna.filmovi VALUES (NEW.userID, NEW.filmovi);

/*Ažuriranje podataka o filmovima koje korisnik voli s povijesnom bazom*/
CREATE TRIGGER filmovi_pov_upd
BEFORE UPDATE ON aktivna.filmovi
FOR EACH ROW
UPDATE povijesna.filmovi
SET userID=NEW.userID, filmovi=NEW.filmovi
WHERE userID=OLD.userID;

/*Prikaz filmova koje korisnik voli (uz navedeno korisnièko ime, te ime i prezime korisnika)*/
CREATE OR REPLACE VIEW filmovi_prikaz AS
SELECT userID, username, ime, prezime, filmovi
FROM korisnik NATURAL JOIN filmovi
WITH CHECK OPTION;

/*Tablica s podacima o knjigama koje korisnik voli*/
CREATE TABLE IF NOT EXISTS knjige(
  userID INT UNSIGNED NOT NULL,
  knjige TEXT NOT NULL,
  PRIMARY KEY (userID),
  CONSTRAINT userID14
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem korisnika, brišu se i knjige koje voli*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Unos knjiga koje korisnik voli u povijesnu bazu*/
CREATE TRIGGER knjige_pov_ins
BEFORE INSERT ON aktivna.knjige
FOR EACH ROW
INSERT INTO povijesna.knjige VALUES (NEW.userID, NEW.knjige);

/*Ažuriranje podataka o knjigama koje korisnik voli s povijesnom bazom*/
CREATE TRIGGER knjige_pov_upd
BEFORE UPDATE ON aktivna.knjige
FOR EACH ROW
UPDATE povijesna.knjige
SET userID=NEW.userID, knjige=NEW.knjige
WHERE userID=OLD.userID;

/*Prikaz knjiga koje korisnik voli (uz navedeno korisnièko ime, te ime i prezime korisnika)*/
CREATE OR REPLACE VIEW knjige_prikaz AS
SELECT userID, username, ime, prezime, knjige
FROM korisnik NATURAL JOIN knjige
WITH CHECK OPTION;

/*Tablica s podacima koje bi korisnik rekao o sebi*/
CREATE TABLE IF NOT EXISTS o_sebi(
  userID INT UNSIGNED NOT NULL,
  o_sebi TEXT NOT NULL,
  PRIMARY KEY (userID),
  CONSTRAINT userID15
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem korisnika, obriši ono što je napisao o sebi*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Unos podataka koje bi korisnik rekao o sebi u povijesnu bazu*/
CREATE TRIGGER o_sebi_pov_ins
BEFORE INSERT ON aktivna.o_sebi
FOR EACH ROW
INSERT INTO povijesna.o_sebi VALUES (NEW.userID, NEW.o_sebi);

/*Ažuriranje podataka koje bi korisnik rekao o sebi s povijesnom bazom*/
CREATE TRIGGER o_sebi_pov_upd
BEFORE UPDATE ON aktivna.o_sebi
FOR EACH ROW
UPDATE povijesna.o_sebi
SET userID=NEW.userID, o_sebi=NEW.o_sebi
WHERE userID=OLD.userID;

/*Prikaz podataka koje bi korisnik rekao o sebi (uz navedeno korisnièko ime, te ime i prezime korisnika)*/
CREATE OR REPLACE VIEW o_sebi_prikaz AS
SELECT userID, username, ime, prezime, o_sebi
FROM korisnik NATURAL JOIN o_sebi
WITH CHECK OPTION;

/*osobni podaci kao prikaz (navedena aktivnost, interes, glazba, TV emisije i serije, filmovi, knjige i ono što bi korisnik rekao o sebi)*/
CREATE OR REPLACE VIEW osobni_podaci AS
SELECT userID, username, ime, prezime, aktivnost, interes, glazba, TV_emisije_i_serije, filmovi, knjige, o_sebi
FROM korisnik NATURAL LEFT OUTER JOIN aktivnost
NATURAL LEFT OUTER JOIN interes
NATURAL LEFT OUTER JOIN glazba
NATURAL LEFT OUTER JOIN TV_emisije_i_serije
NATURAL LEFT OUTER JOIN filmovi
NATURAL LEFT OUTER JOIN knjige
NATURAL LEFT OUTER JOIN o_sebi;

/*Tablica s popisom tekstova poruka*/
CREATE TABLE IF NOT EXISTS tekst_poruke(
  tekstID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  tekst_poruke TEXT NOT NULL,
  PRIMARY KEY (tekstID))
ENGINE = InnoDB;

/*FULLTEXT indeks omoguæuje pretraživanje teksta poruka (u suprotnom bismo samo odreðenu duljinu poruke mogli indeksirati)*/
CREATE FULLTEXT INDEX tekstPoruke16 ON tekst_poruke(tekst_poruke);

/*Unos tekst poruke u povijesnu bazu*/
CREATE TRIGGER tekst_poruke_pov_ins
BEFORE INSERT ON aktivna.tekst_poruke
FOR EACH ROW
INSERT INTO povijesna.tekst_poruke VALUES (NEW.tekstID, NEW.tekst_poruke);

/*Ažuriranje teksta poruke s povijesnom bazom*/
CREATE TRIGGER tekst_poruke_pov_upd
BEFORE UPDATE ON aktivna.tekst_poruke
FOR EACH ROW
UPDATE povijesna.tekst_poruke
SET tekstID=NEW.tekstID, tekst_poruke=NEW.tekst_poruke
WHERE tekstID=OLD.tekstID;

/*Tablica s popisom poruka*/
CREATE TABLE IF NOT EXISTS poruke(
  posiljateljID INT UNSIGNED NOT NULL,
  primateljID INT UNSIGNED NOT NULL,
  vrijeme_slanja TIMESTAMP NOT NULL DEFAULT NOW(),
  tekstID INT UNSIGNED NOT NULL,
  PRIMARY KEY (posiljateljID, primateljID, vrijeme_slanja),
  CONSTRAINT posiljateljID17
	FOREIGN KEY (posiljateljID)
	REFERENCES korisnik(userID)
	ON DELETE CASCADE /*brisanjem pošiljatelja brišu se poruke koje je on slao*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
   CONSTRAINT primateljID17
	FOREIGN KEY (primateljID)
	REFERENCES korisnik(userID)
	ON DELETE CASCADE /*brisanjem primatelja brišu se sve poruke koje je on primio*/
    ON UPDATE CASCADE, /*ažuriraj na brisanje*/
  CONSTRAINT tekstID17
    FOREIGN KEY (tekstID)
    REFERENCES tekst_poruke(tekstID)
    ON DELETE RESTRICT /*ne dopusti brisanje teksta poruke koju je netko nekome poslao*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Strani kljuè - indeks je koristan*/
CREATE INDEX tekstID_fk17 ON poruke(tekstID);

/*Strani kljuè - indeks je koristan*/
CREATE INDEX primateljID_fk17 ON poruke(primateljID);

/*Unos poruka u povijesnu bazu*/
CREATE TRIGGER poruke_pov_ins
BEFORE INSERT ON aktivna.poruke
FOR EACH ROW
INSERT INTO povijesna.poruke VALUES (NEW.posiljateljID, NEW.primateljID, NEW.vrijeme_slanja, NEW.tekstID);

/*Ažuriranje podataka o porukama s povijesnom bazom*/
CREATE TRIGGER poruke_pov_upd
BEFORE UPDATE ON aktivna.poruke
FOR EACH ROW
UPDATE povijesna.poruke
SET posiljateljID=NEW.posiljateljID, primateljID=NEW.primateljID, vrijeme_slanja=NEW.vrijeme_slanja, tekstID=NEW.tekstID
WHERE posiljateljID=OLD.posiljateljID AND primateljID=OLD.primateljID AND vrijeme_slanja=OLD.vrijeme_slanja;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW poruke1 AS
SELECT userID AS 'posiljatelj_userID', username AS 'posiljatelj_username', ime AS 'posiljatelj_ime', prezime AS 'posiljatelj_prezime',
primateljID, vrijeme_slanja, tekstID
FROM korisnik JOIN poruke
ON userID=posiljateljID
WITH CHECK OPTION;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW poruke2 AS
SELECT posiljatelj_userID, posiljatelj_username, posiljatelj_ime, posiljatelj_prezime,
userID AS 'primatelj_userID', username AS 'primatelj_username', ime AS 'primatelj_ime', prezime AS 'primatelj_prezime',
vrijeme_slanja, tekstID
FROM korisnik JOIN poruke1
ON userID=primateljID
WITH CHECK OPTION;

/*Prikaz poruka uz navedene informacije o pošiljatelju i o primatelju, te uz naveden tekst poruke*/
CREATE OR REPLACE VIEW poruke_prikaz AS
SELECT posiljatelj_userID, posiljatelj_username, posiljatelj_ime, posiljatelj_prezime,
primatelj_userID, primatelj_username, primatelj_ime, primatelj_prezime,
vrijeme_slanja, tekst_poruke
FROM poruke2 NATURAL JOIN tekst_poruke
WITH CHECK OPTION;

/*Tablica s podacima o spomenarima korisnika*/
CREATE TABLE IF NOT EXISTS spomenar(
  IDzapisa INT UNSIGNED NOT NULL AUTO_INCREMENT,
  tko_pise INT UNSIGNED, /*ako se korisnik koji je napisao zapis nekome u spomenar obriše, atribut tko_pise æe imati vrijednost NULL*/
  kome_pise INT UNSIGNED NOT NULL,
  poruka TEXT NOT NULL,
  datum TIMESTAMP NOT NULL DEFAULT NOW(), /*toènije, datum i vrijeme objave, zadana vrijednost je trenutak kad korisnik piše*/
  PRIMARY KEY (IDzapisa),
  CONSTRAINT tko_pise18
    FOREIGN KEY (tko_pise)
    REFERENCES korisnik(userID)
    ON DELETE SET NULL /*brisanjem korisnika koji je zapisao zapis u neèiji spomenar, zapis ostaje*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT kome_pise18
    FOREIGN KEY (kome_pise)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem korisnika, brišu se i zapisi iz njegova spomenara*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Strani kljuè - indeks je koristan*/
CREATE INDEX tko_pise_fk18 ON spomenar(tko_pise);

/*Strani kljuè - indeks je koristan*/
CREATE INDEX kome_pise_fk18 ON spomenar(kome_pise);

/*jedinstvenost zapisa (da se ne ponavljaju zapisi, pretpostavimo da se svaki zapis razlikuje u prvih 200 znakova)*/
CREATE UNIQUE INDEX jedinstveni_zapis18 ON spomenar(tko_pise, kome_pise, poruka(200), datum); 

/*Unos zapisa u spomenaru u povijesnu bazu*/
CREATE TRIGGER spomenar_pov_ins
BEFORE INSERT ON aktivna.spomenar
FOR EACH ROW
INSERT INTO povijesna.spomenar VALUES (NEW.IDzapisa, NEW.tko_pise, NEW.kome_pise, NEW.poruka, NEW.datum);

/*Ažuriranje podataka o zapisima spomenara s povijesnom bazom*/
CREATE TRIGGER spomenar_pov_upd
BEFORE UPDATE ON aktivna.spomenar
FOR EACH ROW
UPDATE povijesna.spomenar
SET IDzapisa=NEW.IDzapisa, tko_pise=NEW.tko_pise, kome_pise=NEW.kome_pise, poruka=NEW.poruka, datum=NEW.datum
WHERE IDzapisa=OLD.IDzapisa;

/*Briše iz povijesne baze zapise u kojima je netko sam sebi napisao tekst u spomenar, a potom se u povijesnoj bazi pojavljuje okidaè
koji se aktivira na brisanje iz povijesne baze i koji briše zapise korisnika koji su sami sebi napisali tekst u spomenar iz aktivne baze;
MySQL ne dozvoljava akciju okidaèa na istu tablicu u kojoj je dogaðaj pokrenuo okidaè, pa su ulanèani okidaèi bili potrebni za ovakve sluèajeve. */
CREATE TRIGGER obrisi_spomenar_sa_samim_sobom
AFTER INSERT ON aktivna.spomenar
FOR EACH ROW
DELETE FROM povijesna.spomenar
WHERE tko_pise=kome_pise;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW spomenar1 AS
SELECT IDzapisa, userID AS 'od_koga_userID', username AS 'od_koga_username', ime AS 'od_koga_ime', prezime AS 'od_koga_prezime', 
kome_pise, poruka, datum
FROM korisnik JOIN spomenar
ON userID=tko_pise
WITH CHECK OPTION;

/*Prikaz zapisa u spomenaru, uz navedene informacije o korisnicima (tko je napisao i kome je napisano)*/
CREATE OR REPLACE VIEW spomenar_prikaz AS
SELECT IDzapisa, od_koga_userID, od_koga_username, od_koga_ime, od_koga_prezime,
userID AS 'kome_userID', username AS 'kome_username', ime AS 'kome_ime', prezime AS 'kome_prezime',
poruka, datum
FROM spomenar1 JOIN korisnik
ON userID=kome_pise
WITH CHECK OPTION;

/*Prikaz zapisa u spomenaru koji potjeèu od osoba koje su obrisane*/
CREATE OR REPLACE VIEW spomenar_obrisani AS
SELECT IDzapisa, tko_pise AS 'od_koga_userID',
userID AS 'kome_userID', username AS 'kome_username', ime AS 'kome_ime', prezime AS 'kome_prezime',
poruka, datum
FROM spomenar JOIN korisnik
ON userID=kome_pise
WHERE tko_pise IS NULL
WITH CHECK OPTION;

/*Tablica s popisom ustanova obrazovanja*/
CREATE TABLE IF NOT EXISTS ustanove_obrazovanja(
  ustanovaID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  naziv_ustanove VARCHAR(45) NOT NULL,
  ulicaID INT UNSIGNED NOT NULL,
  broj VARCHAR(6) NOT NULL,
  telefon VARCHAR(15) NOT NULL,
  fax VARCHAR(15) NOT NULL,
  PRIMARY KEY (ustanovaID),
  CONSTRAINT ulicaID19
    FOREIGN KEY (ulicaID)
    REFERENCES ulica(ulicaID)
    ON DELETE RESTRICT /*ne dopusti brisanje ulice u kojoj je neka ustanova*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - koristan je*/
CREATE INDEX ulicaID_fk19 ON ustanove_obrazovanja(ulicaID);

/*Jedinstvena kombinacija naziva ustanove, ulice i broja*/
CREATE UNIQUE INDEX naziv_ustanove19 ON ustanove_obrazovanja(naziv_ustanove, ulicaID, broj);

/*Svaka ustanova ima jedinstveni broj telefona*/
CREATE UNIQUE INDEX telefon19 ON ustanove_obrazovanja(telefon);

/*Svaka ustanova ima jedinstven fax*/
CREATE UNIQUE INDEX fax19 ON ustanove_obrazovanja(fax);

/*Unos ustanova obrazovanja u povijesnu bazu*/
CREATE TRIGGER ustanove_obrazovanja_pov_ins
BEFORE INSERT ON aktivna.ustanove_obrazovanja
FOR EACH ROW
INSERT INTO povijesna.ustanove_obrazovanja VALUES (NEW.ustanovaID, NEW.naziv_ustanove, NEW.ulicaID, NEW.broj, NEW.telefon, NEW.fax);

/*Ažuriranje podataka o ustanovama obrazovanja s povijesnom bazom*/
CREATE TRIGGER ustanove_obrazovanja_pov_upd
BEFORE UPDATE ON aktivna.ustanove_obrazovanja
FOR EACH ROW
UPDATE povijesna.ustanove_obrazovanja
SET ustanovaID=NEW.ustanovaID, naziv_ustanove=NEW.naziv_ustanove, ulicaID=NEW.ulicaID, broj=NEW.broj, telefon=NEW.telefon, fax=NEW.fax
WHERE ustanovaID=OLD.ustanovaID;

/*Prikaz ustanova obrazovanja s navedenom adresom*/
CREATE OR REPLACE VIEW ustanove_obrazovanja_prikaz AS
SELECT ustanovaID, naziv_ustanove, naziv_ulice, broj, postanski_broj, naziv_grada, ime_drzave, telefon, fax
FROM ustanove_obrazovanja NATURAL JOIN ulica_prikaz
WITH CHECK OPTION;

/*Tablica s podacima o obrazovanju u pojedinoj ustanovi*/
CREATE TABLE IF NOT EXISTS obrazovanje_u_ustanovi(
  ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ustanovaID INT UNSIGNED NOT NULL,
  vrsta_obrazovanja ENUM('osnovna škola', 'srednja škola', 'fakultet', 'teèaj') NOT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT ustanovaID20
    FOREIGN KEY (ustanovaID)
    REFERENCES ustanove_obrazovanja(ustanovaID)
    ON DELETE RESTRICT /*zabrani brisanje ustanove za koju postoji zapis o obrazovanju*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*jedinstven zapis ustanove i vrste obrazovanja*/
CREATE UNIQUE INDEX kunique20 ON obrazovanje_u_ustanovi(ustanovaID, vrsta_obrazovanja); 

/*Unos obrazovanja u ustanovi u povijesnu bazu*/
CREATE TRIGGER obrazovanje_u_ustanovi_pov_ins
BEFORE INSERT ON aktivna.obrazovanje_u_ustanovi
FOR EACH ROW
INSERT INTO povijesna.obrazovanje_u_ustanovi VALUES(NEW.ID, NEW.ustanovaID, NEW.vrsta_obrazovanja);

/*Ažuriranje podataka o obrazovanju u ustanovi s povijesnom bazom*/
CREATE TRIGGER obrazovanje_u_ustanovi_pov_upd
BEFORE UPDATE ON aktivna.obrazovanje_u_ustanovi
FOR EACH ROW
UPDATE povijesna.obrazovanje_u_ustanovi
SET ID=NEW.ID, ustanovaID=NEW.ustanovaID, vrsta_obrazovanja=NEW.vrsta_obrazovanja
WHERE ID=OLD.ID;

/*Prikaz obrazovanja u ustanovi, uz navedenu adresu ustanove*/
CREATE OR REPLACE VIEW obrazovanje_u_ustanovi_prikaz AS
SELECT ID, vrsta_obrazovanja, naziv_ustanove, naziv_ulice, broj, postanski_broj, naziv_grada, ime_drzave, telefon, fax
FROM obrazovanje_u_ustanovi NATURAL JOIN ustanove_obrazovanja_prikaz
WITH CHECK OPTION;

/*Tablica s podacima o generacijama obrazovanja u pojedinoj ustanovi*/
CREATE TABLE IF NOT EXISTS obrazovanje(
  IDobrazovanja INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ID INT UNSIGNED NOT NULL,
  godina_pocetka INT UNSIGNED NOT NULL,
  godina_zavrsetka INT UNSIGNED NOT NULL,
  PRIMARY KEY (IDobrazovanja),
  CONSTRAINT ID21
    FOREIGN KEY (ID)
    REFERENCES obrazovanje_u_ustanovi(ID)
    ON DELETE RESTRICT /*ne dopusti brisanje zapisa koji postoje o obrazovanju*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX ID_fk21 ON obrazovanje(ID);

/*jedinstvene generacije*/
CREATE UNIQUE INDEX generacije21 ON obrazovanje(ID, godina_pocetka, godina_zavrsetka); 

/*Unos obrazovanja u povijesnu bazu*/
CREATE TRIGGER obrazovanje_pov_ins
BEFORE INSERT ON aktivna.obrazovanje
FOR EACH ROW
INSERT INTO povijesna.obrazovanje VALUES (NEW.IDobrazovanja, NEW.ID, NEW.godina_pocetka, NEW.godina_zavrsetka);

/*Ažuriranje podataka o obrazovanju s povijesnom bazom*/
CREATE TRIGGER obrazovanje_pov_upd
BEFORE UPDATE ON aktivna.obrazovanje
FOR EACH ROW
UPDATE povijesna.obrazovanje
SET IDobrazovanja=NEW.IDobrazovanja, ID=NEW.ID, godina_pocetka=NEW.godina_pocetka, godina_zavrsetka=NEW.godina_zavrsetka
WHERE IDobrazovanja=OLD.IDobrazovanja;

/*Ponovno sluèaj ulanèanih okidaèa ovdje i u povijesnoj bazi, briše greške pri unosu jer teoretski netko može pokušati unijeti krivu generaciju,
koja je prije završila, nego poèela. MySQL samo sintaktièki dozvoljava CHECK uvjet, ali on ne bi provjeravao uvjet jer još nije podržano razumijevanje
ogranièenja sa CHECK uvjetom*/
CREATE TRIGGER obrisi_obrazovanje
AFTER INSERT ON aktivna.obrazovanje
FOR EACH ROW
DELETE FROM povijesna.obrazovanje
WHERE godina_pocetka > godina_zavrsetka;

/*Prikaz obrazovanja s nazivima ustanove i vrstom obrazovanja, te nazivom grada*/
CREATE OR REPLACE VIEW obrazovanje_prikaz AS
SELECT IDobrazovanja, ID, vrsta_obrazovanja, naziv_ustanove, naziv_grada, godina_pocetka, godina_zavrsetka
FROM obrazovanje NATURAL JOIN obrazovanje_u_ustanovi_prikaz
WITH CHECK OPTION;

/*Tablica s popisom podataka o obrazovanju pojedinog korisnika*/
CREATE TABLE IF NOT EXISTS obrazovanje_korisnika(
  userID INT UNSIGNED NOT NULL,
  IDobrazovanja INT UNSIGNED NOT NULL,
  PRIMARY KEY (userID, IDobrazovanja),
  CONSTRAINT userID22
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem korisnika briši podatke o njegovu obrazovanju*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT IDobrazovanja22
    FOREIGN KEY (IDobrazovanja)
    REFERENCES obrazovanje(IDobrazovanja)
    ON DELETE RESTRICT /*zabrani brisanje obrazovanja na koje se poziva korisnik*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX IDobrazovanja_fk22 ON obrazovanje_korisnika(IDobrazovanja);

/*Unos obrazovanja korisnika u povijesnu bazu*/
CREATE TRIGGER obrazovanje_korisnika_pov_ins
BEFORE INSERT ON aktivna.obrazovanje_korisnika
FOR EACH ROW
INSERT INTO povijesna.obrazovanje_korisnika VALUES (NEW.userID, NEW.IDobrazovanja);

/*Ažuriranje podataka o obrazovanju korisnika s povijesnom bazom*/
CREATE TRIGGER obrazovanje_korisnika_pov_upd
BEFORE UPDATE ON aktivna.obrazovanje_korisnika
FOR EACH ROW
UPDATE povijesna.obrazovanje_korisnika
SET userID=NEW.userID, IDobrazovanja=NEW.IDobrazovanja
WHERE userID=OLD.userID AND IDobrazovanja=OLD.IDobrazovanja;

/*Prikaz obrazovanja korisnika*/
CREATE OR REPLACE VIEW obrazovanje_korisnika_prikaz AS
SELECT userID, username, ime, prezime, ID, vrsta_obrazovanja, naziv_ustanove, naziv_grada,
godina_pocetka, godina_zavrsetka
FROM korisnik NATURAL JOIN obrazovanje_korisnika NATURAL JOIN obrazovanje_prikaz
WITH CHECK OPTION;

/*Tablica s popisom slika*/
CREATE TABLE IF NOT EXISTS slika(
  slikaID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  userID INT UNSIGNED NOT NULL,
  ime_slike VARCHAR(45) NOT NULL,
  url_slike VARCHAR(45) NOT NULL,
  PRIMARY KEY (slikaID),
  CONSTRAINT userID23
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*brisanjem korisnika obriši i njegove slike*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX userID_fk23 ON slika(userID);

/*Jedinstveni url slike*/
CREATE UNIQUE INDEX urlslike23 ON slika(url_slike);

/*Unos slika u povijesnu bazu*/
CREATE TRIGGER slika_pov_ins
BEFORE INSERT ON aktivna.slika
FOR EACH ROW
INSERT INTO povijesna.slika VALUES (NEW.slikaID, NEW.userID, NEW.ime_slike, NEW.url_slike);

/*Ažuriranje podataka o slikama s povijesnom bazom*/
CREATE TRIGGER slika_pov_upd
BEFORE UPDATE ON aktivna.slika
FOR EACH ROW
UPDATE povijesna.slika
SET slikaID=NEW.slikaID, userID=NEW.userID, ime_slike=NEW.ime_slike, url_slike=NEW.url_slike
WHERE slikaID=OLD.slikaID;

/*Prikaz slika, s navedenim korisnièkim imenom vlasnika, te njegovim imenom i prezimenom*/
CREATE OR REPLACE VIEW slika_prikaz AS
SELECT slikaID, userID, username, ime, prezime, ime_slike, url_slike
FROM korisnik NATURAL JOIN slika
WITH CHECK OPTION;

/*Tablica s podacima o pojedinoj slici*/
CREATE TABLE IF NOT EXISTS o_slici(
  slikaID INT UNSIGNED NOT NULL,
  o_slici TEXT NOT NULL,
  PRIMARY KEY (slikaID),
  CONSTRAINT slikaID24
    FOREIGN KEY (slikaID)
    REFERENCES slika(slikaID)
    ON DELETE CASCADE /*brisanjem slike, brišu se i podaci o slici*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Unos podataka o slici u povijesnu bazu*/
CREATE TRIGGER o_slici_pov_ins
BEFORE INSERT ON aktivna.o_slici
FOR EACH ROW
INSERT INTO povijesna.o_slici VALUES(NEW.slikaID,NEW.o_slici);

/*Ažuriranje podataka o slici s povijesnom bazom*/
CREATE TRIGGER o_slici_pov_upd
BEFORE UPDATE ON aktivna.o_slici
FOR EACH ROW
UPDATE povijesna.o_slici
SET slikaID=NEW.slikaID, o_slici=NEW.o_slici
WHERE slikaID=OLD.slikaID;

/*Prikaz informacija o slici*/
CREATE OR REPLACE VIEW o_slici_prikaz AS
SELECT slikaID, userID, username, ime, prezime, ime_slike, url_slike, o_slici
FROM o_slici NATURAL JOIN slika_prikaz
WITH CHECK OPTION;

/*Tablica s popisom fakulteta*/
CREATE TABLE IF NOT EXISTS fakultet(
  fakultetID INT UNSIGNED NOT NULL,
  web_stranica VARCHAR(45) NOT NULL,
  dekanID INT UNSIGNED NOT NULL,
  PRIMARY KEY (fakultetID),
  CONSTRAINT dekanID25
    FOREIGN KEY (dekanID)
    REFERENCES profesor(profesorID)
    ON DELETE RESTRICT /*zabrani brisanje profesora koji je dekan*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT fakultetID25
    FOREIGN KEY (fakultetID)
    REFERENCES ustanove_obrazovanja(ustanovaID)
    ON DELETE RESTRICT /*zabrani brisanje fakulteta koji postoji*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Jedinstvena web stranica fakulteta*/
CREATE UNIQUE INDEX web_stranica_UNIQUE25 ON fakultet(web_stranica);

/*Indeks na strani kljuè - korisno*/
CREATE INDEX dekanID_fk25 ON fakultet(dekanID);

/*Unos fakulteta u povijesnu bazu*/
CREATE TRIGGER fakultet_pov_ins
BEFORE INSERT ON aktivna.fakultet
FOR EACH ROW
INSERT INTO povijesna.fakultet VALUES (NEW.fakultetID, NEW.web_stranica, NEW.dekanID);

/*Ažuriranje podataka o fakultetu s povijesnom bazom*/
CREATE TRIGGER fakultet_pov_upd
BEFORE UPDATE ON aktivna.fakultet
FOR EACH ROW
UPDATE povijesna.fakultet
SET fakultetID=NEW.fakultetID, web_stranica=NEW.web_stranica, dekanID=NEW.dekanID
WHERE fakultetID=OLD.fakultetID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW fakultet1 AS
SELECT fakultetID, naziv_ustanove AS 'naziv_fakulteta', naziv_ulice, broj, postanski_broj,
naziv_grada, ime_drzave, telefon, fax, web_stranica, dekanID
FROM fakultet JOIN ustanove_obrazovanja_prikaz
ON fakultetID=ustanovaID
WITH CHECK OPTION;

/*Prikaz fakulteta*/
CREATE OR REPLACE VIEW fakultet_prikaz AS
SELECT fakultetID, naziv_fakulteta, fakultet1.naziv_ulice, fakultet1.broj, fakultet1.postanski_broj,
fakultet1.naziv_grada, fakultet1.ime_drzave, fakultet1.telefon, fax, web_stranica, dekanID, kratica_ntitule AS 'dekan_kratica_ntitule',
kratica_ztitule AS 'dekan_kratica_ztitule', ime AS 'dekan_ime',
prezime AS 'dekan_prezime'
FROM fakultet1 JOIN profesor_prikaz
ON dekanID=userID
WITH CHECK OPTION;

/*Tablica s dodatnim informacijama o ustanovama*/
CREATE TABLE IF NOT EXISTS dodatno(
  ustanovaID INT UNSIGNED NOT NULL,
  ulicaID INT UNSIGNED NOT NULL,
  broj VARCHAR(6) NOT NULL,
  telefon VARCHAR(15) NOT NULL,
  fax VARCHAR(15) NOT NULL,
  PRIMARY KEY(ustanovaID, ulicaID, broj),
  CONSTRAINT ustanovaID26
    FOREIGN KEY (ustanovaID)
    REFERENCES ustanove_obrazovanja(ustanovaID)
    ON DELETE RESTRICT /*zabrani brisanje ustanove koja je upisana u ovu tablicu*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT ulicaID26
	FOREIGN KEY (ulicaID)
	REFERENCES ulica(ulicaID)
	ON DELETE RESTRICT /*zabrani brisanje ulice u kojoj je neka ustanova*/
	ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Jedinstveni broj telefona ustanove*/
CREATE UNIQUE INDEX telefon_UNIQUE26 ON dodatno(telefon);

/*Jedinstveni broj faxa ustanove*/
CREATE UNIQUE INDEX fax_UNIQUE26 ON dodatno(fax);

/*Indeks na strani kljuè - korisno*/
CREATE INDEX ulicaID_fk26 ON dodatno(ulicaID);

/*Unos dodatnih informacija o ustanovi u povijesnu bazu*/
CREATE TRIGGER dodatno_pov_ins
BEFORE INSERT ON aktivna.dodatno
FOR EACH ROW
INSERT INTO povijesna.dodatno VALUES (NEW.ustanovaID, NEW.ulicaID, NEW.broj, NEW.telefon, NEW.fax);

/*Ažuriranje podataka o dodatnim informacijama o ustanovama s povijesnom bazom*/
CREATE TRIGGER dodatno_pov_upd
BEFORE UPDATE ON aktivna.dodatno
FOR EACH ROW
UPDATE povijesna.dodatno
SET ustanovaID=NEW.ustanovaID, ulicaID=NEW.ulicaID, broj=NEW.broj, telefon=NEW.telefon, fax=NEW.fax
WHERE ustanovaID=OLD.ustanovaID AND ulicaID=OLD.ulicaID AND broj=OLD.broj;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW dodatno1 AS
SELECT dodatno.ustanovaID, naziv_ustanove, dodatno.ulicaID, dodatno.broj, dodatno.telefon, dodatno.fax
FROM dodatno JOIN ustanove_obrazovanja ON
dodatno.ustanovaID=ustanove_obrazovanja.ustanovaID
WITH CHECK OPTION;

/*Prikaz dodatnih lokacija ustanova*/
CREATE OR REPLACE VIEW dodatno_prikaz AS
SELECT ustanovaID, naziv_ustanove, naziv_ulice, broj, postanski_broj, naziv_grada, ime_drzave, telefon, fax
FROM dodatno1 NATURAL JOIN ulica_prikaz
WITH CHECK OPTION;

/*Prikaz svih lokacija svih ustanova*/
CREATE OR REPLACE VIEW ustanove_i_adrese AS
SELECT * FROM aktivna.ustanove_obrazovanja_prikaz
UNION
SELECT * FROM aktivna.dodatno_prikaz
ORDER BY ustanovaID;

/*Tablica s popisom tipova studija*/
CREATE TABLE IF NOT EXISTS tip_studija(
  tipID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  naziv_tipa VARCHAR(25) NOT NULL,
  PRIMARY KEY (tipID))
ENGINE = InnoDB;

/*Jedinstveni naziv tipa studija*/
CREATE UNIQUE INDEX naziv_tipa_UNIQUE27 ON tip_studija(naziv_tipa);

/*Unos tipa studija u povijesnu bazu*/
CREATE TRIGGER tip_studija_pov_ins
BEFORE INSERT ON aktivna.tip_studija
FOR EACH ROW
INSERT INTO povijesna.tip_studija VALUES (NEW.tipID, NEW.naziv_tipa);

/*Ažuriranje tipa studija s povijesnom bazom*/
CREATE TRIGGER tip_studija_pov_upd
BEFORE UPDATE ON aktivna.tip_studija
FOR EACH ROW
UPDATE povijesna.tip_studija
SET tipID=NEW.tipID, naziv_tipa=NEW.naziv_tipa
WHERE tipID=OLD.tipID;

/*Tablica s popisom smjerova na fakultetima*/
CREATE TABLE IF NOT EXISTS smjerovi_na_fakultetima(
  smjerID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  naziv_smjera VARCHAR(45) NOT NULL,
  fakultetID INT UNSIGNED NOT NULL,
  tipID INT UNSIGNED NOT NULL,
  traje_semestara INT UNSIGNED NOT NULL,
  PRIMARY KEY (smjerID),
  CONSTRAINT fakultetID28
    FOREIGN KEY (fakultetID)
    REFERENCES fakultet(fakultetID)
    ON DELETE RESTRICT /*zabrani brisanje fakulteta na kojem su zabilježeni smjerovi*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT tipID28
    FOREIGN KEY (tipID)
    REFERENCES tip_studija(tipID)
    ON DELETE RESTRICT /*zabrani brisanje tipa studija koji je povezan sa smjerom*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na stranom kljuèu - korisno*/
CREATE INDEX fakultetID_fk28 ON smjerovi_na_fakultetima(fakultetID);

/*Indeks na stranom kljuèu - korisno*/
CREATE INDEX tipID_fk28 ON smjerovi_na_fakultetima(tipID);

/*Jedinstveni nazivi smjerova na pojedinom fakultetu*/
CREATE UNIQUE INDEX naziv_smjera28 ON smjerovi_na_fakultetima(naziv_smjera, fakultetID);

/*Indeks za upite o smjerovima ovisno o trajanju u semestrima - pretpostavljamo èesto pitanje o tome*/
CREATE INDEX traje_semestara28 ON smjerovi_na_fakultetima(traje_semestara);

/*Unos smjerova na fakultetima u povijesnu bazu*/
CREATE TRIGGER smjerovi_na_fakultetima_pov_ins
BEFORE INSERT ON aktivna.smjerovi_na_fakultetima
FOR EACH ROW
INSERT INTO povijesna.smjerovi_na_fakultetima VALUES (NEW.smjerID, NEW.naziv_smjera, NEW.fakultetID, NEW.tipID, NEW.traje_semestara);

/*Ažuriranje smjerova na fakultetima s povijesnom bazom*/
CREATE TRIGGER smjerovi_na_fakultetima_pov_upd
BEFORE UPDATE ON aktivna.smjerovi_na_fakultetima
FOR EACH ROW
UPDATE povijesna.smjerovi_na_fakultetima
SET smjerID=NEW.smjerID, naziv_smjera=NEW.naziv_smjera, fakultetID=NEW.fakultetID, tipID=NEW.tipID, traje_semestara=NEW.traje_semestara
WHERE smjerID=OLD.smjerID;

/*Prikaz smjerova na fakultetima*/
CREATE OR REPLACE VIEW smjerovi_na_fakultetima_prikaz AS
SELECT smjerID, naziv_smjera, fakultetID, naziv_fakulteta, 
naziv_grada, ime_drzave, naziv_tipa, traje_semestara
FROM fakultet_prikaz NATURAL JOIN smjerovi_na_fakultetima NATURAL JOIN tip_studija
WITH CHECK OPTION;

/*Tablica s popisom profesora na fakultetima*/
CREATE TABLE IF NOT EXISTS prof_na_fakultetima(
  fakultetID INT UNSIGNED NOT NULL,
  profesorID INT UNSIGNED NOT NULL,
  email VARCHAR(35), /*Ne mora se nužno navesti*/
  postotni_dio_radnog_vremena DECIMAL(3,2) UNSIGNED NOT NULL,
  PRIMARY KEY (fakultetID, profesorID),
  CONSTRAINT fakultetID29
    FOREIGN KEY (fakultetID)
    REFERENCES fakultet(fakultetID)
    ON DELETE CASCADE /*brisanjem fakulteta, briše se i popis profesora koji je na tom fakultetu radio*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT profesorID29
    FOREIGN KEY (profesorID)
    REFERENCES profesor(profesorID)
    ON DELETE CASCADE /*brisanjem profesora obriši podatke na kojim je fakultetima radio*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX profesorID_fk29 ON prof_na_fakultetima(profesorID);

/*Unos profesora koji rade na pojedinim fakultetima u povijesnu bazu*/
CREATE TRIGGER prof_na_fakultetima_pov_ins
BEFORE INSERT ON aktivna.prof_na_fakultetima
FOR EACH ROW
INSERT INTO povijesna.prof_na_fakultetima VALUES (NEW.fakultetID, NEW.profesorID, NEW.email, NEW.postotni_dio_radnog_vremena);

/*Ažuriranje podataka o profesorima na fakultetima s povijesnom bazom*/
CREATE TRIGGER prof_na_fakultetima_pov_upd
BEFORE UPDATE ON aktivna.prof_na_fakultetima
FOR EACH ROW
UPDATE povijesna.prof_na_fakultetima
SET fakultetID=NEW.fakultetID, profesorID=NEW.profesorID, email=NEW.email, postotni_dio_radnog_vremena=NEW.postotni_dio_radnog_vremena
WHERE fakultetID=OLD.fakultetID AND profesorID=OLD.profesorID;

/*Ulanèani okidaèi za brisanje onih profesora koji imaju greškom navedeno više od 100% radnog vremena*/
CREATE TRIGGER obrisi_krive_zapise_o_prof
AFTER INSERT ON aktivna.prof_na_fakultetima
FOR EACH ROW
DELETE FROM povijesna.prof_na_fakultetima
WHERE postotni_dio_radnog_vremena > 1;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW prof_na_fakultetima1 AS
SELECT fakultetID, naziv_fakulteta, naziv_ulice, broj, postanski_broj, naziv_grada, ime_drzave,
telefon, fax, web_stranica, profesorID, email, postotni_dio_radnog_vremena
FROM fakultet1 NATURAL JOIN prof_na_fakultetima
WITH CHECK OPTION;

/*Prikaz profesora na fakultetima*/
CREATE OR REPLACE VIEW prof_na_fakultetima_prikaz AS
SELECT fakultetID, naziv_fakulteta, prof_na_fakultetima1.naziv_ulice, prof_na_fakultetima1.broj, prof_na_fakultetima1.postanski_broj, 
prof_na_fakultetima1.naziv_grada, prof_na_fakultetima1.ime_drzave, prof_na_fakultetima1.telefon, fax, web_stranica, profesorID, 
kratica_ntitule, kratica_ztitule, ime, prezime, prof_na_fakultetima1.email, postotni_dio_radnog_vremena
FROM prof_na_fakultetima1 JOIN profesor_prikaz
ON profesorID=userID
WITH CHECK OPTION;

/*Tablica s popisom kabineta*/
CREATE TABLE kabineti(
kabinetID INT UNSIGNED NOT NULL AUTO_INCREMENT,
oznaka_kabineta VARCHAR(5) NOT NULL,
telefon VARCHAR(15) NOT NULL,
fax VARCHAR(15) NOT NULL,
fakultetID INT UNSIGNED NOT NULL,
PRIMARY KEY(kabinetID),
CONSTRAINT fakultetID57
    FOREIGN KEY (fakultetID)
    REFERENCES fakultet(fakultetID)
    ON DELETE CASCADE /*brisanjem fakulteta, brišu se kabineti*/
    ON UPDATE CASCADE /*ažuriraj na promjenu*/
)ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX fakultetID_fk57 ON kabineti(fakultetID);

/*Jedinstvena oznaka kabineta na pojedinom fakultetu*/
CREATE UNIQUE INDEX oznakafaks57 ON kabineti(oznaka_kabineta, fakultetID);

/*Jedinstveni broj telefona u svakom kabinetu*/
CREATE UNIQUE INDEX telefon57 ON kabineti(telefon);

/*Jedinstveni broj faxa u svakom kabinetu*/
CREATE UNIQUE INDEX fax57 ON kabineti(fax);

/*Unos kabineta u povijesnu bazu*/
CREATE TRIGGER kabineti_pov_ins
BEFORE INSERT ON aktivna.kabineti
FOR EACH ROW
INSERT INTO povijesna.kabineti VALUES (NEW.kabinetID, NEW.oznaka_kabineta, NEW.telefon, NEW.fax, NEW.fakultetID);

/*Ažuriranje podataka o kabinetima s povijesnom bazom*/
CREATE TRIGGER kabineti_pov_upd
BEFORE UPDATE ON aktivna.kabineti
FOR EACH ROW
UPDATE povijesna.kabineti
SET kabinetID=NEW.kabinetID, oznaka_kabineta=NEW.oznaka_kabineta, telefon=NEW.telefon, fax=NEW.fax, fakultetID=NEW.fakultetID
WHERE kabinetID=OLD.kabinetID;

/*Prikaz kabineta*/
CREATE OR REPLACE VIEW kabineti_prikaz AS
SELECT kabinetID, oznaka_kabineta, kabineti.telefon, kabineti.fax, kabineti.fakultetID, naziv_fakulteta, naziv_grada, ime_drzave
FROM kabineti JOIN fakultet_prikaz
ON kabineti.fakultetID=fakultet_prikaz.fakultetID
WITH CHECK OPTION;

/*Tablica s popisom kabineta profesora*/
CREATE TABLE IF NOT EXISTS kabineti_prof(
  kabinetID INT UNSIGNED NOT NULL,
  profesorID INT UNSIGNED NOT NULL,
  PRIMARY KEY (kabinetID, profesorID),
  CONSTRAINT profesorID30
    FOREIGN KEY (profesorID)
    REFERENCES profesor(profesorID)
    ON DELETE CASCADE /*brisanjem profesora obriši podatke o njegovim kabinetima*/
    ON UPDATE CASCADE,  /*ažuriraj na promjenu*/
  CONSTRAINT kabinetID30
    FOREIGN KEY (kabinetID)
    REFERENCES kabineti(kabinetID)
    ON DELETE CASCADE /*brisanjem kabineta, on ne pripada više profesoru*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX profesorID_fk30 ON kabineti_prof(profesorID);

/*Unos kabineta profesora u povijesnu bazu*/
CREATE TRIGGER kabineti_prof_pov_ins
BEFORE INSERT ON aktivna.kabineti_prof
FOR EACH ROW
INSERT INTO povijesna.kabineti_prof VALUES(NEW.kabinetID, NEW.profesorID);

/*Ažuriranje podataka o kabinetima profesora s povijesnom bazom*/
CREATE TRIGGER kabineti_prof_pov_upd
BEFORE UPDATE ON aktivna.kabineti_prof
FOR EACH ROW
UPDATE povijesna.kabineti_prof
SET kabinetID=NEW.kabinetID, profesorID=NEW.profesorID
WHERE kabinetID=OLD.kabinetID AND profesorID=OLD.profesorID;

/*Ulanèani okidaèi koji brišu moguænost da bi neki profesor imao kabinet na fakultetu na kojem ne radi*/
CREATE TRIGGER obrisi_krive_kab_prof
AFTER INSERT ON aktivna.kabineti_prof
FOR EACH ROW 
DELETE FROM povijesna.kabineti_prof
WHERE (kabinetID, profesorID) NOT IN (SELECT kabinetID, profesorID
FROM povijesna.kabineti NATURAL JOIN povijesna.prof_na_fakultetima);

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW kabineti_prof1 AS
SELECT kabinetID, oznaka_kabineta, telefon, fax, fakultetID, naziv_fakulteta, naziv_grada, ime_drzave, profesorID
FROM kabineti_prikaz NATURAL JOIN kabineti_prof
WITH CHECK OPTION;

/*Prikaz kabineta profesora*/
CREATE OR REPLACE VIEW kabineti_prof_prikaz AS
SELECT kabinetID, oznaka_kabineta, kabineti_prof1.telefon, fax, fakultetID, naziv_fakulteta, kabineti_prof1.naziv_grada, 
kabineti_prof1.ime_drzave, profesorID, kratica_ntitule, kratica_ztitule, ime, prezime
FROM kabineti_prof1 JOIN profesor_prikaz
ON profesorID=userID
WITH CHECK OPTION;

/*Tablica s popisom web stranica profesora na pojedinim fakultetima*/
CREATE TABLE IF NOT EXISTS web_stranice_prof(
  fakultetID INT UNSIGNED NOT NULL,
  profesorID INT UNSIGNED NOT NULL,
  web_stranica VARCHAR(45) NOT NULL,
  PRIMARY KEY (fakultetID, profesorID),
  CONSTRAINT fakultetprofesorID31
    FOREIGN KEY (fakultetID, profesorID)
    REFERENCES prof_na_fakultetima(fakultetID, profesorID)
    ON DELETE CASCADE /*brisanjem kaskadiraj*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Jedinstvena web stranica profesora na pojedinom fakultetu*/
CREATE UNIQUE INDEX webstrprof31 ON web_stranice_prof(web_stranica);

/*Unos web stranica profesora u povijesnu bazu*/
CREATE TRIGGER web_stranice_prof_pov_ins
BEFORE INSERT ON aktivna.web_stranice_prof
FOR EACH ROW
INSERT INTO povijesna.web_stranice_prof VALUES(NEW.fakultetID, NEW.profesorID, NEW.web_stranica);

/*Ažuriranje podataka o web stranicama profesora s povijesnom bazom*/
CREATE TRIGGER web_stranice_prof_pov_upd
BEFORE UPDATE ON aktivna.web_stranice_prof
FOR EACH ROW
UPDATE povijesna.web_stranice_prof
SET fakultetID=NEW.fakultetID, profesorID=NEW.profesorID, web_stranica=NEW.web_stranica
WHERE fakultetID=OLD.fakultetID AND profesorID=OLD.profesorID;

/*Prikaz web stranica profesora*/
CREATE OR REPLACE VIEW web_stranice_prof_prikaz AS
SELECT profesorID, kratica_ntitule, kratica_ztitule, ime, prezime, web_stranica
FROM web_stranice_prof JOIN profesor_prikaz
ON userID=profesorID
WITH CHECK OPTION;

/*Tablica s popisom termina konzultacija*/
CREATE TABLE IF NOT EXISTS termini_konzultacija(
  terminID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  danID ENUM('1', '2', '3', '4', '5') NOT NULL, /*konzultacije su samo pon-pet*/
  pocetak VARCHAR(6) NOT NULL,
  kraj VARCHAR(6) NOT NULL,
  PRIMARY KEY (terminID))
ENGINE = InnoDB;

/*jedinstveni termin*/
CREATE UNIQUE INDEX termin31 ON termini_konzultacija(danID, pocetak, kraj);

/*Unos termina konzultacija u povijesnu bazu*/
CREATE TRIGGER termini_konzultacija_pov_ins
BEFORE INSERT ON aktivna.termini_konzultacija
FOR EACH ROW
INSERT INTO povijesna.termini_konzultacija VALUES(NEW.terminID, NEW.danID, NEW.pocetak, NEW.kraj);

/*Ažuriranje podataka o terminima konzultacija s povijesnom bazom*/
CREATE TRIGGER termini_konzultacija_pov_upd
BEFORE UPDATE ON aktivna.termini_konzultacija
FOR EACH ROW
UPDATE povijesna.termini_konzultacija
SET terminID=NEW.terminID, danID=NEW.danID, pocetak=NEW.pocetak, kraj=NEW.kraj
WHERE terminID=OLD.terminID;

/*Ulanèano brisanje krivih termina konzultacija (koje završavaju prije poèetka, ili koje odmah završavaju èim poènu)*/
CREATE TRIGGER obrisi_termine_konzultacija
AFTER INSERT ON aktivna.termini_konzultacija
FOR EACH ROW 
DELETE FROM povijesna.termini_konzultacija
WHERE pocetak >= kraj;

/*Prikaz termina konzultacija koji umjesto danID stavlja ime dana*/
CREATE OR REPLACE VIEW termini_konzultacija_prikaz AS
SELECT terminID, CASE
WHEN danID=1 THEN 'ponedjeljak'
WHEN danID=2 THEN 'utorak'
WHEN danID=3 THEN 'srijeda'
WHEN danID=4 THEN 'èetvrtak'
WHEN danID=5 THEN 'petak'
END AS ime_dana, pocetak, kraj
FROM termini_konzultacija;

/*Tablica s popisom termina konzultacija pojedinih profesora*/
CREATE TABLE IF NOT EXISTS konzultacije_prof(
  fakultetID INT UNSIGNED NOT NULL,
  profesorID INT UNSIGNED NOT NULL,
  terminID INT UNSIGNED NOT NULL,
  datum_pocetka DATE NOT NULL,
  datum_zavrsetka DATE NOT NULL,
  PRIMARY KEY (fakultetID, profesorID, terminID),
  CONSTRAINT fakultetIDiprofID33
    FOREIGN KEY (fakultetID, profesorID)
    REFERENCES prof_na_fakultetima(fakultetID, profesorID)
    ON DELETE CASCADE /*brisanjem ažuriraj*/ 
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT terminID33
    FOREIGN KEY (terminID)
    REFERENCES termini_konzultacija(terminID)
    ON DELETE RESTRICT /*zabrani brisanje termina u kojem netko drži konzultacije*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX terminID_fk33 ON konzultacije_prof(terminID);

/*Unos konzultacija profesora u povijesnu bazu*/
CREATE TRIGGER konzultacije_prof_pov_ins
BEFORE INSERT ON aktivna.konzultacije_prof
FOR EACH ROW
INSERT INTO povijesna.konzultacije_prof VALUES(NEW.fakultetID, NEW.profesorID, NEW.terminID, NEW.datum_pocetka, NEW.datum_zavrsetka);

/*Ažuriranje konzultacija profesora s povijesnom bazom*/
CREATE TRIGGER konzultacije_prof_pov_upd
BEFORE UPDATE ON aktivna.konzultacije_prof
FOR EACH ROW
UPDATE povijesna.konzultacije_prof
SET fakultetID=NEW.fakultetID, profesorID=NEW.profesorID, terminID=NEW.terminID, datum_pocetka=NEW.datum_pocetka, datum_zavrsetka=NEW.datum_zavrsetka
WHERE fakultetID=OLD.fakultetID AND profesorID=OLD.profesorID AND terminID=OLD.terminID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW konzultacije_prof1 AS
SELECT fakultetID, profesorID, danID, pocetak, kraj, datum_pocetka, datum_zavrsetka
FROM konzultacije_prof NATURAL JOIN termini_konzultacija
WITH CHECK OPTION;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW konzultacije_prof2 AS
SELECT fakultetID, profesorID, kratica_ztitule, ime, prezime, kratica_ntitule, danID, pocetak, kraj, datum_pocetka, datum_zavrsetka
FROM konzultacije_prof1 JOIN profesor_prikaz
ON userID=profesorID
WITH CHECK OPTION;

/*Prikaz konzultacija profesora*/
CREATE OR REPLACE VIEW konzultacije_prof_prikaz AS
SELECT fakultetID, naziv_fakulteta, naziv_grada, ime_drzave, 
profesorID, kratica_ntitule, kratica_ztitule, ime, prezime,  
CASE
WHEN danID=1 THEN 'ponedjeljak'
WHEN danID=2 THEN 'utorak'
WHEN danID=3 THEN 'srijeda'
WHEN danID=4 THEN 'èetvrtak'
WHEN danID=5 THEN 'petak'
END AS ime_dana, pocetak, kraj, datum_pocetka, datum_zavrsetka
FROM konzultacije_prof2 NATURAL JOIN fakultet_prikaz
WITH CHECK OPTION;

/*Ulanèano brisanje krivih termina konzultacija profesora (kad završe prije nego poènu po pitanju datuma)*/
CREATE TRIGGER obrisi_krive_termine
AFTER INSERT ON aktivna.konzultacije_prof
FOR EACH ROW
DELETE FROM povijesna.konzultacije_prof
WHERE datum_pocetka > datum_zavrsetka;

/*Tablica s popisom znanstveno-istraživaèkih podruèja*/
CREATE TABLE IF NOT EXISTS znanstveno_istrazivacko_podrucje(
  zipID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ime_zip VARCHAR(45) NOT NULL,
  PRIMARY KEY (zipID))
ENGINE = InnoDB;

/*jedinstveno ime znanstveno-istraživaèkog podruèja*/
CREATE UNIQUE INDEX ime_zip_UNIQUE34 ON znanstveno_istrazivacko_podrucje(ime_zip);

/*Unos znanstveno-istraživaèkog podruèja u povijesnu bazu*/
CREATE TRIGGER znanstveno_istrazivacko_podrucje_pov_ins
BEFORE INSERT ON aktivna.znanstveno_istrazivacko_podrucje
FOR EACH ROW
INSERT INTO povijesna.znanstveno_istrazivacko_podrucje VALUES (NEW.zipID, NEW.ime_zip);

/*Ažuriranje znanstveno-istraživaèkog podruèja s povijesnom bazom*/
CREATE TRIGGER znanstveno_istrazivacko_podrucje_pov_upd
BEFORE UPDATE ON aktivna.znanstveno_istrazivacko_podrucje
FOR EACH ROW
UPDATE povijesna.znanstveno_istrazivacko_podrucje
SET zipID=NEW.zipID, ime_zip=NEW.ime_zip
WHERE zipID=OLD.zipID;

/*Tablica s popisom znanstveno-istraživaèkih podruèja kojima se profesori bave*/
CREATE TABLE IF NOT EXISTS zip_prof(
  profesorID INT UNSIGNED NOT NULL,
  zipID INT UNSIGNED NOT NULL,
  PRIMARY KEY (profesorID, zipID),
  CONSTRAINT profesorID35
    FOREIGN KEY (profesorID)
    REFERENCES profesor(profesorID)
    ON DELETE CASCADE /*brisanjem profesora obriši znanstveno-istraživaèka podruèja kojima se bavi s popisa u tablici*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT zipID35
    FOREIGN KEY (zipID)
    REFERENCES znanstveno_istrazivacko_podrucje(zipID)
    ON DELETE CASCADE /*brisanjem zip-a, obriši profesore koji se tim bave*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX zipID_fk35 ON zip_prof(zipID);

/*Unos zip-a kojima se profesori bave u povijesnu bazu*/
CREATE TRIGGER zip_prof_pov_ins
BEFORE INSERT ON aktivna.zip_prof
FOR EACH ROW
INSERT INTO povijesna.zip_prof VALUES(NEW.profesorID, NEW.zipID);

/*Ažuriranje zip-a kojima se profesori bave s povijesnom bazom*/
CREATE TRIGGER zip_prof_pov_upd
BEFORE UPDATE ON aktivna.zip_prof
FOR EACH ROW
UPDATE povijesna.zip_prof
SET profesorID=NEW.profesorID, zipID=NEW.zipID
WHERE profesorID=OLD.profesorID AND zipID=OLD.zipID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW zip_prof1  AS
SELECT profesorID, ime_zip
FROM zip_prof
NATURAL JOIN znanstveno_istrazivacko_podrucje
WITH CHECK OPTION;

/*Prikaz znanstveno-istraživaèkih podruèja kojima se profesori bave*/
CREATE OR REPLACE VIEW zip_prof_prikaz  AS
SELECT profesorID, kratica_ntitule, kratica_ztitule, ime, prezime, ime_zip
FROM profesor_prikaz
JOIN zip_prof1 ON profesorID=userID
WITH CHECK OPTION;

/*Tablica s popisom grupa profesora*/
CREATE TABLE IF NOT EXISTS grupa(
  IDgrupe INT UNSIGNED NOT NULL AUTO_INCREMENT,
  zipID INT UNSIGNED NOT NULL,
  naziv VARCHAR(20) NOT NULL,
  opis TINYTEXT NOT NULL,
  PRIMARY KEY (IDgrupe),
  CONSTRAINT zipID36
    FOREIGN KEY (zipID)
    REFERENCES znanstveno_istrazivacko_podrucje(zipID)
    ON DELETE CASCADE /*brisanjem zip-a obriši grupe vezane uz to*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX zipID_fk36 ON grupa(zipID);

/*Jedinstveni naziv grupe*/
CREATE UNIQUE INDEX naziv_UNIQUE36 ON grupa(naziv);

/*Unos grupe u povijesnu bazu*/
CREATE TRIGGER grupa_pov_ins
BEFORE INSERT ON aktivna.grupa
FOR EACH ROW
INSERT INTO povijesna.grupa VALUES(NEW.IDgrupe, NEW.zipID, NEW.naziv, NEW.opis);

/*Ažuriranje podataka o grupi s povijesnom bazom*/
CREATE TRIGGER grupa_pov_upd
BEFORE UPDATE ON aktivna.grupa
FOR EACH ROW
UPDATE povijesna.grupa
SET IDgrupe=NEW.IDgrupe, zipID=NEW.zipID, naziv=NEW.naziv, opis=NEW.opis
WHERE IDgrupe=OLD.IDgrupe;

/*Prikaz grupa*/
CREATE OR REPLACE VIEW grupa_prikaz AS
SELECT IDgrupe, ime_zip, naziv, opis
FROM grupa NATURAL JOIN znanstveno_istrazivacko_podrucje
WITH CHECK OPTION; 

/*Prikaz koji profesori mogu u koju grupu*/
CREATE OR REPLACE VIEW tko_moze_u_grupu_prof AS 
SELECT IDgrupe, zipID, profesorID
FROM grupa NATURAL JOIN zip_prof
WITH CHECK OPTION;

/*Tablica s popisom korisnika grupe profesora*/
CREATE TABLE IF NOT EXISTS korisnici_grupe(
  IDgrupe INT UNSIGNED NOT NULL,
  profesorID INT UNSIGNED NOT NULL,
  PRIMARY KEY (IDgrupe, profesorID),
  CONSTRAINT IDgrupe37
    FOREIGN KEY (IDgrupe)
    REFERENCES grupa(IDgrupe)
    ON DELETE CASCADE /*brisanjem grupe, izbriši profesore iz nje*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT profesorID37
    FOREIGN KEY (profesorID)
    REFERENCES profesor(profesorID)
    ON DELETE CASCADE /*brisanjem profesora, obriši ga iz svih grupa u kojima je bio*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX profesorID_fk37 ON korisnici_grupe(profesorID);

/*Upis korisnika grupe profesora u povijesnu bazu*/
CREATE TRIGGER korisnici_grupe_pov_ins
BEFORE INSERT ON aktivna.korisnici_grupe
FOR EACH ROW
INSERT INTO povijesna.korisnici_grupe VALUES(NEW.IDgrupe, NEW.profesorID);

/*Ažuriranje korisnika grupe profesora s povijesnom bazom*/
CREATE TRIGGER korisnici_grupe_pov_upd
BEFORE UPDATE ON aktivna.korisnici_grupe
FOR EACH ROW
UPDATE povijesna.korisnici_grupe
SET IDgrupe=NEW.IDgrupe, profesorID=NEW.profesorID
WHERE IDgrupe=OLD.IDgrupe AND profesorID=OLD.profesorID;

/*Ulanèano brisanje iz grupe profesora onih profesora koji se ne bave znanstveno-istraživaèkim podruèjem za koje je grupa namijenjena*/
CREATE TRIGGER obrisi_krive_korisnike
AFTER INSERT ON aktivna.korisnici_grupe
FOR EACH ROW
DELETE FROM povijesna.korisnici_grupe WHERE
(IDgrupe, profesorID) NOT IN (SELECT IDgrupe, profesorID
FROM povijesna.tko_moze_u_grupu_prof);

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW korisnici_grupe1 AS
SELECT IDgrupe, ime_zip, naziv, opis, profesorID
FROM korisnici_grupe NATURAL JOIN grupa_prikaz
WITH CHECK OPTION; 

/*Prikaz korisnika grupe*/
CREATE OR REPLACE VIEW korisnici_grupe_prikaz AS
SELECT IDgrupe, ime_zip, naziv, opis, profesorID, kratica_ntitule, kratica_ztitule, ime, prezime
FROM korisnici_grupe1
JOIN profesor_prikaz ON profesorID=userID
WITH CHECK OPTION;

/*Tablica s popisom svih postova*/
CREATE TABLE IF NOT EXISTS post_grupe(
  postID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  IDgrupe INT UNSIGNED NOT NULL,
  profesorID INT UNSIGNED NOT NULL,
  tekst TEXT NOT NULL,
  vrijeme_objave TIMESTAMP NOT NULL DEFAULT NOW(), /*Zadano vrijeme je trenutak kad korisnik piše*/
  PRIMARY KEY (postID),
  CONSTRAINT korisnici38
    FOREIGN KEY (IDgrupe, profesorID)
    REFERENCES korisnici_grupe(IDgrupe, profesorID)
    ON DELETE CASCADE /*brisanjem ažuriraj*/
    ON UPDATE CASCADE /*ažuriraj na promjenu*/
  )ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX korisnici_fk38 ON post_grupe(IDgrupe, profesorID);

/*Indeks koji dobro doðe za sortiranje u procedurama*/
CREATE INDEX vrijeme38 ON post_grupe(IDgrupe, vrijeme_objave);

/*Upis postova grupe u povijesnu bazu*/
CREATE TRIGGER post_grupe_pov_ins
BEFORE INSERT ON aktivna.post_grupe
FOR EACH ROW
INSERT INTO povijesna.post_grupe VALUES(NEW.postID, NEW.IDgrupe, NEW.profesorID, NEW.tekst, NEW.vrijeme_objave);

/*Ažuriranje postova grupe s povijesnom bazom*/
CREATE TRIGGER post_grupe_pov_upd
BEFORE UPDATE ON aktivna.post_grupe
FOR EACH ROW
UPDATE povijesna.post_grupe
SET postID=NEW.postID, IDgrupe=NEW.IDgrupe, profesorID=NEW.profesorID, tekst=NEW.tekst, vrijeme_objave=NEW.vrijeme_objave
WHERE postID=OLD.postID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW post_grupe1  AS
SELECT postID, naziv AS 'naziv_grupe', tekst, vrijeme_objave, profesorID
FROM post_grupe NATURAL JOIN grupa
WITH CHECK OPTION; 

/*Prikaz postova grupe*/
CREATE OR REPLACE VIEW  post_grupe_prikaz AS
SELECT postID, naziv_grupe, tekst, vrijeme_objave, profesorID,  kratica_ntitule, kratica_ztitule, ime, prezime
FROM post_grupe1
JOIN profesor_prikaz ON profesorID=userID
WITH CHECK OPTION;

/*Tablica s popisom komentara u grupama profesora*/
CREATE TABLE IF NOT EXISTS komentari(
  IDkomentara INT UNSIGNED NOT NULL AUTO_INCREMENT,
  postID INT UNSIGNED NOT NULL,
  profesorID INT UNSIGNED NOT NULL,
  tekst TINYTEXT NOT NULL,
  vrijeme_objave TIMESTAMP NOT NULL DEFAULT NOW(), /*Zadano vrijeme komentara je trenutak kad korisnik piše*/
  PRIMARY KEY (IDkomentara),
  CONSTRAINT postID39
    FOREIGN KEY (postID)
    REFERENCES post_grupe(postID)
    ON DELETE CASCADE /*brisanjem posta obriši sve komentare vezane uz njega*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT profesorID39
    FOREIGN KEY (profesorID)
    REFERENCES profesor(profesorID)
    ON DELETE CASCADE /*brisanjem profesora obriši sve njegove komentare*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX postID_fk39 ON komentari(postID);

/*Indeks na strani kljuè - korisno*/
CREATE INDEX profesorID_fk39 ON komentari(profesorID);

/*Indeks koji dobro doðe za sortiranje komentara u procedurama*/
CREATE INDEX vrijeme39 ON komentari(vrijeme_objave);

/*Upis komentara u povijesnu bazu*/
CREATE TRIGGER komentari_pov_ins
BEFORE INSERT ON aktivna.komentari
FOR EACH ROW
INSERT INTO povijesna.komentari VALUES(NEW.IDkomentara, NEW.postID, NEW.profesorID, NEW.tekst, NEW.vrijeme_objave);

/*Ažuriranje komentara s povijesnom bazom*/
CREATE TRIGGER komentari_pov_upd
BEFORE UPDATE ON aktivna.komentari
FOR EACH ROW
UPDATE povijesna.komentari
SET IDkomentara=NEW.IDkomentara, postID=NEW.postID, profesorID=NEW.profesorID, tekst=NEW.tekst, vrijeme_objave=NEW.vrijeme_objave
WHERE IDkomentara=OLD.IDkomentara;

/*Ulanèano briše komentare onih profesora koji ne bi trebali biti u grupi*/
CREATE TRIGGER obrisi_krive_komentare_prof
AFTER INSERT ON aktivna.komentari
FOR EACH ROW
DELETE FROM povijesna.komentari WHERE
(postID, profesorID) IN (SELECT postID, profesorID
FROM (SELECT komentari.postID, IDgrupe, komentari.profesorID
FROM povijesna.komentari JOIN povijesna.post_grupe ON
komentari.postID=post_grupe.postID) AS kometiralisu WHERE (IDgrupe, profesorID) NOT IN (SELECT IDgrupe, profesorID FROM povijesna.korisnici_grupe));

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW komentari1 AS
SELECT IDkomentara, komentari.postID, naziv_grupe, post_grupe_prikaz.tekst AS 'tekst_posta', post_grupe_prikaz.vrijeme_objave AS 'vrijeme_objave_posta',
post_grupe_prikaz.profesorID AS 'tko_objavljuje', post_grupe_prikaz.kratica_ztitule AS 'kratica_ztitule_objavitelja', ime AS 'ime_objavitelja',
prezime AS 'prezime_objavitelja', kratica_ntitule AS 'kratica_ntitule_objavitelja', komentari.profesorID AS 'profesorID', komentari.tekst AS
'tekst_komentara', komentari.vrijeme_objave AS 'vrijeme_objave_komentara'
FROM post_grupe_prikaz JOIN komentari ON post_grupe_prikaz.postID=komentari.postID
WITH CHECK OPTION;

/*Prikaz komentara*/
CREATE OR REPLACE VIEW komentari_prikaz AS
SELECT IDkomentara, postID, naziv_grupe, tekst_posta, vrijeme_objave_posta, tko_objavljuje, kratica_ntitule_objavitelja, kratica_ztitule_objavitelja, ime_objavitelja,
prezime_objavitelja, profesorID AS 'tko_komentira', kratica_ntitule AS 'kratica_ntitule_komentatora', kratica_ztitule AS 'kratica_ztitule_komentatora',
ime AS 'ime_komentatora', prezime AS 'prezime_komentatora',  tekst_komentara, vrijeme_objave_komentara
FROM komentari1
JOIN profesor_prikaz ON profesorID=userID
ORDER BY naziv_grupe ASC, postID ASC, vrijeme_objave_komentara ASC
WITH CHECK OPTION;

/*Tablica koja sadrži status studenta (redoviti, izvanredni, s plaæanjem)*/
CREATE TABLE IF NOT EXISTS status_studenta(
  statusID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  naziv_statusa VARCHAR(20) NOT NULL,
  PRIMARY KEY (statusID))
ENGINE = InnoDB;

/*jedinstveni naziv statusa*/
CREATE UNIQUE INDEX naziv_statusa_UNIQUE40 ON status_studenta(naziv_statusa);

/*Upis statusa studenta u povijesnu bazu*/
CREATE TRIGGER status_studenta_pov_ins
BEFORE INSERT ON aktivna.status_studenta
FOR EACH ROW
INSERT INTO povijesna.status_studenta VALUES(NEW.statusID, NEW.naziv_statusa);

/*Ažuriranje statusa studenta s povijesnom bazom*/
CREATE TRIGGER status_studenta_pov_upd
BEFORE UPDATE ON aktivna.status_studenta
FOR EACH ROW
UPDATE povijesna.status_studenta
SET statusID=NEW.statusID, naziv_statusa=NEW.naziv_statusa
WHERE statusID=OLD.statusID;

/*Tablica s popisom gdje koji student studira*/
CREATE TABLE IF NOT EXISTS studira_na(
  sID INT UNSIGNED NOT NULL,
  smjerID INT UNSIGNED NOT NULL,
  semestar INT UNSIGNED NOT NULL,
  broj_indeksa INT UNSIGNED NOT NULL,
  statusID INT UNSIGNED NOT NULL,
  PRIMARY KEY (sID, smjerID),
  CONSTRAINT sID41
    FOREIGN KEY (sID)
    REFERENCES student(sID)
    ON DELETE CASCADE /*brisanjem studenta obriši ga s popisa*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT smjerID41
    FOREIGN KEY (smjerID)
    REFERENCES smjerovi_na_fakultetima(smjerID)
    ON DELETE CASCADE /*brisanjem smjera obriši zapise o studentima koji na njemu studiraju*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT statusID41
    FOREIGN KEY (statusID)
    REFERENCES status_studenta(statusID)
    ON DELETE RESTRICT /*ne dopusti brisanje statusa koji postoji*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX statusID_fk41 ON studira_na(statusID);

/*svaki student nekog smjera ima jedinstveni broj indeksa*/
CREATE UNIQUE INDEX indeks_studenta41 ON studira_na(smjerID, broj_indeksa); 

/*Upis koji student gdje studira u povijesnu bazu*/
CREATE TRIGGER studira_na_pov_ins
BEFORE INSERT ON aktivna.studira_na
FOR EACH ROW
INSERT INTO povijesna.studira_na VALUES(NEW.sID, NEW.smjerID, NEW.semestar, NEW.broj_indeksa, NEW.statusID);

/*Ažuriranje koji student gdje studira s povijesnom bazom*/
CREATE TRIGGER studira_na_pov_upd
BEFORE UPDATE ON aktivna.studira_na
FOR EACH ROW
UPDATE povijesna.studira_na
SET sID=NEW.sID, smjerID=NEW.smjerID, semestar=NEW.semestar, broj_indeksa=NEW.broj_indeksa, statusID=NEW.statusID
WHERE sID=OLD.sID AND smjerID=OLD.smjerID;

/*Ulanèano brisanje onih zapisa u kojima su studenti upisali semestar veæi nego postoji na tom smjeru, ili <=0*/
CREATE TRIGGER obrisi_krivi_upis_studenta
AFTER INSERT ON aktivna.studira_na
FOR EACH ROW
DELETE FROM povijesna.studira_na
WHERE NEW.semestar>(SELECT traje_semestara FROM povijesna.smjerovi_na_fakultetima
WHERE smjerID=NEW.smjerID) OR NEW.semestar<=0;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW  studira_na1 AS
SELECT sID, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, 
naziv_grada, ime_drzave, naziv_tipa, semestar, broj_indeksa, naziv_statusa
FROM studira_na NATURAL JOIN status_studenta NATURAL JOIN smjerovi_na_fakultetima_prikaz
WITH CHECK OPTION;

/*Prikaz koji student studira na kojem fakultetu*/
CREATE OR REPLACE VIEW studira_na_prikaz AS
SELECT userID, username, ime, prezime, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, 
 studira_na1.naziv_grada, studira_na1.ime_drzave, naziv_tipa, semestar, broj_indeksa, naziv_statusa
FROM studira_na1 JOIN student_prikaz ON sID=userID
WITH CHECK OPTION;

/*Tablica s popisom kolegija*/
CREATE TABLE IF NOT EXISTS kolegij(
  kolegijID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  naziv_kolegija VARCHAR(40) NOT NULL,
  PRIMARY KEY (kolegijID))
ENGINE = InnoDB;

/*jedinstveni indeks na naziv kolegija*/
CREATE UNIQUE INDEX kolegijID_UNIQUE42 ON kolegij(naziv_kolegija);

/*Upis kolegija u povijesnu bazu*/
CREATE TRIGGER kolegij_pov_ins
BEFORE INSERT ON aktivna.kolegij
FOR EACH ROW
INSERT INTO povijesna.kolegij VALUES(NEW.kolegijID, NEW.naziv_kolegija);

/*Ažuriranje kolegija s povijesnom bazom*/
CREATE TRIGGER kolegij_pov_upd
BEFORE UPDATE ON aktivna.kolegij
FOR EACH ROW
UPDATE povijesna.kolegij
SET kolegijID=NEW.kolegijID, naziv_kolegija=NEW.naziv_kolegija
WHERE kolegijID=OLD.kolegijID;

/*Tablica s popisom predznanja za pojedini kolegij na pojedinom smjeru*/
CREATE TABLE IF NOT EXISTS predznanja(
  kolegijID INT UNSIGNED NOT NULL,
  smjerID INT UNSIGNED NOT NULL,
  potrebni_kolegiji INT UNSIGNED NOT NULL,
  PRIMARY KEY (kolegijID, smjerID, potrebni_kolegiji),
  CONSTRAINT kolegijID43
    FOREIGN KEY (kolegijID)
    REFERENCES kolegij(kolegijID)
    ON DELETE CASCADE /*brisanjem kolegija izbriši smjerove na kojima se izvodi i potrebna predznanja*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT smjerID43
    FOREIGN KEY (smjerID)
    REFERENCES smjerovi_na_fakultetima(smjerID)
    ON DELETE CASCADE /*brisanjem smjerova, izbriši kolegije koji se na njemu izvode i potrebna predznanja*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT potrebni_kolegiji43
    FOREIGN KEY (potrebni_kolegiji)
    REFERENCES kolegij(kolegijID)
    ON DELETE CASCADE /*brisanjem kolegija, automatski on više nije potreban za neki drugi kolegij*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX smjerID_fk43 ON predznanja(smjerID);

/*Indeks na strani kljuè - korisno*/
CREATE INDEX potrebni_kolegiji_fk43 ON predznanja(potrebni_kolegiji);

/*Upis predznanja u povijesnu bazu*/
CREATE TRIGGER predznanja_pov_ins
BEFORE INSERT ON aktivna.predznanja
FOR EACH ROW
INSERT INTO povijesna.predznanja VALUES(NEW.kolegijID, NEW.smjerID, NEW.potrebni_kolegiji);

/*Ažuriranje predznanja s povijesnom bazom*/
CREATE TRIGGER predznanja_pov_upd
BEFORE UPDATE ON aktivna.predznanja
FOR EACH ROW
UPDATE povijesna.predznanja
SET kolegijID=NEW.kolegijID, smjerID=NEW.smjerID, potrebni_kolegiji=NEW.potrebni_kolegiji
WHERE kolegijID=OLD.kolegijID AND smjerID=OLD.smjerID AND potrebni_kolegiji=OLD.potrebni_kolegiji;

/*Neki kolegij ne može sam sebi biti predznanje; ulanèano brisanje takvih sluèajeva*/
CREATE TRIGGER obrisi_kriva_predznanja
AFTER INSERT ON aktivna.predznanja
FOR EACH ROW
DELETE FROM povijesna.predznanja
WHERE kolegijID=potrebni_kolegiji;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW predznanja1 AS
SELECT naziv_kolegija, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, naziv_grada, ime_drzave, potrebni_kolegiji
FROM predznanja NATURAL JOIN kolegij NATURAL JOIN smjerovi_na_fakultetima_prikaz
WITH CHECK OPTION;

/*Prikaz predznanja*/
CREATE OR REPLACE VIEW predznanja_prikaz AS
SELECT predznanja1.naziv_kolegija, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, 
naziv_grada, ime_drzave, kolegij.naziv_kolegija AS 'naziv_potrebnih_kolegija'
FROM predznanja1
JOIN kolegij ON predznanja1.potrebni_kolegiji=kolegij.kolegijID
WITH CHECK OPTION;

/*Tablica s popisom kolegija koji se izvode na pojedinim smjerovima*/
CREATE TABLE IF NOT EXISTS izvodi_se(
  kolegijID INT UNSIGNED NOT NULL,
  smjerID INT UNSIGNED NOT NULL,
  web_stranica VARCHAR(45),
  semestar INT UNSIGNED NOT NULL,
  ECTS INT UNSIGNED NOT NULL,
  PRIMARY KEY (kolegijID, smjerID, semestar),
  CONSTRAINT kolegijID44
    FOREIGN KEY (kolegijID)
    REFERENCES kolegij(kolegijID)
    ON DELETE CASCADE /*brisanjem kolegija, on se automatski više na izvodi*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT smjerID44
    FOREIGN KEY (smjerID)
    REFERENCES smjerovi_na_fakultetima(smjerID)
    ON DELETE CASCADE /*brisanjem smjera, nijedan kolegij se više ne izvodi na tom smjeru*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX smjerID_fk44 ON izvodi_se(smjerID);

/*Upis izvoðenja kolegija na pojedinom smjeru u povijesnu bazu*/
CREATE TRIGGER izvodi_se_pov_ins
BEFORE INSERT ON aktivna.izvodi_se
FOR EACH ROW
INSERT INTO povijesna.izvodi_se VALUES(NEW.kolegijID, NEW.smjerID, NEW.web_stranica, NEW.semestar, NEW.ECTS);

/*Ažuriranje izvoðenja kolegija na pojedinom smjeru s povijesnom bazom*/
CREATE TRIGGER izvodi_se_pov_upd
BEFORE UPDATE ON aktivna.izvodi_se
FOR EACH ROW
UPDATE povijesna.izvodi_se
SET kolegijID=NEW.kolegijID, smjerID=NEW.smjerID, web_stranica=NEW.web_stranica, semestar=NEW.semestar, ECTS=NEW.ECTS
WHERE kolegijID=OLD.kolegijID AND smjerID=OLD.smjerID;

/*Prikaz izvoðenja kolegija na pojedinom smjeru*/
CREATE OR REPLACE VIEW izvodi_se_prikaz AS
SELECT naziv_kolegija, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, naziv_grada, ime_drzave, web_stranica,
semestar, ECTS
FROM izvodi_se NATURAL JOIN kolegij NATURAL JOIN smjerovi_na_fakultetima_prikaz
WITH CHECK OPTION;

/*prikaz koji kolegiji su na kojem fakultetu*/
CREATE OR REPLACE VIEW kolegijsmjerfakultet AS 
SELECT kolegijID, smjerID, fakultetID
FROM izvodi_se NATURAL JOIN smjerovi_na_fakultetima
WITH CHECK OPTION;

/*prikaz koji kolegij bi mogao koji profesor izvoditi*/
CREATE OR REPLACE VIEW kolegijsmjerprofesor AS 
SELECT kolegijID, smjerID, profesorID
FROM kolegijsmjerfakultet NATURAL JOIN prof_na_fakultetima
WITH CHECK OPTION;

/*Tablica s popisom tko na kojem smjeru izvodi koji kolegij*/
CREATE TABLE IF NOT EXISTS izvode(
  kolegijID INT UNSIGNED NOT NULL,
  smjerID INT UNSIGNED NOT NULL,
  profesorID INT UNSIGNED NOT NULL,
  PRIMARY KEY (kolegijID, smjerID, profesorID),
  CONSTRAINT kolegijnasmjeru45
    FOREIGN KEY (kolegijID, smjerID)
    REFERENCES izvodi_se(kolegijID, smjerID)
    ON DELETE CASCADE /*brisanjem ažuriraj*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT profesorID45
    FOREIGN KEY (profesorID)
    REFERENCES profesor(profesorID)
    ON DELETE CASCADE /*brisanjem profesora izbriši zapis o kolegijima koje je držao na bilo kojem smjeru*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX profesorID_fk45 ON izvode(profesorID);

/*Upis izvoðenja kolegija u povijesnu bazu*/
CREATE TRIGGER izvode_pov_ins
BEFORE INSERT ON aktivna.izvode
FOR EACH ROW
INSERT INTO povijesna.izvode VALUES(NEW.kolegijID, NEW.smjerID, NEW.profesorID);

/*Ažuriranje izvoðenja kolegija s povijesnom bazom*/
CREATE TRIGGER izvode_pov_upd
BEFORE UPDATE ON aktivna.izvode
FOR EACH ROW
UPDATE povijesna.izvode
SET kolegijID=NEW.kolegijID, smjerID=NEW.smjerID, profesorID=NEW.profesorID
WHERE kolegijID=OLD.kolegijID AND smjerID=OLD.smjerID AND profesorID=OLD.profesorID;

/*Obriši zapis o izvoðenju kolegija od onih profesora koji ne bi mogli izvoditi taj kolegij na tom smjeru (jer ne rade na fakultetu na kojem se taj smjer
izvodi) - ulanèano brisanje*/
CREATE TRIGGER obrisi_izvode
AFTER INSERT ON aktivna.izvode 
FOR EACH ROW
DELETE FROM povijesna.izvode
WHERE (kolegijID, smjerID, profesorID)
NOT IN (SELECT kolegijID, smjerID, profesorID
FROM povijesna.kolegijsmjerprofesor); 

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW izvode1 AS
SELECT naziv_kolegija, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, 
naziv_grada, ime_drzave, profesorID
FROM izvode NATURAL JOIN kolegij NATURAL JOIN smjerovi_na_fakultetima_prikaz
WITH CHECK OPTION;

/*Prikaz koji profesor na kojem smjeru izvodi koji kolegij*/
CREATE OR REPLACE VIEW izvode_prikaz AS
SELECT kratica_ntitule, kratica_ztitule, ime, prezime, naziv_kolegija, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, 
naziv_grada, ime_drzave
FROM izvode1
JOIN profesor_prikaz ON profesorID=userID
WITH CHECK OPTION;

/*Tablica s popisom upisanih kolegija pojedinog studenta na pojedinom smjeru*/
CREATE TABLE IF NOT EXISTS upisao(
  sID INT UNSIGNED NOT NULL,
  kolegijID INT UNSIGNED NOT NULL,
  smjerID INT UNSIGNED NOT NULL,
  PRIMARY KEY (sID, kolegijID, smjerID),
  CONSTRAINT sID46
    FOREIGN KEY (sID)
    REFERENCES student(sID)
    ON DELETE CASCADE /*brisanjem studenata, brišu se i predmeti koje je imao upisane*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT kolegijismjer46
    FOREIGN KEY (kolegijID, smjerID)
    REFERENCES izvodi_se(kolegijID, smjerID)
    ON DELETE CASCADE /*brisanjem ažuriraj*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX kolegijismjer_fk46 ON upisao(kolegijID, smjerID);

/*Unos upisanih kolegija u povijesnu bazu*/
CREATE TRIGGER upisao_pov_ins
BEFORE INSERT ON aktivna.upisao
FOR EACH ROW
INSERT INTO povijesna.upisao VALUES(NEW.sID, NEW.kolegijID, NEW.smjerID);

/*Ažuriranje upisanih kolegija s povijesnom bazom*/
CREATE TRIGGER upisao_pov_upd
BEFORE UPDATE ON aktivna.upisao
FOR EACH ROW
UPDATE povijesna.upisao
SET sID=NEW.sID, kolegijID=NEW.kolegijID, smjerID=NEW.smjerID
WHERE sID=OLD.sID AND kolegijID=OLD.kolegijID AND smjerID=OLD.smjerID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW upisao1 AS
SELECT sID, naziv_kolegija, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, 
naziv_grada, ime_drzave
FROM upisao NATURAL JOIN kolegij NATURAL JOIN smjerovi_na_fakultetima_prikaz
WITH CHECK OPTION;

/*Prikaz upisanih kolegija pojedinog studenta na pojedinom smjeru*/
CREATE OR REPLACE VIEW upisao_prikaz AS
SELECT sID, username, ime, prezime, naziv_kolegija, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, 
upisao1.naziv_grada, upisao1.ime_drzave
FROM upisao1
JOIN student_prikaz ON sID=userID
WITH CHECK OPTION;

/*Tablica s popisom grupa studenata*/
CREATE TABLE IF NOT EXISTS grupa_studenata(
  IDgrupe_studenata INT UNSIGNED NOT NULL AUTO_INCREMENT,
  smjerID INT UNSIGNED NOT NULL,
  semestar INT UNSIGNED, /*Ako nije naveden, grupa je za sve semestre pojedinog smjera*/
  naziv VARCHAR(20) NOT NULL,
  opis TINYTEXT NOT NULL,
  PRIMARY KEY (IDgrupe_studenata),
  CONSTRAINT smjerID47
    FOREIGN KEY (smjerID)
    REFERENCES smjerovi_na_fakultetima(smjerID)
    ON DELETE CASCADE /*brisanjem pojedinog smjera obriši grupe studenata vezane uz njega*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*jedinstveni naziv grupe studenata*/
CREATE UNIQUE INDEX naziv_UNIQUE47 ON grupa_studenata(naziv);

/*Indeks na strani kljuè - koristi*/
CREATE INDEX smjerID_fk47 ON grupa_studenata(smjerID);

/*Upis grupa studenata u povijesnu bazu*/
CREATE TRIGGER grupa_studenata_pov_ins
BEFORE INSERT ON aktivna.grupa_studenata
FOR EACH ROW
INSERT INTO povijesna.grupa_studenata VALUES(NEW.IDgrupe_studenata, NEW.smjerID, NEW.semestar, NEW.naziv, NEW.opis);

/*Ažuriranje grupa studenata s povijesnom bazom*/
CREATE TRIGGER grupa_studenata_pov_upd
BEFORE UPDATE ON aktivna.grupa_studenata
FOR EACH ROW
UPDATE povijesna.grupa_studenata
SET IDgrupe_studenata=NEW.IDgrupe_studenata, smjerID=NEW.smjerID, semestar=NEW.semestar, naziv=NEW.naziv, opis=NEW.opis
WHERE IDgrupe_studenata=OLD.IDgrupe_studenata;

/*Prikaz grupa studenata*/
CREATE OR REPLACE VIEW grupa_studenata_prikaz AS
SELECT IDgrupe_studenata, smjerID, naziv_smjera, fakultetID, naziv_fakulteta, naziv_grada, ime_drzave,
semestar, naziv, opis
FROM grupa_studenata NATURAL JOIN smjerovi_na_fakultetima_prikaz
WITH CHECK OPTION;

/*Tablica s popisom korisnika grupa studenata*/
CREATE TABLE IF NOT EXISTS korisnici_grupe_st(
  IDgrupe_studenata INT UNSIGNED NOT NULL,
  sID INT UNSIGNED NOT NULL,
  PRIMARY KEY (IDgrupe_studenata, sID),
  CONSTRAINT IDgrupe_studenata48
    FOREIGN KEY (IDgrupe_studenata)
    REFERENCES grupa_studenata(IDgrupe_studenata)
    ON DELETE CASCADE /*brisanjem grupe, obriši korisnike iz nje*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT sID48
    FOREIGN KEY (sID)
    REFERENCES student(sID)
    ON DELETE CASCADE /*brisanjem studenta, obriši ga iz grupe*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX sID_fk48 ON korisnici_grupe_st(sID);

/*Upis korisnika grupe studenata u povijesnu bazu*/
CREATE TRIGGER korisnici_grupe_st_pov_ins
BEFORE INSERT ON aktivna.korisnici_grupe_st
FOR EACH ROW
INSERT INTO povijesna.korisnici_grupe_st VALUES(NEW.IDgrupe_studenata, NEW.sID);

/*Ažuriranje korisnika grupe studenata s povijesnom bazom*/
CREATE TRIGGER korisnici_grupe_st_pov_upd
BEFORE UPDATE ON aktivna.korisnici_grupe_st
FOR EACH ROW
UPDATE povijesna.korisnici_grupe_st
SET IDgrupe_studenata=NEW.IDgrupe_studenata, sID=NEW.sID
WHERE IDgrupe_studenata=OLD.IDgrupe_studenata AND sID=OLD.sID;

/*Ulanèano brisanje korisnika koji ne bi trebali biti u nekoj grupi studenata jer nisu s tog smjera za koji je grupa odreðena, ili ne pripadaju tom semestru
tog smjera za koji je grupa odreðena*/
CREATE TRIGGER obrisi_krive_korisnike_st
AFTER INSERT ON aktivna.korisnici_grupe_st
FOR EACH ROW
DELETE FROM povijesna.korisnici_grupe_st
WHERE (IDgrupe_studenata, sID) NOT IN 
(SELECT IDgrupe_studenata, sID FROM (SELECT IDgrupe_studenata, smjerID, semestar, sID
FROM povijesna.grupa_studenata NATURAL JOIN povijesna.studira_na) AS tko_moze_u_grupu_studenata
UNION
SELECT IDgrupe_studenata, sID FROM (SELECT IDgrupe_studenata, grupa_studenata.smjerID, sID
FROM povijesna.grupa_studenata JOIN povijesna.studira_na
ON grupa_studenata.smjerID=studira_na.smjerID
WHERE grupa_studenata.semestar IS NULL) AS tko_moze_u_grupu_studenata2);

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW korisnici_grupe_st1 AS
SELECT IDgrupe_studenata, naziv_smjera, naziv_fakulteta, naziv_grada, ime_drzave,
semestar, naziv, opis, sID
FROM grupa_studenata_prikaz NATURAL JOIN korisnici_grupe_st
WITH CHECK OPTION; 

/*Prikaz korisnika grupe studenata*/
CREATE OR REPLACE VIEW korisnici_grupe_st_prikaz AS
SELECT IDgrupe_studenata, naziv_smjera, naziv_fakulteta, korisnici_grupe_st1.naziv_grada, korisnici_grupe_st1.ime_drzave,
semestar, naziv, opis, username, ime, prezime
FROM korisnici_grupe_st1
JOIN student_prikaz ON userID=sID
WITH CHECK OPTION;

/*Tablica s popisom postova studenata u studentskim grupama*/
CREATE TABLE IF NOT EXISTS post_grupe_st(
  poststID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  IDgrupe_studenata INT UNSIGNED NOT NULL,
  sID INT UNSIGNED NOT NULL,
  tekst TEXT NOT NULL,
  vrijeme_objave TIMESTAMP NOT NULL DEFAULT NOW(), /*Zadano vrijeme objave je vrijeme u kojem korisnik piše*/
  PRIMARY KEY (poststID),
  CONSTRAINT korisnicist49
    FOREIGN KEY (IDgrupe_studenata, sID)
    REFERENCES korisnici_grupe_st(IDgrupe_studenata, sID)
    ON DELETE CASCADE /*brisanjem ažuriraj*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX korisnicist_fk49 ON post_grupe_st(IDgrupe_studenata, sID);

/*Indeks ovdje dobro doðe za sortiranje redaka u procedurama*/
CREATE INDEX vrijeme49 ON post_grupe_st(IDgrupe_studenata, vrijeme_objave);

/*Unos postova grupa studenata u povijesnu bazu*/
CREATE TRIGGER post_grupe_st_pov_ins
BEFORE INSERT ON aktivna.post_grupe_st
FOR EACH ROW
INSERT INTO povijesna.post_grupe_st VALUES(NEW.poststID, NEW.IDgrupe_studenata, NEW.sID, NEW.tekst, NEW.vrijeme_objave);

/*Ažuriranje postova grupa studenata s povijesnom bazom*/
CREATE TRIGGER post_grupe_st_pov_upd
BEFORE UPDATE ON aktivna.post_grupe_st
FOR EACH ROW
UPDATE povijesna.post_grupe_st
SET poststID=NEW.poststID, IDgrupe_studenata=NEW.IDgrupe_studenata, sID=NEW.sID, tekst=NEW.tekst, vrijeme_objave=NEW.vrijeme_objave
WHERE poststID=OLD.poststID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW post_grupe_st1 AS
SELECT poststID, naziv AS 'naziv_grupe', tekst, vrijeme_objave, sID
FROM post_grupe_st NATURAL JOIN grupa_studenata
WITH CHECK OPTION; 

/*Prikaz postova grupa studenata*/
CREATE OR REPLACE VIEW post_grupe_st_prikaz AS
SELECT poststID, naziv_grupe, tekst, vrijeme_objave, username, ime, prezime
FROM post_grupe_st1 JOIN student_prikaz ON userID=sID
WITH CHECK OPTION;

/*Tablica s popisom komentara studenata u studentskim grupama*/
CREATE TABLE IF NOT EXISTS komentari_st(
  IDstkomentara INT UNSIGNED NOT NULL AUTO_INCREMENT,
  poststID INT UNSIGNED NOT NULL,
  sID INT UNSIGNED NOT NULL,
  tekst TINYTEXT NOT NULL,
  vrijeme_objave TIMESTAMP NOT NULL DEFAULT NOW(), /*Zadano vrijeme objave je vrijeme u kojem korisnik piše*/
  PRIMARY KEY (IDstkomentara),
  CONSTRAINT poststID50
    FOREIGN KEY (poststID)
    REFERENCES post_grupe_st(poststID)
    ON DELETE CASCADE /*ako se obriše post, obriši komentare na njega*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT sID50
    FOREIGN KEY (sID)
    REFERENCES student(sID)
    ON DELETE CASCADE /*ako se obriše student, obriši njegove komentare*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX poststID_fk50 ON komentari_st(poststID);

/*Indeks na strani kljuè - korisno*/
CREATE INDEX sID_fk50 ON komentari_st(sID);

/*Indeks na ovom atributu dobro doðe zbog kasnijeg sortiranja u procedurama*/
CREATE INDEX vrijeme50 ON komentari_st(vrijeme_objave);

/*Upis komentara grupa studenata u povijesnu bazu*/
CREATE TRIGGER komentari_st_pov_ins
BEFORE INSERT ON aktivna.komentari_st
FOR EACH ROW
INSERT INTO povijesna.komentari_st VALUES(NEW.IDstkomentara, NEW.poststID, NEW.sID, NEW.tekst, NEW.vrijeme_objave);

/*Ažuriranje komentara grupa studenata s povijesnom bazom*/
CREATE TRIGGER komentari_st_pov_upd
BEFORE UPDATE ON aktivna.komentari_st
FOR EACH ROW
UPDATE povijesna.komentari_st
SET IDstkomentara=NEW.IDstkomentara, poststID=NEW.poststID, sID=NEW.sID, tekst=NEW.tekst, vrijeme_objave=NEW.vrijeme_objave
WHERE IDstkomentara=OLD.IDstkomentara;

/*Obriši ulanèano komentare studenata koji nisu èlanovi grupe*/
CREATE TRIGGER obrisi_krive_komentare_st
AFTER INSERT ON aktivna.komentari_st
FOR EACH ROW
DELETE FROM povijesna.komentari_st
WHERE (poststID, sID) IN
(SELECT poststID, sID FROM (SELECT komentari_st.poststID, IDgrupe_studenata, komentari_st.sID
FROM povijesna.komentari_st JOIN povijesna.post_grupe_st
ON komentari_st.poststID=post_grupe_st.poststID) AS komentirali_su_st
WHERE (IDgrupe_studenata, sID) NOT IN (SELECT IDgrupe_studenata, sID FROM povijesna.korisnici_grupe_st));

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW komentari_st1 AS
SELECT IDstkomentara, post_grupe_st_prikaz.poststID, naziv_grupe, post_grupe_st_prikaz.tekst AS 'tekst_posta', post_grupe_st_prikaz.vrijeme_objave AS 'vrijeme_objave_posta', 
username AS 'tko_objavljuje', ime AS 'ime_objavitelja', prezime AS 'prezime_objavitelja', sID, komentari_st.tekst AS 'tekst_komentara',
komentari_st.vrijeme_objave AS 'vrijeme_objave_komentara'
FROM post_grupe_st_prikaz
JOIN komentari_st ON post_grupe_st_prikaz.poststID=komentari_st.poststID
WITH CHECK OPTION;

/*Prikaz komentara grupa studenata*/
CREATE OR REPLACE VIEW komentari_st_prikaz AS
SELECT IDstkomentara, poststID, naziv_grupe, tekst_posta, vrijeme_objave_posta, 
tko_objavljuje, ime_objavitelja, prezime_objavitelja, sID AS 'tko_komentira',
ime AS 'ime_komentatora', prezime AS 'prezime_komentatora', tekst_komentara,
vrijeme_objave_komentara
FROM komentari_st1
JOIN student_prikaz ON userID=sID
ORDER BY naziv_grupe ASC, poststID ASC, vrijeme_objave_komentara ASC
WITH CHECK OPTION;

/*Tablica koja sadrži podatke o dijeljenju informacija meðu korisnicima*/
CREATE TABLE IF NOT EXISTS dijeli_informacije(
  userID INT UNSIGNED NOT NULL,
  userID2 INT UNSIGNED NOT NULL,
  PRIMARY KEY (userID, userID2),
  CONSTRAINT userID51
    FOREIGN KEY (userID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*ako se obriše student, obriši njegovo dijeljenje informacija*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT userID251
    FOREIGN KEY (userID2)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*ako obrišeš studenta s kojim je neki student podijelio informacije, obriši zapis o tom dijeljenju*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX userID2_fk51 ON dijeli_informacije(userID2);

/*Upis dijeljenja informacija u povijesnu bazu*/
CREATE TRIGGER dijeli_informacije_pov_ins
BEFORE INSERT ON aktivna.dijeli_informacije
FOR EACH ROW
INSERT INTO povijesna.dijeli_informacije VALUES(NEW.userID, NEW.userID2);

/*Ažuriranje dijeljenja informacija s povijesnom bazom*/
CREATE TRIGGER dijeli_informacije_pov_upd
BEFORE UPDATE ON aktivna.dijeli_informacije
FOR EACH ROW
UPDATE povijesna.dijeli_informacije
SET userID=NEW.userID, userID2=NEW.userID2
WHERE userID=OLD.userID AND userID2=OLD.userID2;

/*Ulanèano brisanje onih zapisa u kojima korisnik sam sa sobom dijeli informacije*/
CREATE TRIGGER obrisi_dijeljenje_sa_samim_sobom
AFTER INSERT ON aktivna.dijeli_informacije
FOR EACH ROW
DELETE FROM povijesna.dijeli_informacije
WHERE userID=userID2;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW dijeli_informacije1 AS
SELECT username AS 'tko_dijeli', ime AS 'ime_djelitelja', prezime AS 'prezime_djelitelja', userID2 AS 'userID'
FROM dijeli_informacije NATURAL JOIN korisnik
WITH CHECK OPTION; 

/*Prikaz dijeljenja informacija*/
CREATE OR REPLACE VIEW dijeli_informacije_prikaz AS
SELECT tko_dijeli, ime_djelitelja, prezime_djelitelja, username AS 's_kim_dijeli',
ime AS 'ime_primatelja', prezime AS 'prezime_primatelja'
FROM dijeli_informacije1 NATURAL JOIN korisnik
WITH CHECK OPTION; 

/*Tablica s popisom jezika*/
CREATE TABLE IF NOT EXISTS jezici(
  jezikID TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  naziv_jezika VARCHAR(15) NOT NULL,
  PRIMARY KEY (jezikID))
ENGINE = InnoDB;

/*jedinstveni naziv jezika*/
CREATE UNIQUE INDEX naziv_jezika_UNIQUE52 ON jezici(naziv_jezika);

/*Upis jezika u povijesnu bazu*/
CREATE TRIGGER jezici_pov_ins
BEFORE INSERT ON aktivna.jezici
FOR EACH ROW
INSERT INTO povijesna.jezici VALUES(NEW.jezikID, NEW.naziv_jezika);

/*Ažuriranje jezika s povijesnom bazom*/
CREATE TRIGGER jezici_pov_upd
BEFORE UPDATE ON aktivna.jezici
FOR EACH ROW
UPDATE povijesna.jezici
SET jezikID=NEW.jezikID, naziv_jezika=NEW.naziv_jezika
WHERE jezikID=OLD.jezikID;

/*Tablica s popisom gostujuæih studenata*/
CREATE TABLE IF NOT EXISTS gostujuci_student(
  gID INT UNSIGNED NOT NULL,
  ustanovaID INT UNSIGNED NOT NULL,
  PRIMARY KEY (gID),
  CONSTRAINT gID53
    FOREIGN KEY (gID)
    REFERENCES korisnik(userID)
    ON DELETE CASCADE /*ako se obriše korisnik, ažuriraj*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT ustanovaID53
    FOREIGN KEY (ustanovaID)
    REFERENCES ustanove_obrazovanja(ustanovaID)
    ON DELETE RESTRICT /*zabrani brisanje ustanove za koju imamo zapis studenta koji dolazi*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX ustanovaID_fk53 ON gostujuci_student(ustanovaID);

/*Upis gostujuæeg studenta u povijesnu bazu*/
CREATE TRIGGER gostujuci_student_pov_ins
BEFORE INSERT ON aktivna.gostujuci_student
FOR EACH ROW
INSERT INTO povijesna.gostujuci_student VALUES(NEW.gID, NEW.ustanovaID);

/*Ažuriranje gostujuæeg studenta s povijesnom bazom*/
CREATE TRIGGER gostujuci_student_pov_upd
BEFORE UPDATE ON aktivna.gostujuci_student
FOR EACH ROW
UPDATE povijesna.gostujuci_student
SET gID=NEW.gID, ustanovaID=NEW.ustanovaID
WHERE gID=OLD.gID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW gostujuci_student1 AS
SELECT userID, username, ime, prezime, ustanovaID
FROM gostujuci_student
JOIN korisnik ON gID=userID
WITH CHECK OPTION;

/*Prikaz gostujuæeg studenta*/
CREATE OR REPLACE VIEW gostujuci_student_prikaz AS
SELECT userID, username, ime, prezime, naziv_ustanove, naziv_ulice, broj, postanski_broj,
naziv_grada, ime_drzave, telefon AS 'telefon_ustanove', fax AS 'fax_ustanove'
FROM gostujuci_student1 NATURAL JOIN ustanove_obrazovanja_prikaz
WITH CHECK OPTION; 

/*Tablica s popisom jezika koje gostujuæi student zna*/
CREATE TABLE IF NOT EXISTS gost_zna_jezike(
  gID INT UNSIGNED NOT NULL,
  jezikID TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (gID, jezikID),
  CONSTRAINT gID54
    FOREIGN KEY (gID)
    REFERENCES gostujuci_student(gID)
    ON DELETE CASCADE /*ako obrišeš korisnika, ažuriraj*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT jezikID54
    FOREIGN KEY (jezikID)
    REFERENCES jezici(jezikID)
    ON DELETE RESTRICT /*zabrani brisanje jezika kojeg netko zna*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX jezikID_fk54 ON gost_zna_jezike(jezikID);

/*Upis podataka o jezicima koje pojedini gostujuæi student zna u povijesnu bazu*/
CREATE TRIGGER gost_zna_jezike_pov_ins
BEFORE INSERT ON aktivna.gost_zna_jezike
FOR EACH ROW
INSERT INTO povijesna.gost_zna_jezike VALUES(NEW.gID, NEW.jezikID);

/*Ažuriranje podataka o jezicima koje pojedini gostujuæi student zna s povijesnom bazom*/
CREATE TRIGGER gost_zna_jezike_pov_upd
BEFORE UPDATE ON aktivna.gost_zna_jezike
FOR EACH ROW
UPDATE povijesna.gost_zna_jezike
SET gID=NEW.gID, jezikID=NEW.jezikID
WHERE gID=OLD.gID AND jezikID=OLD.jezikID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW gost_zna_jezike1 AS
SELECT gID, naziv_jezika
FROM gost_zna_jezike NATURAL JOIN jezici
WITH CHECK OPTION;

/*Prikaz koji gostujuæi student zna koje jezike*/
CREATE OR REPLACE VIEW gost_zna_jezike_prikaz AS
SELECT userID, username, ime, prezime, naziv_jezika
FROM gost_zna_jezike1
JOIN korisnik ON gID=userID
WITH CHECK OPTION;

/*Tablica s popisom znanstveno-istraživaèkih podruèja koja gosta zanimaju*/
CREATE TABLE IF NOT EXISTS gosta_zanima(
  gID INT UNSIGNED NOT NULL,
  zipID INT UNSIGNED NOT NULL,
  PRIMARY KEY (gID, zipID),
  CONSTRAINT gID55
    FOREIGN KEY (gID)
    REFERENCES gostujuci_student(gID)
    ON DELETE CASCADE /*brisanjem gostujuæeg studenta ažuriraj*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT zipID55
    FOREIGN KEY (zipID)
    REFERENCES znanstveno_istrazivacko_podrucje(zipID)
    ON DELETE CASCADE /*brisanjem znanstveno-istraživaèkog podruèja, obrišu se podaci o tim zip-ima koje gosta zanimaju*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX zipID_fk55 ON gosta_zanima(zipID);

/*Upis znanstveno-istraživaèkih podruèja koja gosta zanimaju u povijesnu bazu*/
CREATE TRIGGER gosta_zanima_pov_ins
BEFORE INSERT ON aktivna.gosta_zanima
FOR EACH ROW
INSERT INTO povijesna.gosta_zanima VALUES(NEW.gID, NEW.zipID);

/*Ažuriranje znanstveno-istraživaèkih podruèja koja gosta zanimaju s povijesnom bazom*/
CREATE TRIGGER gosta_zanima_pov_upd
BEFORE UPDATE ON aktivna.gosta_zanima
FOR EACH ROW
UPDATE povijesna.gosta_zanima
SET gID=NEW.gID, zipID=NEW.zipID
WHERE gID=OLD.gID AND zipID=OLD.zipID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW gosta_zanima1 AS
SELECT gID, ime_zip
FROM gosta_zanima NATURAL JOIN znanstveno_istrazivacko_podrucje
WITH CHECK OPTION; 

/*Prikaz znanstveno-istraživaèkih podruèja koja gosta zanimaju*/
CREATE OR REPLACE VIEW gosta_zanima_prikaz AS
SELECT userID, username, ime, prezime, ime_zip
FROM gosta_zanima1
JOIN korisnik ON gID=userID
WITH CHECK OPTION;

/*Tablica s popisom kolegija koje pojedini gostujuæi student sluša na odreðenom smjeru*/
CREATE TABLE IF NOT EXISTS gost_slusa(
  gID INT UNSIGNED NOT NULL,
  kolegijID INT UNSIGNED NOT NULL,
  smjerID INT UNSIGNED NOT NULL,
  PRIMARY KEY (gID, kolegijID, smjerID),
  CONSTRAINT gID56
    FOREIGN KEY (gID)
    REFERENCES gostujuci_student(gID)
    ON DELETE CASCADE /*ako obrišeš studenta, ažuriraj*/
    ON UPDATE CASCADE, /*ažuriraj na promjenu*/
  CONSTRAINT kolegijismjer56
    FOREIGN KEY (kolegijID, smjerID)
    REFERENCES izvodi_se(kolegijID, smjerID)
    ON DELETE CASCADE /*ako obrišeš, ažuriraj*/
    ON UPDATE CASCADE) /*ažuriraj na promjenu*/
ENGINE = InnoDB;

/*Indeks na strani kljuè - korisno*/
CREATE INDEX kolegijismjer_fk56 ON gost_slusa(kolegijID, smjerID);

/*Upis kolegija koje gostujuæi student sluša na nekom smjeru u povijesnu bazu*/
CREATE TRIGGER gost_slusa_pov_ins
BEFORE INSERT ON aktivna.gost_slusa
FOR EACH ROW
INSERT INTO povijesna.gost_slusa VALUES(NEW.gID, NEW.kolegijID, NEW.smjerID);

/*Ažuriranje podataka o kolegijima koje gostujuæi student sluša na nekom smjeru s povijesnom bazom*/
CREATE TRIGGER gost_slusa_pov_upd
BEFORE UPDATE ON aktivna.gost_slusa
FOR EACH ROW
UPDATE povijesna.gost_slusa 
SET gID=NEW.gID, kolegijID=NEW.kolegijID, smjerID=NEW.smjerID
WHERE gID=OLD.gID AND kolegijID=OLD.kolegijID AND smjerID=OLD.smjerID;

/*pomoæni prikaz*/
CREATE OR REPLACE VIEW gost_slusa1 AS
SELECT userID, username, ime, prezime, kolegijID, smjerID
FROM gost_slusa
JOIN korisnik ON gID=userID
WITH CHECK OPTION;

/*Prikaz koje kolegije na kojem smjeru koji gostujuæi student sluša*/
CREATE OR REPLACE VIEW gost_slusa_prikaz AS
SELECT userID, username, ime, prezime, naziv_kolegija, naziv_smjera, naziv_fakulteta,
naziv_grada, ime_drzave
FROM gost_slusa1 NATURAL JOIN kolegij NATURAL JOIN smjerovi_na_fakultetima_prikaz
WITH CHECK OPTION;

/*Procedura u kojoj IN parametar mojID oznaèava userID korisnika za kojeg želimo prikazati osobne podatke o osobama koje su ih s njim podijelile,
te njegove vlastite osobne podatke, a sve to poredano po korisnièkom broju*/
CREATE PROCEDURE koga_vidim (IN mojID INT UNSIGNED)
SELECT *
FROM osobni_podaci
WHERE userID=mojID
UNION 
SELECT osobni_podaci.*
FROM osobni_podaci JOIN dijeli_informacije ON osobni_podaci.userID = dijeli_informacije.userID
WHERE dijeli_informacije.userID2 = mojID
ORDER BY userID;

/*Procedura u kojoj IN parametar mojID oznaèava userID korisnika za kojeg želimo vidjeti poruke koje je slao drugima,
poredano po vremenu slanja*/
CREATE PROCEDURE koje_poslane_poruke_vidim (IN mojID INT UNSIGNED)
SELECT *
FROM poruke_prikaz
WHERE posiljatelj_userID=mojID
ORDER BY vrijeme_slanja;

/*Procedura u kojoj IN parametar mojID oznaèava userID korisnika kojem gledamo primljenu poštu (inbox),
poredano po vremenu slanja*/
CREATE PROCEDURE koje_primljene_poruke_vidim (IN mojID INT UNSIGNED)
SELECT *
FROM poruke_prikaz
WHERE primatelj_userID=mojID
ORDER BY vrijeme_slanja;

/*Procedura koja pokazuje zapise u spomenarima osoba koje su sa mnom podijelile informacije (IN parametar mojID - userID korisnika za kojeg tražimo
koje zapise u spomenarima može vidjeti), te u mom spomenaru, poredano najprije po korisnièkom broju osobe èiji zapis mogu vidjeti, a potom po datumu 
(odnosno vremenu objave)*/
CREATE PROCEDURE kome_vidim_spomenar (IN mojID INT UNSIGNED)
SELECT spomenar_prikaz.* /*spomenari osoba koje su sa mnom podijelile informacije*/
FROM spomenar_prikaz JOIN dijeli_informacije ON spomenar_prikaz.kome_userID=dijeli_informacije.userID
WHERE userID2=mojID
UNION 
SELECT spomenar_prikaz.* /*moj spomenar*/
FROM spomenar_prikaz WHERE kome_userID=mojID
UNION /*spomenari osoba koje su sa mnom podijelile informacije i moj spomenar, zapisi od obrisanih korisnika*/
SELECT IDzapisa, od_koga_userID, 'obrisan' AS od_koga_username, 'obrisan' AS od_koga_ime, 'obrisan' AS od_koga_prezime, 
kome_userID, kome_username, kome_ime, kome_prezime, poruka, datum FROM spomenar_obrisani 
JOIN dijeli_informacije ON spomenar_obrisani.kome_userID=dijeli_informacije.userID
WHERE userID2=mojID OR userID=mojID
ORDER BY kome_userID, datum;


/*Procedura u kojoj IN parametar mojID oznaèava userID korisnika za kojeg gledamo koje sve postove može vidjeti u grupama,
poredano po broju grupe, a potom po vremenu objave. Pri tome vrijedi èinjenica da korisnik može vidjeti postove samo onih grupa
u koje se uèlanio. Profesorima pišu titule, a za studente je navedeno da ih nemaju, te uz svaku grupu piše je li grupa studenata
ili grupa profesora. Specifiènost studentskih grupa je naziv smjera, a specifiènost grupa profesora znanstveno-istraživaèko podruèje
kojem je grupa posveæena.*/
CREATE PROCEDURE koje_postove_vidim_u_grupama (IN mojID INT UNSIGNED)
SELECT postID, IDgrupe, 'grupa profesora' AS koja_grupa, ime_zip AS 'specifiènost grupe', naziv,
profesorID AS 'userID', username, kratica_ntitule, kratica_ztitule, ime, prezime, 
tekst, vrijeme_objave
FROM post_grupe NATURAL JOIN grupa_prikaz JOIN profesor_prikaz ON profesor_prikaz.userID=post_grupe.profesorID
WHERE (mojID, IDgrupe) IN (SELECT profesorID, IDgrupe FROM korisnici_grupe)
UNION  
SELECT poststID AS 'postID', IDgrupe_studenata AS 'IDgrupe', 'grupa studenata' AS koja_grupa,
naziv_smjera AS 'specifiènost grupe', naziv, sID AS 'userID', username, 'nema' AS kratica_ntitule, 'nema' AS kratica_ztitule, ime, prezime,
tekst, vrijeme_objave
FROM post_grupe_st NATURAL JOIN grupa_studenata_prikaz JOIN student_prikaz ON post_grupe_st.sID=student_prikaz.userID
WHERE (mojID, IDgrupe_studenata) IN (SELECT sID, IDgrupe_studenata FROM korisnici_grupe_st)
ORDER BY IDgrupe, vrijeme_objave;

/*Procedura slièna prethodno navedenoj proceduri, jedina je razlika to što imamo IN parametar mojagrupa, kojim je zadan IDgrupe ili
IDgrupe_studenata, pa se samo iz te grupe gledaju postovi. Takoðer poredano po broju grupe, a potom po vremenu objave u pojedinoj grupi.*/
CREATE PROCEDURE koje_postove_vidim_u_kojoj_grupi (IN vidim INT UNSIGNED,IN mojagrupa INT UNSIGNED)
SELECT postID, IDgrupe, 'grupa profesora' AS koja_grupa, ime_zip AS 'specifiènost grupe', naziv,
profesorID AS 'userID', username, kratica_ntitule, kratica_ztitule, ime, prezime,  
tekst, vrijeme_objave
FROM post_grupe NATURAL JOIN grupa_prikaz JOIN profesor_prikaz ON profesor_prikaz.userID=post_grupe.profesorID
WHERE (vidim, IDgrupe) IN (SELECT profesorID, IDgrupe FROM korisnici_grupe WHERE IDgrupe=mojagrupa)
UNION  
SELECT poststID AS 'postID', IDgrupe_studenata AS 'IDgrupe', 'grupa studenata' AS koja_grupa,
naziv_smjera AS 'specifiènost grupe', naziv, sID AS 'userID', username, 'nema' AS kratica_ntitule, 'nema' AS kratica_ztitule, ime, prezime,
tekst, vrijeme_objave
FROM post_grupe_st NATURAL JOIN grupa_studenata_prikaz JOIN student_prikaz ON post_grupe_st.sID=student_prikaz.userID
WHERE (vidim, IDgrupe_studenata) IN (SELECT sID, IDgrupe_studenata FROM korisnici_grupe_st WHERE IDgrupe_studenata=mojagrupa)
ORDER BY IDgrupe, vrijeme_objave;

/*Procedura u kojoj IN parametar mojID oznaèava userID korisnika za kojeg tražimo popis komentara koje vidi u grupama, poredano najprije po
nazivu grupe, potom po vremenu objave posta, zatim po tekstu posta (teoretski se može dogoditi da su u istoj grupi 2 posta stavljena u isto vrijeme),
te na kraju po vremenu objave komentara.*/
CREATE PROCEDURE koje_komentare_vidim(IN mojID INT UNSIGNED)
SELECT IDkomentara, postID, 'grupa profesora' AS koja_grupa, naziv_grupe,
tekst_posta, vrijeme_objave_posta, tko_objavljuje, kratica_ntitule_objavitelja, kratica_ztitule_objavitelja, 
ime_objavitelja, prezime_objavitelja,
tko_komentira, kratica_ntitule_komentatora, kratica_ztitule_komentatora, 
ime_komentatora, prezime_komentatora, tekst_komentara, vrijeme_objave_komentara
FROM komentari_prikaz
WHERE postID IN (SELECT postID FROM post_grupe /*Izaberi postove iz onih grupa u kojima sam èlan, i prikaži komentare na njih*/
WHERE (mojID, IDgrupe) IN (SELECT profesorID, IDgrupe FROM korisnici_grupe))
UNION 
SELECT IDstkomentara AS 'IDkomentara', poststID AS 'postID', 'grupa studenata' AS koja_grupa, naziv_grupe,
tekst_posta, vrijeme_objave_posta, tko_objavljuje, 'nema' AS kratica_ntitule_objavitelja, 'nema' AS kratica_ztitule_objavitelja, 
ime_objavitelja, prezime_objavitelja,
(SELECT username AS 'tko_komentira' FROM korisnik WHERE userID=tko_komentira), 'nema' AS kratica_ntitule_komentatora, 'nema' AS kratica_ztitule_komentatora, 
ime_komentatora, prezime_komentatora, tekst_komentara, vrijeme_objave_komentara
FROM komentari_st_prikaz
WHERE poststID IN (SELECT poststID FROM post_grupe_st /*Izaberi postove iz onih grupa u kojima sam èlan, i prikaži komentare na njih*/
WHERE (mojID, IDgrupe_studenata) IN (SELECT sID, IDgrupe_studenata FROM korisnici_grupe_st))
ORDER BY naziv_grupe, vrijeme_objave_posta, tekst_posta, vrijeme_objave_komentara;

/*Procedura slièna prethodno navedenoj proceduri, jedina je razlika to što imamo IN parametar kojagrupa, kojim je zadan IDgrupe ili
IDgrupe_studenata, pa se samo iz te grupe gledaju komentari. Takoðer poredano po nazivu grupe, vremenu objave posta, tekstu posta
i vremenu objave komentara.*/
CREATE PROCEDURE koje_komentare_vidim_u_kojoj_grupi(IN vidim INT UNSIGNED, IN kojagrupa INT UNSIGNED)
SELECT IDkomentara, postID, 'grupa profesora' AS koja_grupa, naziv_grupe,
tekst_posta, vrijeme_objave_posta, tko_objavljuje, kratica_ntitule_objavitelja, kratica_ztitule_objavitelja, 
ime_objavitelja, prezime_objavitelja,
tko_komentira, kratica_ntitule_komentatora, kratica_ztitule_komentatora, 
ime_komentatora, prezime_komentatora, tekst_komentara, vrijeme_objave_komentara
FROM komentari_prikaz
WHERE postID IN (SELECT postID FROM post_grupe
WHERE (vidim, IDgrupe) IN (SELECT profesorID, IDgrupe FROM korisnici_grupe WHERE IDgrupe=kojagrupa))
UNION 
SELECT IDstkomentara AS 'IDkomentara', poststID AS 'postID', 'grupa studenata' AS koja_grupa, naziv_grupe,
tekst_posta, vrijeme_objave_posta, tko_objavljuje, 'nema' AS kratica_ntitule_objavitelja, 'nema' AS kratica_ztitule_objavitelja, 
ime_objavitelja, prezime_objavitelja,
(SELECT username AS 'tko komentira' FROM korisnik WHERE userID=tko_komentira), 'nema' AS kratica_ntitule_komentatora, 'nema' AS kratica_ztitule_komentatora, 
ime_komentatora, prezime_komentatora, tekst_komentara, vrijeme_objave_komentara
FROM komentari_st_prikaz
WHERE poststID IN (SELECT poststID FROM post_grupe_st 
WHERE (vidim, IDgrupe_studenata) IN (SELECT sID, IDgrupe_studenata FROM korisnici_grupe_st WHERE IDgrupe_studenata=kojagrupa))
ORDER BY naziv_grupe, vrijeme_objave_posta, tekst_posta, vrijeme_objave_komentara;

/*Procedura koja nalazi koliko ljudi sa mnom dijeli informacije i ispisuje iz prikaza korisnika koji su to ljudi.
Tijelo procedure ima 2 SQL iskaza pa su potrebne kljuène rijeèi BEGIN i END, te promjena graniènika prije i nakon procedure 
(delimiter // ... delimiter ;).
IN parametar mojID oznaèava userID korisnika za kojeg tražimo koliko ljudi s njim dijeli  informacije i koji su to ljudi,
a u OUT parametar broj (za kojeg æe u pozivanju procedure biti prosljeðena varijabla) æe se pomoæu klauzule INTO broj
upisati broj korisnika koji je s našim korisnikom podijelio informacije. Ispis koji korisnici su s našim korisnikom podijelili
informacije æe biti poredan po korisnièkom broju.*/
delimiter //
CREATE PROCEDURE koliko_ljudi_sa_mnom_dijeli_informacije (
IN mojID INT UNSIGNED, 
OUT broj TINYINT UNSIGNED)
BEGIN
SELECT COUNT(userID) INTO broj FROM dijeli_informacije
WHERE userID2=mojID;
SELECT * FROM korisnik_prikaz WHERE userID IN 
(SELECT userID FROM dijeli_informacije WHERE userID2=mojID)
ORDER BY userID;
END//
delimiter ;

/*Procedura koja nalazi s koliko ljudi dijelim informacije i ispisuje iz prikaza korisnika koji su to ljudi.
Tijelo procedure ima 2 SQL iskaza pa su potrebne kljuène rijeèi BEGIN i END, te promjena graniènika prije i nakon procedure 
(delimiter // ... delimiter ;).
IN parametar mojID oznaèava userID korisnika za kojeg tražimo s koliko ljudi dijeli  informacije i koji su to ljudi,
a u OUT parametar broj (za kojeg æe u pozivanju procedure biti prosljeðena varijabla) æe se pomoæu klauzule INTO broj
upisati broj korisnika s kojima je naš korisnik podijelio informacije. Ispis o kojim korisnicima se radi æe biti poredan 
po korisnièkom broju.*/
delimiter //
CREATE PROCEDURE s_koliko_ljudi_dijelim_informacije(IN mojID INT UNSIGNED, OUT broj INT UNSIGNED)
BEGIN
SELECT COUNT(userID2) INTO broj FROM dijeli_informacije 
WHERE userID=mojID;
SELECT * FROM korisnik_prikaz
WHERE userID IN (SELECT userID2 FROM dijeli_informacije WHERE userID=mojID)
ORDER BY userID;
END//
delimiter ;

/*Procedura koja za dva uèitana IN parametra  - mojID i IDkorisnika(oba oznaèavaju userID korisnika) 
nalazi razmjenu poruka meðu njima, poredanu po vremenu slanja poruka. (Na slièan naèin Facebook pokazuje
razmjenu poruka meðu korisnicima.) U ovom su primjeru namjerno izostavljene kljuène rijeèi IN, kako bi
se pokazalo da se u MySQL-u ne moraju navoditi kljuène rijeèi za taj tip parametara, nego se, u sluèaju
izostavljanja tih rijeèi, parametar IN smatra zadanim.*/
CREATE PROCEDURE razmjena_poruka (mojID INT UNSIGNED, IDkorisnika INT UNSIGNED)
SELECT * FROM poruke_prikaz WHERE (posiljatelj_userID=mojID AND primatelj_userID=IDkorisnika)
OR (posiljatelj_userID=IDkorisnika AND primatelj_userID=mojID)
ORDER BY vrijeme_slanja;

/*Procedura koja vraæa drzavaID na temelju naziva države (IN parametar imeDrzave) - praktièno*/
CREATE PROCEDURE nadji_drzavaID(IN imeDrzave VARCHAR(30))
SELECT drzavaID FROM drzava WHERE ime_drzave=imeDrzave;

/*Procedura koja vraæa podatke o gradu na temelju unešenog naziva grada (IN parametar nazivGrada) - praktièno*/
CREATE PROCEDURE nadji_grad(IN nazivGrada VARCHAR(45))
SELECT * FROM naziv_grada_prikaz
WHERE naziv_grada=nazivGrada;

/*Procedura koja za zadano ime (IN parametar imeKorisnika) i prezime korisnika (IN parametar prezimeKorisnika)
ispisuje iz prikaza korisnika sve podatke o tom korisniku.*/
CREATE PROCEDURE pretrazivanje_po_imenu_i_prezimenu(IN imeKorisnika VARCHAR(20),
IN prezimeKorisnika VARCHAR(30))
SELECT * FROM korisnik_prikaz WHERE ime=imeKorisnika
AND prezime=prezimeKorisnika;

/*Procedura koja upisuje korisnika na pojedini predmet, ali tako da uèitava korisnièko ime (IN parametar korisnicko_ime), 
naziv kolegija (IN parametar ime_kolegija), te smjerID - bitan je broj smjera jer se neki smjerovi na razlièitim fakultetima 
mogu isto zvati (IN parametar IDsmjera). Potom pomoæu jedinstvenog korisnièkog imena procedura pronalazi userID unešenog
korisnika i pomoæu klauzule INTO moj_userID ga upisuje u varijablu koja æe u pozivanju procedure biti prosljeðena za
OUT parametar moj_userID. Nakon toga, procedura zbog jedinstvenosti naziva kolegija pronalazi kolegijID unešenog kolegija
i pomoæu kljuènih rijeèi INTO IDkolegija ga upisuje u varijablu koja æe u pozivanju procedure biti prosljeðena za OUT
parametar IDkolegija. Naposljetku, procedura upisuje redak (moj_userID, IDkolegija, IDsmjera) u tablicu upisao. 
Kljuène rijeèi BEGIN i END, kao i promjena graniènika prije i nakon procedure (delimiter // ... delimiter ;) su potrebne 
jer tijelo procedure sadrži 3 SQL iskaza.*/
delimiter //
CREATE PROCEDURE student_upisuje_kolegij(
IN korisnicko_ime VARCHAR(10),
IN ime_kolegija VARCHAR(40),
IN IDsmjera INT UNSIGNED,
OUT moj_userID INT UNSIGNED,
OUT IDkolegija INT UNSIGNED)
BEGIN
SELECT userID INTO moj_userID FROM korisnik
WHERE username=korisnicko_ime;
SELECT kolegijID INTO IDkolegija FROM kolegij
WHERE naziv_kolegija=ime_kolegija;
INSERT INTO aktivna.upisao VALUES(moj_userID, IDkolegija, IDsmjera);
END//
delimiter ;

/*Funkcija prima broj (parametar broj) i string (parametar koja), te vraæa konkatenaciju stringova za broj i specifiènost grupe ako grupa postoji, 
u suprotnom javlja da nema takve grupe. Zbog IF-THEN-ELSE naredbe je potrebna promjena graniènika prije i nakon funkcije
(delimiter // ... delimiter ;), a naredba CONCAT(string1, string2,...,stringN) vraæa konkatenaciju stringova - u našem sluèaju 'Grupa', broj
(pretvoren u string) i ovisno o tome radi li se o grupi profesora ili studenata string 'profesora' ili 'studenata'.*/
delimiter //
CREATE FUNCTION kojaGrupa (broj INT UNSIGNED, koja VARCHAR(20))
RETURNS VARCHAR(35)
IF koja='profesori' AND broj IN (SELECT IDgrupe FROM grupa)
THEN RETURN CONCAT ('Grupa ', broj, ' profesora.');
ELSEIF koja='studenti' AND broj IN (SELECT IDgrupe_studenata FROM grupa_studenata)
THEN RETURN CONCAT ('Grupa ', broj, ' studenata.');
ELSE RETURN 'Nema takve grupe.';
END IF;//
delimiter ;