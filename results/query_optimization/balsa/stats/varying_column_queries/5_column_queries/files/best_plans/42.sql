/*+ HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading(((v p) u)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-30 00:55:20'::timestamp;

