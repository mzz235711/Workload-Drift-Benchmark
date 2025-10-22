/*+ HashJoin(v p c pl)
 HashJoin(p c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=4 AND c.CreationDate<='2014-09-08 01:24:37'::timestamp AND p.CreationDate<='2014-09-11 11:08:35'::timestamp AND pl.CreationDate>='2010-07-27 16:00:22'::timestamp AND v.VoteTypeId=2;

