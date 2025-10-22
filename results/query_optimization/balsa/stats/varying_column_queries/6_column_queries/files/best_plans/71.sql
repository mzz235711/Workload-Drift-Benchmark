/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score=1 AND p.AnswerCount>=0 AND pl.CreationDate>='2011-01-27 16:41:24'::timestamp AND pl.CreationDate<='2014-07-24 17:11:38'::timestamp AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-07-19 19:51:34'::timestamp;

