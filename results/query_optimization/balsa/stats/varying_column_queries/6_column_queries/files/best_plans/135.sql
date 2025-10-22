/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-08-27 18:23:37'::timestamp AND ph.CreationDate>='2010-08-19 15:10:48'::timestamp AND ph.CreationDate<='2014-07-19 19:07:49'::timestamp AND u.UpVotes=1 AND u.CreationDate<='2014-08-22 09:26:42'::timestamp;

