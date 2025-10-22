/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=1417 AND u.UpVotes>=0;

