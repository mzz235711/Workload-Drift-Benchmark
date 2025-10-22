/*+ HashJoin(p v c pl)
 HashJoin(v c pl)
 HashJoin(c pl)
 SeqScan(p)
 SeqScan(v)
 SeqScan(c)
 IndexScan(pl)
 Leading((p (v (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND p.ViewCount<=9010 AND p.CommentCount<=21 AND p.CreationDate>='2010-07-27 09:16:48'::timestamp AND p.CreationDate<='2014-08-27 17:38:33'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

