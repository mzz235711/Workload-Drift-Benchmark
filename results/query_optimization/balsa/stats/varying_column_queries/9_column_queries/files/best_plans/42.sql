/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.Score<=17 AND p.ViewCount>=0 AND p.ViewCount<=4341 AND p.AnswerCount<=5 AND p.CreationDate>='2010-07-19 20:37:21'::timestamp AND p.CreationDate<='2014-09-14 02:09:23'::timestamp AND pl.CreationDate>='2010-08-26 15:40:23'::timestamp AND pl.CreationDate<='2014-07-31 03:20:24'::timestamp;

