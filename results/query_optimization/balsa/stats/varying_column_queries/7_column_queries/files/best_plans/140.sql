/*+ HashJoin(v p u)
 NestLoop(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.ViewCount>=0 AND p.CommentCount=0 AND p.FavoriteCount<=20 AND p.CreationDate>='2010-07-21 06:28:23'::timestamp AND u.Views>=0 AND u.DownVotes<=11;

