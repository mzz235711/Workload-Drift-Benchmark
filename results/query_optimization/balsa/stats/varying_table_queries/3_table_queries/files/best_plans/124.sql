/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2011-01-19 13:37:31'::timestamp AND ph.CreationDate<='2014-09-10 02:32:36'::timestamp;

