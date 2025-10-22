/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND p.Score>=-4 AND p.Score<=14 AND p.ViewCount>=0 AND p.ViewCount<=5344 AND p.AnswerCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND u.DownVotes<=779 AND u.CreationDate<='2014-08-26 07:30:06'::timestamp;

