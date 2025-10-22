/*+ MergeJoin(ph u c b)
 HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 IndexScan(b)
 Leading(((ph (u c)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=1 AND b.Date>='2010-07-20 05:09:08'::timestamp AND b.Date<='2014-09-01 12:37:54'::timestamp;

