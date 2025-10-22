/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=2 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-21 01:23:00'::timestamp AND u.CreationDate>='2011-02-15 06:35:57'::timestamp AND u.CreationDate<='2014-08-28 19:09:27'::timestamp;

