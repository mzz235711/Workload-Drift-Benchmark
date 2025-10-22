/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((b (p (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=50 AND p.Score>=-3 AND p.Score<=12 AND p.ViewCount>=0 AND p.ViewCount<=2761 AND p.AnswerCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-05 15:42:39'::timestamp AND b.Date>='2010-07-19 19:39:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=1047 AND u.DownVotes<=0 AND u.CreationDate>='2011-07-18 13:17:03'::timestamp;

