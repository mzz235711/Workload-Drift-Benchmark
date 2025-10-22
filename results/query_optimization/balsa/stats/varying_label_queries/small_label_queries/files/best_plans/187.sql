/*+ NestLoop(p v pl c ph)
 NestLoop(p v pl c)
 HashJoin(p v pl)
 HashJoin(p v)
 SeqScan(p)
 SeqScan(v)
 SeqScan(pl)
 IndexScan(c)
 IndexScan(ph)
 Leading(((((p v) pl) c) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-07-28 19:19:36'::timestamp AND p.Score>=0 AND p.CreationDate>='2010-07-23 07:13:03'::timestamp AND p.CreationDate<='2014-09-10 00:03:28'::timestamp AND pl.LinkTypeId=1 AND ph.CreationDate<='2014-09-12 13:59:03'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100;

