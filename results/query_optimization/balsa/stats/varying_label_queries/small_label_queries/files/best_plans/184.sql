/*+ NestLoop(p pl c)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 Leading(((p pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score=5 AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-22 11:10:29'::timestamp AND p.CreationDate<='2014-09-02 14:46:05'::timestamp AND pl.CreationDate>='2010-09-01 17:15:29'::timestamp AND pl.CreationDate<='2014-07-16 21:45:00'::timestamp;

