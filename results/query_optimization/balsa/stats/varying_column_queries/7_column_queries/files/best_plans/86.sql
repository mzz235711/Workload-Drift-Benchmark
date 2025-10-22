/*+ MergeJoin(c p pl)
 HashJoin(p pl)
 IndexScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-13 23:52:30'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-19 19:27:13'::timestamp AND p.CreationDate<='2014-09-07 21:10:59'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-27 20:41:58'::timestamp;

