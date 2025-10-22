/*+ HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND u.DownVotes=0 AND u.UpVotes>=0;

