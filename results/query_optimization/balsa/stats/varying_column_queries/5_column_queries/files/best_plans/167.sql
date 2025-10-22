/*+ HashJoin(v p c pl)
 MergeJoin(p c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

