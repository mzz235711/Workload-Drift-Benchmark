/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.Score>=-2 AND p.ViewCount>=0 AND p.CommentCount<=13 AND u.UpVotes>=0 AND u.UpVotes<=21;

