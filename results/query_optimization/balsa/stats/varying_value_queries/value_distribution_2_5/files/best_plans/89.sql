/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<69 AND p.CommentCount>4 AND p.CommentCount<13 AND u.DownVotes>210 AND u.DownVotes<382 AND v.CreationDate>'2009-06-20 09:04:22'::timestamp AND v.CreationDate<'2013-06-01 03:07:55'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-08-03 15:01:05'::timestamp AND b.Date<'2012-02-17 22:22:15'::timestamp;

