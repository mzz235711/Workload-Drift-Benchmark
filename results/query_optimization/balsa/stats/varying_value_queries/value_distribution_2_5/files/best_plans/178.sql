/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<78 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>102 AND u.DownVotes<1214 AND v.CreationDate>'2013-05-22 10:04:25'::timestamp AND v.CreationDate<'2014-04-20 08:34:33'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-01-20 04:06:44'::timestamp AND b.Date<'2012-06-25 15:26:48'::timestamp;

