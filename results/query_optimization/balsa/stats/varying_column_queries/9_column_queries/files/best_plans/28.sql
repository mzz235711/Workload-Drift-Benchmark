/*+ HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((v ((c p) pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-08-29 17:15:22'::timestamp AND p.CreationDate<='2014-08-30 15:09:04'::timestamp AND pl.LinkTypeId=1 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

