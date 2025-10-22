/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.CreationDate>='2010-10-28 08:24:14'::timestamp AND p.CreationDate<='2014-09-04 01:23:53'::timestamp;

