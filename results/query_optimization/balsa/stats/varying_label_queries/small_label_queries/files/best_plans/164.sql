/*+ HashJoin(ph c v p pl b)
 HashJoin(c v p pl b)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(b)
 Leading((ph ((c ((v p) pl)) b))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.Score=5 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND pl.LinkTypeId=3 AND ph.PostHistoryTypeId=5 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND b.Date>='2010-07-28 02:43:53'::timestamp;

