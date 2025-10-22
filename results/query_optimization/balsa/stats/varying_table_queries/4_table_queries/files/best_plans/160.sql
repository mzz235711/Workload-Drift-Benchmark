/*+ HashJoin(ph u v c)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.CreationDate>='2010-08-29 23:18:38'::timestamp AND ph.CreationDate<='2014-09-11 15:33:16'::timestamp AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=24 AND u.DownVotes<=3 AND u.UpVotes>=0 AND u.UpVotes<=9;

