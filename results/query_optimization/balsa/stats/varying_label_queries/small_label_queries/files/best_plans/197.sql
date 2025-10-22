/*+ NestLoop(p pl c)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 Leading(((p pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-09 06:46:13'::timestamp AND p.Score<=9 AND p.CommentCount>=0 AND p.CommentCount<=12 AND pl.LinkTypeId=1;

