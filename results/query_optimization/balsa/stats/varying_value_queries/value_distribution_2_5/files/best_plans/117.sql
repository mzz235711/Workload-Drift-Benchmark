/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<129 AND p.CommentCount>10 AND p.CommentCount<40 AND u.DownVotes>97 AND u.DownVotes<295 AND v.CreationDate>'2011-02-24 11:47:10'::timestamp AND v.CreationDate<'2013-04-29 04:04:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-11-11 06:50:41'::timestamp AND b.Date<'2012-07-05 02:56:20'::timestamp;

