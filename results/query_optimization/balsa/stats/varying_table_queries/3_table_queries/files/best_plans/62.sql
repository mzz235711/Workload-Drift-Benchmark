/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-1 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.CreationDate>='2010-07-19 19:33:13'::timestamp AND p.CreationDate<='2014-09-12 16:26:35'::timestamp AND pl.LinkTypeId=1;

