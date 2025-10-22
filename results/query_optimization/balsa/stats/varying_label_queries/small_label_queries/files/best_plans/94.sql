/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-05 18:33:56'::timestamp AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND pl.CreationDate>='2011-03-20 10:52:52'::timestamp;

