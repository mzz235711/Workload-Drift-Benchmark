/*+ HashJoin(v b u p pl c)
 HashJoin(v b u p pl)
 MergeJoin(b u p pl)
 MergeJoin(b u p)
 MergeJoin(b u)
 SeqScan(v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(c)
 Leading(((v (((b u) p) pl)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate<='2014-09-04 19:36:06'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-09-26 20:58:32'::timestamp AND b.Date<='2014-09-13 20:15:52'::timestamp;

