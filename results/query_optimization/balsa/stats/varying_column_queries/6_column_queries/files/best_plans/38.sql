/*+ HashJoin(v c pl p)
 HashJoin(c pl p)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((v ((c pl) p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score>=0 AND p.ViewCount>=0 AND p.CommentCount=3 AND p.FavoriteCount<=9 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

