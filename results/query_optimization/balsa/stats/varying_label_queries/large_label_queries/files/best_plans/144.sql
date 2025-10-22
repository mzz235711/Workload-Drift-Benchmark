/*+ HashJoin(b u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.PostTypeId=1 AND p.Score<=23 AND p.ViewCount<=5477 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount<=14 AND p.FavoriteCount>=0 AND b.Date>='2010-07-27 09:13:45'::timestamp AND u.Reputation>=1 AND u.Reputation<=1570;

