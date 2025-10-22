/*+ HashJoin(v c p u)
 HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((v (c (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score<=15 AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND u.Reputation<=176 AND u.CreationDate<='2014-09-11 10:13:46'::timestamp;

