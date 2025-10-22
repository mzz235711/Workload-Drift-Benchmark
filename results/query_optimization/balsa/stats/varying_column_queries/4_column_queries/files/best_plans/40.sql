/*+ MergeJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate='2013-11-18 00:29:49'::timestamp AND p.AnswerCount=0 AND p.CreationDate<='2014-09-09 14:01:37'::timestamp;

