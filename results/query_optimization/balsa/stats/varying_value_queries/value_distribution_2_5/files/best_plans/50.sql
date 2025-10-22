/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<42 AND p.CommentCount>0 AND p.CommentCount<18 AND u.DownVotes>97 AND u.DownVotes<905 AND v.CreationDate>'2009-12-29 03:20:03'::timestamp AND v.CreationDate<'2012-03-27 17:23:10'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-06-12 11:45:59'::timestamp AND b.Date<'2012-09-07 22:35:31'::timestamp;

