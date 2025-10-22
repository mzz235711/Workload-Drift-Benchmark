/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score<=38 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND pl.CreationDate>='2010-09-18 02:43:41'::timestamp;

