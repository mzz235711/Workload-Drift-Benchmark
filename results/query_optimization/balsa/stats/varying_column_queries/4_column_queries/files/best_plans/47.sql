/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-12 23:17:20'::timestamp AND c.CreationDate<='2014-09-12 18:19:00'::timestamp AND p.AnswerCount=0 AND p.CommentCount>=0;

