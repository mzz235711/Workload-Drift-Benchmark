/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=14 AND p.AnswerCount>=0 AND p.CreationDate<='2014-09-09 18:38:08'::timestamp AND pl.CreationDate='2013-11-13 19:20:55'::timestamp;

