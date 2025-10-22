/*+ HashJoin(c ph pl p v)
 HashJoin(ph pl p v)
 HashJoin(pl p v)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((c (ph ((pl p) v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-08-18 19:53:40'::timestamp AND c.CreationDate<='2014-09-11 13:56:18'::timestamp AND p.PostTypeId=2 AND p.Score=1 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-08-02 08:14:36'::timestamp;

