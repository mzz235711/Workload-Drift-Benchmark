/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<176 AND p.CommentCount>0 AND p.CommentCount<22 AND u.DownVotes>100 AND u.DownVotes<962 AND v.CreationDate>'2009-10-06 08:48:42'::timestamp AND v.CreationDate<'2013-03-12 12:27:04'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2012-01-16 22:31:34'::timestamp AND b.Date<'2012-03-26 22:03:44'::timestamp;

