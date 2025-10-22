/*+ HashJoin(u c b)
 HashJoin(u c)
 IndexScan(u)
 SeqScan(c)
 IndexScan(b)
 Leading(((u c) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0;

