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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-08-19 18:54:53'::timestamp AND p.Score>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount<=12 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-09-04 03:39:40'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=34;

