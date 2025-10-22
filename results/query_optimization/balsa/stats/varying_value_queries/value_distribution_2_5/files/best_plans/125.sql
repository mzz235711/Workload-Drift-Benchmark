/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<129 AND p.CommentCount>16 AND p.CommentCount<36 AND u.DownVotes>29 AND u.DownVotes<666 AND v.CreationDate>'2010-06-07 05:41:00'::timestamp AND v.CreationDate<'2011-06-22 07:37:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2012-12-15 06:49:21'::timestamp AND b.Date<'2013-08-20 02:05:25'::timestamp;

