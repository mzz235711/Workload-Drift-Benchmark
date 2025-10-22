/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<164 AND p.CommentCount>9 AND p.CommentCount<18 AND u.DownVotes>667 AND u.DownVotes<895 AND v.CreationDate>'2011-09-14 00:33:48'::timestamp AND v.CreationDate<'2013-05-20 06:17:58'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2012-09-13 13:45:55'::timestamp AND b.Date<'2013-09-28 10:20:49'::timestamp;

