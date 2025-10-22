/*+ MergeJoin(u c ph)
 MergeJoin(u c)
 IndexScan(u)
 SeqScan(c)
 SeqScan(ph)
 Leading(((u c) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0;

