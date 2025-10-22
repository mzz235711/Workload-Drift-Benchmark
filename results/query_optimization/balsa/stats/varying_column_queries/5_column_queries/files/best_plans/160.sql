/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-28 17:49:37'::timestamp AND c.CreationDate<='2014-09-13 17:30:10'::timestamp AND p.CreationDate>='2010-07-21 03:48:55'::timestamp AND p.CreationDate<='2014-09-11 14:00:38'::timestamp;

