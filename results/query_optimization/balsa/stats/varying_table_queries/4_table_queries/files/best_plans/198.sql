/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.AnswerCount=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-21 04:48:50'::timestamp AND p.CreationDate<='2014-09-04 16:26:54'::timestamp AND u.Reputation>=1 AND u.Reputation<=583;

