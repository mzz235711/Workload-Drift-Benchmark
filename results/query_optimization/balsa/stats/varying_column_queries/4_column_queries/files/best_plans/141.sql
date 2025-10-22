/*+ MergeJoin(ph b u c)
 HashJoin(b u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-12 21:05:43'::timestamp AND ph.PostHistoryTypeId=2 AND u.Reputation<=282;

