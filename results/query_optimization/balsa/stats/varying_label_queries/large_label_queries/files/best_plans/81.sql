/*+ HashJoin(c v p pl u b)
 HashJoin(c v p pl u)
 HashJoin(v p pl u)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(b)
 Leading(((c (((v p) pl) u)) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND pl.CreationDate>='2010-08-11 20:39:16'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation<=246 AND u.CreationDate<='2014-09-03 23:38:29'::timestamp;

