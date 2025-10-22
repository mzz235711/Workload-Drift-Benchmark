/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<49 AND p.CommentCount>33 AND p.CommentCount<36 AND u.DownVotes>190 AND u.DownVotes<1643 AND v.CreationDate>'2010-07-23 07:05:22'::timestamp AND v.CreationDate<'2012-11-01 01:57:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-10-08 15:01:26'::timestamp AND b.Date<'2012-03-27 19:41:42'::timestamp;

