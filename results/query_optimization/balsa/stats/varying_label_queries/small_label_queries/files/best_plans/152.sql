/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount>=0 AND p.FavoriteCount<=9 AND u.CreationDate>='2010-07-26 20:30:09'::timestamp AND u.CreationDate<='2014-08-13 21:29:28'::timestamp;

