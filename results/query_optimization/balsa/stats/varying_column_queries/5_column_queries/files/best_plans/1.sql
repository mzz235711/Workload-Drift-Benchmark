/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-13 16:35:07'::timestamp AND c.CreationDate<='2014-09-07 22:36:29'::timestamp AND u.Reputation<=141 AND u.Views>=0 AND u.UpVotes=0;

