/*+ MergeJoin(ph pl p c v)
 HashJoin(ph pl p c)
 HashJoin(pl p c)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 SeqScan(v)
 Leading(((ph ((pl p) c)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.PostTypeId=2 AND pl.CreationDate<='2014-07-03 07:21:44'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

