/*+ NestLoop(p pl c)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 Leading(((p pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=0 AND p.Score<=17 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CreationDate>='2010-07-29 21:29:57'::timestamp AND p.CreationDate<='2014-09-12 05:02:12'::timestamp;

