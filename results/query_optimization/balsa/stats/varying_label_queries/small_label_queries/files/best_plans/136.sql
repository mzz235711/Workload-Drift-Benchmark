/*+ NestLoop(p pl c)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 Leading(((p pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score=3 AND p.CommentCount>=0 AND p.CommentCount<=12;

