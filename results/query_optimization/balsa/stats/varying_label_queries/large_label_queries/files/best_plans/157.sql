/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-19 21:30:23'::timestamp AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-28 01:06:56'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-26 18:29:36'::timestamp AND pl.CreationDate<='2014-08-21 12:54:28'::timestamp;

