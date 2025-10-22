/*+ HashJoin(v c pl p)
 HashJoin(c pl p)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((v ((c pl) p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=50 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.CreationDate<='2014-09-11 14:26:05'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

