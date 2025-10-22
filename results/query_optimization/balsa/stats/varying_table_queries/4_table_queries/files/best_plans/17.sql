/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.AnswerCount<=6 AND p.FavoriteCount<=5 AND u.Views=6 AND u.UpVotes>=0 AND u.CreationDate>='2011-04-13 06:53:16'::timestamp AND u.CreationDate<='2014-08-24 19:17:58'::timestamp;

