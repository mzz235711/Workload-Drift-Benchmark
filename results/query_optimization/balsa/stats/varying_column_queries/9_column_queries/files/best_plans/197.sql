/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.FavoriteCount<=45 AND p.CreationDate>='2010-08-06 14:10:01'::timestamp AND v.VoteTypeId=2 AND u.Views>=0 AND u.DownVotes<=4 AND u.CreationDate>='2011-07-29 19:20:07'::timestamp;

