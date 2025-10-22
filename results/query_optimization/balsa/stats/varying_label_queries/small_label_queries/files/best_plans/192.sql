/*+ NestLoop(p pl c)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 Leading(((p pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=-2 AND p.ViewCount<=4500 AND p.CommentCount>=0 AND p.CommentCount<=12 AND pl.CreationDate>='2011-01-20 11:14:39'::timestamp AND pl.CreationDate<='2014-07-18 12:40:38'::timestamp;

