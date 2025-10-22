/*+ HashJoin(c v pl p ph)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(ph)
 Leading(((c (v (pl p))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-07-24 02:55:02'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=2362 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND pl.CreationDate>='2010-09-17 06:40:34'::timestamp AND pl.CreationDate<='2014-08-14 04:29:21'::timestamp AND ph.CreationDate>='2011-05-10 20:50:05'::timestamp AND ph.CreationDate<='2014-08-27 12:18:36'::timestamp;

