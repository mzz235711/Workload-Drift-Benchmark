/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate<='2014-09-10 20:45:43'::timestamp AND ph.CreationDate>='2010-09-02 00:30:48'::timestamp AND ph.CreationDate<='2014-09-09 16:04:31'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=13 AND u.UpVotes>=0;

