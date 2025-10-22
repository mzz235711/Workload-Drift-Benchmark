/*+ HashJoin(v p pl c)
 HashJoin(p pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (p (pl c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-13 21:55:37'::timestamp AND p.CommentCount<=17 AND p.CreationDate<='2014-08-23 14:02:33'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-10 00:22:09'::timestamp;

