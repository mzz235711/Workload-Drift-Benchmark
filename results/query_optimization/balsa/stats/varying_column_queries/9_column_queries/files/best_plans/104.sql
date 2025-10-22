/*+ HashJoin(c p u v b)
 HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c p) u) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.ViewCount>=0 AND p.ViewCount<=4256 AND p.AnswerCount<=11 AND p.CommentCount<=12 AND p.FavoriteCount<=2 AND p.CreationDate>='2010-07-26 21:11:25'::timestamp AND p.CreationDate<='2014-08-27 00:01:05'::timestamp AND b.Date<='2014-08-26 23:15:44'::timestamp AND u.UpVotes=0;

