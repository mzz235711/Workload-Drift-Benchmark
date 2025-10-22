/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate>='2010-09-18 02:43:41'::timestamp AND ph.CreationDate<='2014-09-08 22:51:37'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=7;

