/*+ HashJoin(v c p u)
 HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((v (c (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score>=-1 AND p.ViewCount>=0 AND p.FavoriteCount<=35 AND p.CreationDate>='2010-07-22 07:28:42'::timestamp AND p.CreationDate<='2014-08-26 15:38:40'::timestamp AND u.Views>=0;

