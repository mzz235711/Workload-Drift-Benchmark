/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<81 AND p.CommentCount>10 AND p.CommentCount<30 AND u.DownVotes>62 AND u.DownVotes<1243 AND v.CreationDate>'2011-06-15 10:48:46'::timestamp AND v.CreationDate<'2013-09-23 01:51:11'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-11-05 18:56:14'::timestamp AND b.Date<'2013-01-25 10:31:25'::timestamp;

