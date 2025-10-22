/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-10 00:33:26'::timestamp AND u.Reputation>=1 AND u.Reputation<=225 AND u.CreationDate<='2014-07-17 14:40:14'::timestamp;

