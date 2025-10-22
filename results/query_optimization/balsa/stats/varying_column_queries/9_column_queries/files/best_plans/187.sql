/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=1 AND c.CreationDate>='2010-10-09 14:22:20'::timestamp AND c.CreationDate<='2014-08-31 14:49:15'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2012-01-12 17:48:22'::timestamp AND pl.CreationDate<='2014-07-27 23:22:28'::timestamp AND ph.PostHistoryTypeId=2 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp;

