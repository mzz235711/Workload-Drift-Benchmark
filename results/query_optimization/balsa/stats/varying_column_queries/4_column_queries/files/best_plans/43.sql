/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-09-17 14:46:17'::timestamp AND c.CreationDate<='2014-09-12 05:33:08'::timestamp AND ph.PostHistoryTypeId=2 AND u.CreationDate>='2010-07-27 09:56:56'::timestamp;

