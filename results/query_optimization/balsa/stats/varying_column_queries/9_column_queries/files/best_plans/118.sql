/*+ HashJoin(ph c p pl v)
 HashJoin(c p pl v)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(v)
 Leading((ph ((c (p pl)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate<='2014-09-05 22:13:15'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=3486 AND p.CreationDate>='2010-08-01 13:51:19'::timestamp AND p.CreationDate<='2014-09-11 22:27:55'::timestamp AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-07-28 06:31:36'::timestamp AND v.VoteTypeId=2;

