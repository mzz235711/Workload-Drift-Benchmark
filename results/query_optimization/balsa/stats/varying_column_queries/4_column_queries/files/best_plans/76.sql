/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-19 19:59:04'::timestamp AND u.CreationDate>='2010-07-19 21:41:45'::timestamp AND u.CreationDate<='2014-08-23 23:41:59'::timestamp;

