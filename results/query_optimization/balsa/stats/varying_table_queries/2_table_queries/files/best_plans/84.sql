/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-25 18:37:15'::timestamp AND p.CreationDate<='2014-09-10 09:20:25'::timestamp;

