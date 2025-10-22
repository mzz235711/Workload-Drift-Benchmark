/*+ MergeJoin(ph b u v)
 MergeJoin(b u v)
 MergeJoin(u v)
 IndexScan(ph)
 SeqScan(b)
 IndexScan(u)
 IndexScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-11-05 21:32:22'::timestamp AND ph.CreationDate<='2014-09-03 16:50:56'::timestamp AND v.CreationDate='2012-10-04 00:00:00'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=27 AND u.UpVotes<=30;

