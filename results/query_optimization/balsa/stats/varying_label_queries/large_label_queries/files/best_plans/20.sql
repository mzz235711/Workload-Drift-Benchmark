/*+ HashJoin(ph c v p pl)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph (c (v (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-03 15:14:10'::timestamp AND p.Score>=0 AND p.Score<=25 AND p.ViewCount>=0 AND p.ViewCount<=10357 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount<=15 AND p.CreationDate>='2010-08-04 15:11:13'::timestamp AND p.CreationDate<='2014-09-08 19:11:12'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

