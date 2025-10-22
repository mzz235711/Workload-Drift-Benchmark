/*+ HashJoin(ph c v u p pl)
 HashJoin(c v u p pl)
 HashJoin(p pl)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph ((c (v u)) (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-29 18:21:06'::timestamp AND p.PostTypeId=1 AND p.Score>=-3 AND p.Score<=26 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND pl.CreationDate<='2014-08-21 19:13:52'::timestamp AND u.UpVotes<=47;

