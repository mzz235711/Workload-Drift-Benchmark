/*+ HashJoin(c ph pl p v b)
 NestLoop(c ph pl p v)
 MergeJoin(c ph pl p)
 HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((c (ph (pl p))) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2011-02-06 17:33:19'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND b.Date>='2010-09-02 12:39:06'::timestamp;

