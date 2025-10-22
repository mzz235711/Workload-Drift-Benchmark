/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<72 AND p.CommentCount>9 AND p.CommentCount<42 AND u.DownVotes>362 AND u.DownVotes<746 AND v.CreationDate>'2012-04-16 12:03:11'::timestamp AND v.CreationDate<'2013-11-17 03:34:00'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-03-30 04:22:06'::timestamp AND b.Date<'2012-07-08 23:04:32'::timestamp;

