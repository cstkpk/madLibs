USE dictionary;

-- TODO: handle entries with empty wordType
-- TODO: handle entries with mixed word types by wordType (see commented out lines below)

DELETE FROM entries WHERE entries.wordType = "#"; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "-n/"; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "/"; -- (2 total)
DELETE FROM entries WHERE entries.wordType = "/."; -- (2 total)
DELETE FROM entries WHERE entries.wordType = "2d pers. sing. pres."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "2d person"; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "3d pers. sing. pres."; -- (6 total)
DELETE FROM entries WHERE entries.wordType = "3d sing."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "3d sing. pr."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "3d sing.pr."; -- (1 total)

DELETE FROM entries WHERE entries.wordType = "a"; -- (8 total)
UPDATE entries SET entries.wordType = "adverb" WHERE entries.wordType = "a & adv.";
DELETE FROM entries WHERE entries.wordType = "a & n."; -- (4 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a & p. p.";
UPDATE entries SET entries.wordType = "prefix" WHERE entries.wordType = "A prefix.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a.";
UPDATE entries SET entries.wordType = "determiner" WHERE entries.wordType = "a. & a. pron.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. & adv.";
DELETE FROM entries WHERE entries.wordType = "a. & n."; -- (146 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. & p. p.";
UPDATE entries SET entries.wordType = "determiner" WHERE entries.wordType = "a. & pron.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. & v.";
DELETE FROM entries WHERE entries.wordType = "a. & v. t."; -- (1 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. .";
UPDATE entries SET entries.wordType = "determiner" WHERE entries.wordType = "a. / a. pron.";
UPDATE entries SET entries.wordType = "adjective, adverb" WHERE entries.wordType = "a. / adv.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. / n.";
UPDATE entries SET entries.wordType = "determiner" WHERE entries.wordType = "a. / pron.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. a.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. f.";
UPDATE entries SET entries.wordType = "determiner" WHERE entries.wordType = "a. or pron.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. superl.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. Vibrating";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a. Vigorously";
UPDATE entries SET entries.wordType = "determiner" WHERE entries.wordType = "a., adv., & n.";
DELETE FROM entries WHERE entries.wordType = "a., n., & adv."; -- (1 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "a/";
UPDATE entries SET entries.wordType = "adverb" WHERE entries.wordType = "ad.";
DELETE FROM entries WHERE entries.wordType = "adj."; -- (15 total) This is a weird mix of wordTypes
UPDATE entries SET entries.wordType = "adverb" WHERE entries.wordType = "adj. & conj.";
UPDATE entries SET entries.wordType = "adjective, adverb" WHERE entries.wordType = "ads.";
UPDATE entries SET entries.wordType = "adverb" WHERE entries.wordType = "adv.";
UPDATE entries SET entries.wordType = "adjective, adverb" WHERE entries.wordType = "adv. & a.";
UPDATE entries SET entries.wordType = "adjective, conjunction" WHERE entries.wordType = "adv. & conj.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "adv. & n.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "adv. & prep.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "adv. / a.";
UPDATE entries SET entries.wordType = "adjective, conjunction" WHERE entries.wordType = "adv. / conj.";
UPDATE entries SET entries.wordType = "interjection" WHERE entries.wordType = "adv. / interj.";
UPDATE entries SET entries.wordType = "adverb" WHERE entries.wordType = "adv. In a vanishing";
UPDATE entries SET entries.wordType = "adverb" WHERE entries.wordType = "adv. In combination";
UPDATE entries SET entries.wordType = "preposition" WHERE entries.wordType = "adv. or prep.";
DELETE FROM entries WHERE entries.wordType = "adv., & n."; -- (2 total)
DELETE FROM entries WHERE entries.wordType = "adv., prep., & conj."; -- (2 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "ae.";
DELETE FROM entries WHERE entries.wordType = "ambassade."; -- (3 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "an.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "Archaic";
DELETE FROM entries WHERE entries.wordType = "Archaic imp."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "Archaic imp. & p. p."; -- (1 total)

UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "b.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "b. t.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "comp.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "compar.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "Compar. & superl. wa";

UPDATE entries SET entries.wordType = "conjunction" WHERE entries.wordType = "conj.";
DELETE FROM entries WHERE entries.wordType = "conj. & prep."; -- (1 total)
UPDATE entries SET entries.wordType = "adverb, conjunction" WHERE entries.wordType = "conj. / adv.";
UPDATE entries SET entries.wordType = "conjunction" WHERE entries.wordType = "conj. Either";

UPDATE entries SET entries.wordType = "determiner" WHERE entries.wordType = "dat. & obj.";
DELETE FROM entries WHERE entries.wordType = "def. art."; -- (1 total)
UPDATE entries SET entries.wordType = "definite article" WHERE entries.wordType = "definite article.";
UPDATE entries SET entries.wordType = "adverb" WHERE entries.wordType = "dv.";

DELETE FROM entries WHERE entries.wordType = "e"; -- (1 total)
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "e. i.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "e. t.";

UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "fem.";
DELETE FROM entries WHERE entries.wordType = "fem. a."; -- (2 total)

UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "i.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp."; 
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & obs. p. p.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & p. p";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & p. p.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & p. p. & vb. n";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & p. p. Adored";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & p. p. Fenced";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & p. p.,";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & p. pr.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & p. pr. & vb.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. & pp.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. &, p. p.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. &. p.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. &. p. p.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. &p. p.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. / p. p.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. p. p.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp. sing.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp.& p. p.";
UPDATE entries SET entries.wordType = "verb, imperfect" WHERE entries.wordType = "imp., p. p., & a.";
UPDATE entries SET entries.wordType = "verb, imperative" WHERE entries.wordType = "imp., p. p., or auxi";
UPDATE entries SET entries.wordType = "imperative" WHERE entries.wordType = "imperative.";
DELETE FROM entries WHERE entries.wordType = "imperative sing.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "impersonal verb";
UPDATE entries SET entries.wordType = "pronoun" WHERE entries.wordType = "indef. pron.";
DELETE FROM entries WHERE entries.wordType = "Indic. present";
DELETE FROM entries WHERE entries.wordType = "inerj.";
DELETE FROM entries WHERE entries.wordType = "inf.";
DELETE FROM entries WHERE entries.wordType = "inf. & plural pres.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "infinitive.";
UPDATE entries SET entries.wordType = "interjection" WHERE entries.wordType = "interj.";
UPDATE entries SET entries.wordType = "interjection" WHERE entries.wordType = "interj. & adv.";
UPDATE entries SET entries.wordType = "interjection, noun" WHERE entries.wordType = "interj. & n.";
UPDATE entries SET entries.wordType = "interjection, noun" WHERE entries.wordType = "interj., adv., & n.";
UPDATE entries SET entries.wordType = "interjection" WHERE entries.wordType = "interj., adv., or a.";
UPDATE entries SET entries.wordType = "interrogative" WHERE entries.wordType = "interrog. adv.";

UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "L. catechunenus, Gr.";

UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "m.";
DELETE FROM entries WHERE entries.wordType = "mexcal."; -- (2 total)

UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n & v.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n .";
UPDATE entries SET entries.wordType = "plural noun" WHERE entries.wordType = "n pl.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n. & a.";
DELETE FROM entries WHERE entries.wordType = "n. & adv."; -- (4 total)
DELETE FROM entries WHERE entries.wordType = "n. & i."; -- (1 total)
UPDATE entries SET entries.wordType = "noun, interjection" WHERE entries.wordType = "n. & interj.";
UPDATE entries SET entries.wordType = "noun, verb" WHERE entries.wordType = "n. & v";
UPDATE entries SET entries.wordType = "noun, verb" WHERE entries.wordType = "n. & v.";
UPDATE entries SET entries.wordType = "noun, intransitive verb" WHERE entries.wordType = "n. & v. i.";
UPDATE entries SET entries.wordType = "noun, transitive verb" WHERE entries.wordType = "n. & v. t.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n. .";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n. /";
UPDATE entries SET entries.wordType = "noun, interjection" WHERE entries.wordType = "n. / interj.";
UPDATE entries SET entries.wordType = "noun, transitive & intransitive verb" WHERE entries.wordType = "n. / v. t. & i.";
UPDATE entries SET entries.wordType = "noun, adjective" WHERE entries.wordType = "n. a.";
DELETE FROM entries WHERE entries.wordType = "n. Chem."; -- (1 total)
UPDATE entries SET entries.wordType = "plural noun" WHERE entries.wordType = "n. collect. & pl.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n. f.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n. fem.";
UPDATE entries SET entries.wordType = "verb, intransitive " WHERE entries.wordType = "n. i.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n. m.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n. masc.";
UPDATE entries SET entries.wordType = "plural noun" WHERE entries.wordType = "n. pl";
UPDATE entries SET entries.wordType = "plural noun" WHERE entries.wordType = "n. pl.";
UPDATE entries SET entries.wordType = "singular & plural noun" WHERE entries.wordType = "n. sing & pl.";
UPDATE entries SET entries.wordType = "singular noun" WHERE entries.wordType = "n. sing.";
UPDATE entries SET entries.wordType = "singular & plural noun" WHERE entries.wordType = "n. sing. & pl";
UPDATE entries SET entries.wordType = "singular & plural noun" WHERE entries.wordType = "n. sing. & pl.";
UPDATE entries SET entries.wordType = "transitive verb" WHERE entries.wordType = "n. t.";
UPDATE entries SET entries.wordType = "noun, verb" WHERE entries.wordType = "n.& v.";
UPDATE entries SET entries.wordType = "noun, adjective, verb" WHERE entries.wordType = "n., a., & v.";
UPDATE entries SET entries.wordType = "singular & plural noun" WHERE entries.wordType = "n., sing. & pl.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n..";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n./ ";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n.masc.";
UPDATE entries SET entries.wordType = "plural noun" WHERE entries.wordType = "n.p.";
UPDATE entries SET entries.wordType = "plural noun" WHERE entries.wordType = "n.pl.";
UPDATE entries SET entries.wordType = "singular & plural noun" WHERE entries.wordType = "n.sing & pl.";
UPDATE entries SET entries.wordType = "singular & plural noun" WHERE entries.wordType = "n.sing. & pl.";
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "n .";

UPDATE entries SET entries.wordType = "pronoun" WHERE entries.wordType = "obj.";
UPDATE entries SET entries.wordType = "pronoun" WHERE entries.wordType = "object.";
DELETE FROM entries WHERE entries.wordType = "Obs"; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "obs."; -- (3 total)
DELETE FROM entries WHERE entries.wordType = "obs. imp."; -- (5 total)
DELETE FROM entries WHERE entries.wordType = "obs. imp. & p. p."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "obs. p. p."; -- (4 total)
DELETE FROM entries WHERE entries.wordType = "obs. strong imp."; -- (2 total)
DELETE FROM entries WHERE entries.wordType = "obs. strong p. p."; -- (1 total)

DELETE FROM entries WHERE entries.wordType = "p pr. & vb. n."; -- (11 total)
DELETE FROM entries WHERE entries.wordType = "p, pr. & vb. n."; -- (2 total)
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "p.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "p. & a.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p. a.";
DELETE FROM entries WHERE entries.wordType = "p. a. & vb. n."; -- (2 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p. p & a.";
DELETE FROM entries WHERE entries.wordType = "p. p."; -- (258 total)
DELETE FROM entries WHERE entries.wordType = "p. p. & "; -- (1 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p. p. & a";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p. p. & a.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p. p. & p. a.";
DELETE FROM entries WHERE entries.wordType = "p. p. & vb. n."; -- (3 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p. p. / a.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p. p., fem.";
UPDATE entries SET entries.wordType = "plural noun" WHERE entries.wordType = "p. pl.";
DELETE FROM entries WHERE entries.wordType = "p. pr & vb. n."; -- (16 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p. pr.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p. pr. & a.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & pr. & vb. n";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & v. n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vb n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vb, n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vb.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vb. /";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vb. a.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vb. e.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vb. n";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vb. n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vb/ n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. & vvb. n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. &, vb. n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. &. vb. n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. &vb. n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. / vb. n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. a. & vb. n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr. vb. n.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "p. pr.& vb. n.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "p.a.";
UPDATE entries SET entries.wordType = "participle" WHERE entries.wordType = "participle";
UPDATE entries SET entries.wordType = "personal pronoun" WHERE entries.wordType = "pers. pron.";
UPDATE entries SET entries.wordType = "plural noun" WHERE entries.wordType = "pl.";
UPDATE entries SET entries.wordType = "possessive pronoun" WHERE entries.wordType = "possessive pron.";
UPDATE entries SET entries.wordType = "verb, present participle" WHERE entries.wordType = "pr.p. & vb. n.";
-- UPDATE entries SET entries.wordType = "possessive pronoun" WHERE entries.wordType = "pref."; -- Maybe remove these words (8 total)
-- UPDATE entries SET entries.wordType = "possessive pronoun" WHERE entries.wordType = "prefix."; -- Maybe remove these words (3 total)
UPDATE entries SET entries.wordType = "preposition" WHERE entries.wordType = "prep.";
UPDATE entries SET entries.wordType = "preposition, adverb" WHERE entries.wordType = "prep. & adv.";
DELETE FROM entries WHERE entries.wordType = "prep. & conj."; -- (1 total)
UPDATE entries SET entries.wordType = "preposition, conjunction" WHERE entries.wordType = "prep. & conj., but p";
UPDATE entries SET entries.wordType = "preposition, adverb, adjective" WHERE entries.wordType = "prep., adv. & a.";
DELETE FROM entries WHERE entries.wordType = "prep., adv. & conj."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "prep., adv., & conj."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "prep., adv., conj. &"; -- (2 total)
DELETE FROM entries WHERE entries.wordType = "pres. & imp."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "pres. indic. sing.,"; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "pres. sing."; -- (2 total)
DELETE FROM entries WHERE entries.wordType = "pres. subj."; -- (1 total)
UPDATE entries SET entries.wordType = "pronoun" WHERE entries.wordType = "pron.";
UPDATE entries SET entries.wordType = "pronoun" WHERE entries.wordType = "pron. & a.";
DELETE FROM entries WHERE entries.wordType = "pron. & conj."; -- (2 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "pron. / adj.";
DELETE FROM entries WHERE entries.wordType = "pron. pl."; -- (5 total)
UPDATE entries SET entries.wordType = "pronoun, adjective, adverb" WHERE entries.wordType = "pron., a., & adv.";
UPDATE entries SET entries.wordType = "pronoun, adjective, conjunction" WHERE entries.wordType = "pron., a., conj., &";
DELETE FROM entries WHERE entries.wordType = "p]. pr. & vb. n."; -- (1 total)
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "q.";
DELETE FROM entries WHERE entries.wordType = "See"; -- (1 total)
UPDATE entries SET entries.wordType = "singular noun" WHERE entries.wordType = "sing.";
DELETE FROM entries WHERE entries.wordType = "sing. & pl."; -- (2 total)
UPDATE entries SET entries.wordType = "singular & plural noun" WHERE entries.wordType = "sing. / pl.";
DELETE FROM entries WHERE entries.wordType = "sing. or pl."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "Sing. pres. ind."; -- (1 total)
DELETE FROM entries WHERE entries.wordType = "strong imp."; -- (1 total)
UPDATE entries SET entries.wordType = "transitive verb" WHERE entries.wordType = "subj. 3d pers. sing.";
UPDATE entries SET entries.wordType = "suffix" WHERE entries.wordType = "suffix.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "super.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "superl";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "superl.";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "superl. - ";
UPDATE entries SET entries.wordType = "adjective" WHERE entries.wordType = "supperl.";
DELETE FROM entries WHERE entries.wordType = "syntactically sing."; -- (1 total)

DELETE FROM entries WHERE entries.wordType = "t"; -- (1 total)

-- UPDATE entries SET entries.wordType = "verb? or noun?" WHERE entries.wordType = "v."; -- This is actually a mix of verbs and nouns...
UPDATE entries SET entries.wordType = "noun" WHERE entries.wordType = "v. & a.";
-- UPDATE entries SET entries.wordType = "verb? or noun?" WHERE entries.wordType = "v. & n."; -- Mixture of verbs and nouns
-- UPDATE entries SET entries.wordType = "verb? or noun?" WHERE entries.wordType = "v. i."; -- Mixture of verbs and nouns
UPDATE entries SET entries.wordType = "auxilliary verb" WHERE entries.wordType = "v. i. & auxiliary.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. i. & i.";
DELETE FROM entries WHERE entries.wordType = "v. i. & n."; -- (4 total)
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. i. & t.";
UPDATE entries SET entries.wordType = "auxilliary verb" WHERE entries.wordType = "v. i. / auxiliary";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. i.,";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. imperative.";
UPDATE entries SET entries.wordType = "impersonal verb" WHERE entries.wordType = "v. impers.";
DELETE FROM entries WHERE entries.wordType = "v. impersonal, pres."; -- (1 total)
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. r.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. t.";
DELETE FROM entries WHERE entries.wordType = "v. t. &"; -- (2 total)
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. t. & i.";
DELETE FROM entries WHERE entries.wordType = "v. t. & n."; -- (7 total)
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. t. & v. i.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. t. / auxiliary";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. t. / i.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. t. / v. i.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. t. v. t.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. t.& i.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v. t..";
DELETE FROM entries WHERE entries.wordType = "v.& n."; -- (1 total)
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v./.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v./t.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v.i";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v.i.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v.impers.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v.t";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v.t & i.";
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "v.t.";
DELETE FROM entries WHERE entries.wordType = "variant"; -- (1 total)
UPDATE entries SET entries.wordType = "verb" WHERE entries.wordType = "vb. n.";

