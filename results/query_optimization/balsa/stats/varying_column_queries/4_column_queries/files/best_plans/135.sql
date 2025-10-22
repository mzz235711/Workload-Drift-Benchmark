/*+ HashJoin(v u p)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading(((v u) p)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.CommentCount<=15 AND p.FavoriteCount<=11 AND u.UpVotes>=0;

