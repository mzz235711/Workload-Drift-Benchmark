/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score>=0 AND p.Score<=59 AND p.ViewCount>=0 AND p.ViewCount<=6412 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-05 14:49:50'::timestamp;

