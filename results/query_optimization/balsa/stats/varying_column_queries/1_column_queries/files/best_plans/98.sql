/*+ HashJoin(u c p)
 HashJoin(c p)
 SeqScan(u)
 IndexScan(c)
 IndexScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.Score=0;

