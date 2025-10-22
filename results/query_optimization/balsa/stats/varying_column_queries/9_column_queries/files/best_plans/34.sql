/*+ HashJoin(ph c pl p v b)
 HashJoin(c pl p v b)
 HashJoin(c pl p v)
 HashJoin(pl p v)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading((ph ((c ((pl p) v)) b))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-08-11 15:48:04'::timestamp AND c.CreationDate<='2014-09-14 01:45:19'::timestamp AND p.Score=0 AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-11 14:26:05'::timestamp AND pl.CreationDate<='2014-09-08 13:12:40'::timestamp AND ph.CreationDate>='2010-10-21 11:44:58'::timestamp;

