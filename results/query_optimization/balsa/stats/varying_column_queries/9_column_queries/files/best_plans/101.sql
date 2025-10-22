/*+ HashJoin(ph v c p pl u)
 HashJoin(v c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph (v ((c (p pl)) u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND p.Score<=17 AND p.AnswerCount<=6 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-29 07:10:39'::timestamp AND p.CreationDate<='2014-09-10 07:50:32'::timestamp AND pl.CreationDate<='2014-09-13 00:53:35'::timestamp AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-02 00:00:00'::timestamp;

