/*+ NestLoop(p pl c v)
 HashJoin(p pl c)
 NestLoop(pl c)
 IndexScan(p)
 IndexScan(pl)
 IndexScan(c)
 IndexScan(v)
 Leading(((p (pl c)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=15 AND p.AnswerCount=0 AND p.CreationDate>='2010-07-27 03:58:22'::timestamp AND p.CreationDate<='2014-09-11 14:55:26'::timestamp AND pl.LinkTypeId=1 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

