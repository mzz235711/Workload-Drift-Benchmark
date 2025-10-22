/*+ HashJoin(b v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.ViewCount>=0 AND p.ViewCount<=5250 AND p.AnswerCount=0 AND p.CommentCount<=12 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND b.Date>='2010-07-20 19:07:26'::timestamp AND b.Date<='2014-09-12 17:42:45'::timestamp AND u.Reputation>=1 AND u.Reputation<=6235 AND u.Views<=335 AND u.UpVotes<=692 AND u.CreationDate>='2011-03-01 17:04:23'::timestamp AND u.CreationDate<='2014-08-26 17:06:16'::timestamp;

