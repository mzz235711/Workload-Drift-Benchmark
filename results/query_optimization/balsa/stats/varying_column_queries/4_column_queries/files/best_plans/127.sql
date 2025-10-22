/*+ NestLoop(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.CommentCount>=0 AND p.FavoriteCount=0 AND u.Reputation<=185 AND u.DownVotes<=0;

