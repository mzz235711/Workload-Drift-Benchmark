/*+ HashJoin(v pl c p)
 MergeJoin(pl c p)
 HashJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 IndexScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-12 15:33:28'::timestamp AND p.AnswerCount>=0 AND p.CommentCount<=11 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

