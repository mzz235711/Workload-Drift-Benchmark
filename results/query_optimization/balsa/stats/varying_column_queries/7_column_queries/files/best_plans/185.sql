/*+ HashJoin(ph c pl p v)
 HashJoin(c pl p v)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((ph ((c (pl p)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate<='2014-09-10 01:17:10'::timestamp AND p.ViewCount<=5706 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-12 07:44:04'::timestamp AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-02 00:00:00'::timestamp;

