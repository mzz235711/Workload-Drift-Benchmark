/*+ MergeJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND u.Reputation>=1 AND u.Reputation<=2951;

