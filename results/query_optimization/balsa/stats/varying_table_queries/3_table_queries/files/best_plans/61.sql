/*+ MergeJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score>=-4 AND p.Score<=15 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.DownVotes>=0 AND u.UpVotes<=23;

