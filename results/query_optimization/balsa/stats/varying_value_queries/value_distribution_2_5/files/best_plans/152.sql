/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<10 AND p.CommentCount>2 AND p.CommentCount<36 AND u.DownVotes>614 AND u.DownVotes<1885 AND v.CreationDate>'2010-08-20 23:30:07'::timestamp AND v.CreationDate<'2012-01-06 01:49:05'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2010-07-28 12:22:13'::timestamp AND b.Date<'2013-03-08 04:54:54'::timestamp;

