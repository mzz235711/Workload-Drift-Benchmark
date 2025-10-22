/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND u.Views<=24 AND u.CreationDate>='2010-08-21 22:57:18'::timestamp AND u.CreationDate<='2014-09-10 20:00:25'::timestamp;

