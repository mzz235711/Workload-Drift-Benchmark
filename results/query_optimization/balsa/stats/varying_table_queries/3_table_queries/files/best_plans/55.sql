/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=2 AND p.Score>=-1 AND p.ViewCount<=1563 AND p.CommentCount=0 AND p.FavoriteCount<=42 AND u.Reputation<=1775;

