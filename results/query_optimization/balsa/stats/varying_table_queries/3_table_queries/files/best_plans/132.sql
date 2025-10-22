/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-20 17:11:25'::timestamp AND c.CreationDate<='2014-08-30 17:47:39'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=1655 AND p.FavoriteCount>=0;

