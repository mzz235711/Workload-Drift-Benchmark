/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=24 AND p.ViewCount<=3142 AND p.AnswerCount=1 AND p.CommentCount>=0 AND p.CommentCount<=15 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-07-09 15:42:23'::timestamp;

