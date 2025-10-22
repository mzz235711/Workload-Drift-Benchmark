/*+ HashJoin(p c v pl)
 HashJoin(v pl)
 HashJoin(p c)
 IndexScan(p)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 Leading(((p c) (v pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate>='2010-07-27 13:59:54'::timestamp AND p.Score>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND v.VoteTypeId=2;

