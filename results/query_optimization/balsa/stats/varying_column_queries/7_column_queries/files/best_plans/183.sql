/*+ HashJoin(v c p u)
 HashJoin(c p u)
 NestLoop(p u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((v (c (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND v.CreationDate>='2010-09-18 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=308;

