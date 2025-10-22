/*+ HashJoin(b c ph v p pl)
 HashJoin(c ph v p pl)
 HashJoin(ph v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (ph (v (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate<='2014-09-13 08:08:01'::timestamp AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=2 AND v.BountyAmount<=50 AND b.Date>='2010-07-19 19:39:10'::timestamp AND b.Date<='2014-09-06 08:04:01'::timestamp;

