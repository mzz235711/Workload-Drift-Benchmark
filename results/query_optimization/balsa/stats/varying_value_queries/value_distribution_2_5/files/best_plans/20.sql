/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<145 AND p.CommentCount>11 AND p.CommentCount<31 AND u.DownVotes>694 AND u.DownVotes<962 AND v.CreationDate>'2011-12-20 04:48:44'::timestamp AND v.CreationDate<'2013-12-14 18:09:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-11-05 15:00:42'::timestamp AND b.Date<'2013-09-22 03:42:11'::timestamp;

