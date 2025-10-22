/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-12 10:46:27'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation>=1 AND u.Views<=20 AND u.DownVotes>=0;

